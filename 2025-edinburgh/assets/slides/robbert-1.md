# Lecture 1: Sequential separation logic

## What is separation logic used for?

- Verify functional correctness of programs using Hoare logic:
  ```
  { P } e { Q }
  ```
- Verify relational properties of programs
  ```
  e1 ≼ e2
  ```
- Specify invariants in a compiler correctness proofs
- Proof properties of type systems using logical relations
- Abstract domains in program analysis, e.g., [Meta's Infer](https://fbinfer.com/)

Separation logic is particularly well suited for programs with mutable state/references and concurrency.

There are many extensions of separation logic. For example, Rust's borrows, effects and handlers, probabilistic programming, time and space bounds, distributed systems, session types, etc.

## What is separation logic?

- **Assertion language** to describe resources (particularly, heaps):

    ```
    P, Q := True | False | P ∧ Q | P ∨ Q | P → Q | ∀ x:A. P | ∃ x:A. P
            emp | l ↦ v | P ∗ Q | P -∗ Q
    ```
- A version of **Hoare logic** based on this assertion language:
  + _Total correctness_ `[ P ] e [ v . Q ]`: If the heap satisfies `P` beforehand, then execution of `e` is will terminate with return value `v` such that the final heap satisfies `Q v`.
  + _Partial correctness_ `{ P } e { v. Q }`: If the heap satisfies `P` beforehand, then execution of `e` is safe (no memory errors such as use after free), and if `e` terminates, then the final heap satisfies `Q v` for the return value `v`.

In this lecture, we discuss total program correctness (but many tools, e.g., Iris focus on partial correctness).

## Running example

Let us consider a very simple program and try to specify it:

```
void foo (int *l, int *k)
{
  int x = *l;
  int y = x + 2;
  *k = y;
}
```

Intuitive specification:

- Precondition: If location `l` has value `n` and location `k` has value `m`
- Postcondition: Then location `l` has value `n` and location `k` has value `n+2` 

Problems:

1. What if `l` and `k` are the same location? I.e., they _alias_.
   - **Answer**: Then the value of `l` is overwritten with `n+2`.
2. What if the heap the heap contains more locations than `l` and `k`, what is guaranteed to happen to them?
   - **Answer**: Our intuitive specification is too vague to answer that, but we would like to express that the part of the heap not mentioned in the precondition is left unchanged.

## Intuitive semantics of separation logic assertions

While the syntax of separation logic appears similar to ordinary (first-order or higher-order) logic, the **semantics of propositions** of separation logic is very different. In ordinary logic, propositions describe **truth** or **knowledge**, i.e., if a proposition holds, it will hold forever, i.e., persistently. Propositions of separation logic describe **ownership**, they describe which parts of the heap we own. Let us take a look at the intuitive semantics of the new connectives to get a better idea of that:

- **The points-to connective** `l ↦ v`.
  This connective describes that the heap contains _exactly one_ location `l` with value `v` and expresses that we we have unique ownership of that location in the heap.
- **The separating conjunction** `P ∗ Q`.
  This connective describes that the heap can be split into two _disjoint_ parts, so that the first satisfies `P`, and the second satisfies `Q`.
- **The empty heap connective** `emp`.
  This connective describes that the heap is empty, i.e., we do not own any locations.

Using these connectives, one can give very precise descriptions of heaps, for example:

- `l₁ ↦ 6 ∗ l₂ ↦ 8`
- `∃ v. l₁ ↦ v ∗ l₂ ↦ (2 * v)`

The first example describes a heap that consists of **exactly** two locations `l₁` and `l₂` that respectively contain the values 6 and 8. Since the separation conjunction `P ∗ Q` ensures that the parts of the heap described by `P` and `Q` are disjoint, we know that `l₁` and `l₂` are different (i.e., they do not alias). This makes separating conjunction very different from conjunction `P ∧ Q`, which says that `P` and `Q` both hold for the same heap. 

The second example describes the set of heaps that contain two different locations `l₁` and `l₂`, so that the value of `l₂` is twice that of `l₁`.

Let us take a look at two other separation logic propositions:

- `l₁ ↦ 6 ∗ l₂ ↦ 8 ∗ True`
- `∃ x. l₁ ↦ 6 ∧ l₂ ↦ x`

The first example describes a heap that consists of **at least** two locations `l₁` and `l₂`, which respectively contain the values 6 and 8. The `∗ True` describes that the heap may contain an arbitrary number of other locations.

The second example uses the ordinary conjunction `P ∧ Q`, which states that `P` and `Q` should both hold. As such this proposition describes a heap that contains exactly one location `l₁`, which is equal to `l₂`, and contains the value 6.

Circling back to our running example:

```
void foo (int *l, int *k)
{
  int x = *l;
  int y = x + 2;
  *k = y;
}
```

Its specification is:

```
∀ l k i j.
  [ l ↦ i ∗ k ↦ j ] foo (l, k)  [ vret. vret = k ∗ l ↦ i ∗ k ↦ (i + 2) ]
```

It is implicitly captured by the `∗` that the locations `l` and `k` are disjoint. Note that this will scale to any number of locations, e.g., `l₁ ↦ v₁ ∗ l₂ ↦ v₂ ∗ ... lₙ ↦ vₙ` implicitly describes that `lᵢ ≠ lₖ` for any `i ≠ k`.

**Exercise** Let us consider another program:

```coq
int* bar (int x)
{
  int *p = malloc (sizeof (int));
  *p = x;
  *p = *p + *p;
  return p;
}
```

What would be the separation logic spec of this function?

**Answer**

```
∀ n.
  [ emp ]  bar(x)  [ vret. vret ↦ (x + x) ]
```

## Heap model of separation logic assertions

The first question that we need to answer is: what will be the semantics of separation logic assertions? There are many different ways to give a semantics to separation logic (i.e., there are many different models). We now consider the simplest model: **the heap model**. The propositions in this model describe sets of heaps. The natural way to describe the propositions `sepProp` of separation logic is by considering them to be predicates over heaps:

```
heap := loc -fin→ val 
sepProp := heap → Prop
```

Recall, in Rocq predicates are functions to `Prop`. So to define predicates, we should use a λ-abstraction. 

```
(l ↦ v) := λ h. h = {[ l := v ]}
(P ∗ Q) := λ h. ∃ h₁ h₂. h₁ ## h₂  ∧  h = h₁ ∪ h₂  ∧  P h₁  ∧ Q h₂
    emp := λ h. h = ∅
(x = y) := λ h. h = ∅ ∧ (x = y)
```

The above definitions make the intuitive semantics formal:

- The points-to connective `l ↦ v` describes the heaps `h` that are equal to `{[ l := v ]}`.
- The separating conjunction `P ∗ Q` describes the heaps `h` that can be split into disjoint parts `h1` and `h2`, such that `P` holds in `h1` and `Q` holds in `h2`.
- The empty heap connective `emp` describes the heaps `h` that are equal to `∅`, i.e., it describes the empty heap.

**Note** Our semantics of the equality `x = y` implicitly captures that the heap should be empty (it contains `m = ∅`). An alternative semantics, that is often used in the literature, is `(x = y) := λ h. (x = y)`. Our version has the upshot that it can easily be used in specifications, e.g., `(x = y) ∗ (l ↦ x)` describes heaps that contain exactly one cell. With the alternative semantics, you need to write `(x = y ∧ emp) ∗ (l ↦ x)` or `(x = y) ∧ (l ↦ x)`.

The semantics of the other connectives is straightforward, we lift the connectives on `Prop` to those on `sepProp`.

```
      True := λ h. True
     False := λ h. False
   (P → Q) := λ h. P h → Q h
   (P ∧ Q) := λ h. P h ∧ Q h
   (P ∨ Q) := λ h. P h ∨ Q h
(∀ x:A. P) := λ h. ∀ x:A. P h
(∃ x:A. P) := λ h. ∃ x:A. P h
```

**Important** Keep in mind that the logical connectives on the left-hand side are those of the shallowly embedded object logic (i.e., separation logic), and the ones on the right hand side are those of our meta logic (i.e., Rocq). On paper we typically overload the syntax, but when mechanizing separation logic in Rocq we will be very explicit about the difference between the two.

## Proof rules of separation logic assertions

Separation logic would not be a logic if there were no proof rules. To express the proof rules of separation logic, we need a notion of entailment `P ⊢ Q`, which says that `Q` follows from `P`:

```
P ⊢ Q := ∀ h. P h → Q h
```

The entailment `P ⊢ Q` expresses that `P` implies `Q` for any heap `h`.

The quintessential proof rules of separation logic are the following:

- **Monotonicity**: If `P1 ⊢ P2` and `Q1 ⊢ Q2` then `P1 ∗ Q1 ⊢ P2 ∗ Q2`.
- **Associativity**: `P ∗ (Q ∗ R) ⊢ (P ∗ Q) ∗ R`
- **Commutativity**: `P ∗ Q ⊢ Q ∗ P`
- **Identities**: `P ∗ emp ⊢ P` and `P ⊢ P ∗ emp`

In addition, separation logic enjoys the usual rules of first-order logic for introduction and elimination of the ordinary logical connectives. For example:

```
 R ⊢ P   R ⊢ Q
---------------∧I        -----------∧El      -----------∧Er
  R ⊢ P ∧ Q               P ∧ Q ⊢ P           P ∧ Q ⊢ Q
```

## Semantics of Hoare triples

Now we will give a semantics to Hoare triples for partial program correctness. For that, we will not consider the C language, but a version of lambda calculus with operations for references (in the style of ML, but with C-like `free`):

- Allocation `ref v` returns an unused location on the heap, in which the value `v` is stored.
- Loading `! l` returns the value of the location `l` on the heap
- Storing `l ← v` stores the value of `v` on location `l` on the heap.
- Freeing `free l` removes the location `l` from the heap.

Further assume that we have a standard small-step operational semantics:

```
(e, h) => (e',h')
```

Where the `e`s are the expressions of our language, and the `h`s are heaps.

The semantics of the Hoare triple is:

```
[ P ] e [ vret. Q ] := ∀ h hf.
  h ## hf →
  P h →
  ∃ v h'.
    (e, h ∪ hf) ⇓ (v, h' ∪ hf)  ∧  h' ## hf  ∧  Q[vret:=v] h'
```

This definition is quite a mouthful, so let us go over it step by step. Hoare triples express the following:

- Given any initial heap `h`,
- If the precondition `P h` holds beforehand, then,
- Given any other heap `hf` called the _frame_ that disjoint to `h` (notation `h ## hf`),
- Execution of the program `e` in `h ∪ hf` in is guaranteed to terminate with a value `v` in a final heap `h' ∪ hf` with `h' ## hf`,
- Such that the postcondition `Q[vret:=v] h'` holds.

## Proof rules for Hoare triples in separation logic

With the semantics of Hoare triples at hand, we will now look at the proof rules.

Let us start with the proof rules for the load/store/free/alloc:

```
         [ emp ] ref v   [ l. l ↦ v ]
       [ l ↦ v ]   !l    [ vret. (vret = v) ∗ l ↦ v ]
[ ∃ v', l ↦ v' ]  l ← v  [ vret. (vret = ()) ∗ l ↦ v ]
       [ l ↦ v ] free l  [ vret. (vret = ()) ]
```

(Our store and free operations return the unit value `()`, akin to `return;` for a `void` function in C).

While concise and intuitive, these Hoare rules are not too useful on their own because:

1. They can only be used if the program contains exactly one instruction.
2. They can only be used if the pre- and postconditions do not involve any other memory locations.

To address issue (1), separation logic comes with the **frame rule**, which allows one to extend the pre- and postcondition with a proposition `R` that describes the remaining part of the heap:

```
    [ P ] e [ vret. Q ]
———————————————————————————
[ P ∗ R ] e [ vret. Q ∗ R ]
```

For example, using the frame rule we can derive the following Hoare triple:

```
[ l ↦ v ∗ k ↦ u ] !l [ wret. (wret = v) ∗ l ↦ v ∗ k ↦ u ]
```

The frame rule is the key feature of separation logic. It allows for so-called **small-footprint** specifications that only mention the parts of the heap that are relevant for the programs in question, instead of having to quantify over the rest of the heap in every specification.

Another important rule is the **sequencing rule**:

```
[ P ] e₁ [ v. Q ]    v ∉ FV(Q)     [ Q ] e₂ [ vret. R ]
———————————————————————————————————————————————————————
          [ P ] e₁; e₂ [ vret. R ]
```

Since sequencing `e₁; e₂` ignores the return value of `e₁`, it is crucial that `v` does not appear in the postcondition `Q` of `e₁`.

The rule for let-expressions generalizes the rule for sequencing by taking the return value of `e₁` into account. In the second premise we consider the program `e₂[x:=v]` for _any_ value `v` that satisfies the postcondition `Q` of `e₁`.

```
[ P ] e₁ [ v. Q ]      (∀ v. [ Q ] e₂[x:=v] [ vret. R ])
———————————————————————————————————————---——————————————
          [ P ] let x := e₁ in e₂ [ vret. R ]
```

The last rule we consider is the **rule of consequence**, which allows one to weaken the pre- and postconditions according to logical entailment `⊢`:

```
P ⊢ P'   [ P' ] e [ vret. Q' ]    ∀ vret. Q' ⊢ Q
————————————————————————————————————————————————
          [ P ] e [ vret. Q ]
```

## Exercises in Iris

In the remainder of this lecture we will do some exercises with separation logic in Iris. Iris is a framework for separation logic, implemented and proved sound using the Rocq prover. Iris comes with a number of parts:

- **Iris Proof Mode**, which is a tactic language for separation logic. It allows you to prove separation logic entailments `⊢` using tactics like `iIntros` and `iApply`, which behave much like Rocq's native tactics, but are tailored to separation logic.
- **The Iris program logic**, which provides a very generic type of separation logic assertions `iProp` and an program logic for partial program correctness.
- **Iris HeapLang**, which is a simple programming language that extends lambda calculus with data types (integers, booleans, products, sums), heap operations (allocation, load, store, free) and concurrency (fork, compare-and-set, fetch-and-add).

The type of propositions `iProp` of Iris is different in a number of ways compared to `sepProp` defined in this lecture:

- Iris is an "affine" separation logic, which means that it satisfies the law `P ∗ Q ⊢ P`, and particularly `l ↦ v ∗ k ↦ w ⊢ l ↦ v`. This allows us to "forget" about locations that we do not use instead of having to free them explicitly.
- Iris is not specific to heaps, but it abstracts over the kinds of resources, allowing one to add "ghost resources", which are useful for the verification of concurrent programs (see next lecture). Formally speaking, `iProp Σ` has a parameter `Σ` which describes what resoures can be used. For most our examples, we just need the heap (in Rocq you will therefore see boilerplate like `Arguments ``{!heapGS Σ}` to express that).
- Iris has a bunch of other features, particularly, it has a number of modalities such as "later" (`▷`), "persistently" (`□`), update (`|==>`). We will mostly ignore these modalities, but shed some light on them during the next two lectures. (If you like Haskell or category theory, these modalities are "just" an applicative, co-monod, and monad, respectively :).)

Finally, Iris makes use of *weakest preconditions* instead of Hoare triples. A weakest precondition `WP e { Φ }` is like a Hoare triple without precondition. You can see more about that in the Rocq demo and exercises.
