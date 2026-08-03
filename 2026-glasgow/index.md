---

title: SPLV 2026
custom_css:
 - uog

---
<img id="banner" src="assets/Gilbert-Scott-cropped.jpg" alt="UofG Gilbert Scott building"/>


# SPLV'26: Scottish Programming Languages and Verification Summer School 2026

## The University of Glasgow --- 3rd Aug to 7th Aug

The 2026 edition of SPLV will be held at the University of Glasgow, with the main courses running from within our stunning old campus building, the Gilbert Scott Building.

### Venue

The main courses will be held in <a href="https://maps.app.goo.gl/TS6aUZFpzN7k3YzY6">One A, The Square</a>.
You can enter through the main building entrance (signposted as the Gilchrist), 
and then follow signs for SPLV.
A detailed campus map is available <a href="assets/Campus-Map.pdf">here</a>.

<!-- <img src="assets/map-venue.png" alt="campus map"/> -->

### Where to go on the day

For registration on Monday, please head to One A, The Square. There you will find members of the organisation committee and we will get you signed-up. To get here, please go to the [main gates](https://maps.app.goo.gl/1MmbjcZaLQWhxhAk8). We will make sure that the venue is signposted and members of the organisation team will be there to help on the day.  Registration will be open 9-9:30AM on Monday 3rd July; if you arrive later please just talk to an organiser and we will get you your badge. There is no need to print out your ticket; we will have a list of all participants.

### Accommodation

If you have booked accommodation, this is at [Queen Margaret Residences](https://maps.app.goo.gl/GoyfZ7DEKnXormFY8). Keys can be collected from the main reception in the Queen Margaret Residences Central Services Building from 2.00 pm on Sunday 2nd August. The site is staffed 24 hours a day, and security can assist with key collection outside normal reception hours. Check-out is by 10.00am on Friday 7th August.

### Zulip

Feel free to join [our Zulip](https://spls.zulipchat.com/#narrow/channel/620381-splv-2026/topic/Welcome.21/with/612954399)!


## Social Programme

### Pub Quiz

We have organised a pub quiz on Monday evening. This will take place _upstairs_ in [curlers rest](https://www.google.com/maps?q=curlers+rest&um=1&ie=UTF-8&ved=1t:200715&ictx=111). The quiz will start from (about) 7PM - feel free to take your time wandering down.


### City Chambers Reception

Details to come...

### Conference Dinner

We have organised a conference dinner for the wednesday evening at [Òran Mór](https://www.google.com/maps?sca_esv=1cb68c34dee2a72d&biw=1470&bih=891&output=search&q=oran+mor&source=lnms&fbs=ABfTbFVQT6KYne3_7HzvYh-3OtGxmA6qToXQOWeUvgXQ5M6Rvtme8by44bKODdrCzbFzI7BK6iscFPqf_mR4CHjyqq1zD_iqKhkKsjEkjE44e2lbG7m_utYY08A5V6Ro3dnqBW09ldWV22TL7ba6h-BVKOzG5Z8D9Oflu2YVl8MuISTPIkYfj2ZT0dVOOBai8h3o06Yx2EwX-izAydtn85noe4FNGWakGUrFsV9NzUXxjAVdQdBzjQg&entry=mc&ved=1t:200715&ictx=111).
Doors open at 6:45PM, which should give you plenty of time to find a seat.
Food will be served from (about) 7PM and there is a bar available throughout the evening where drinks can be purchased.

## Registration and Accommodation

Registration is now open via [Eventbrite](https://www.eventbrite.co.uk/e/splv-2026-summer-school-tickets-1989312724911).

Registration is priced as:

  * Academic (early, registration deadline 30th June 2026): £260
  * Academic (late): £360
  * Standard (early, registration deadline 30th June 2026): £760
  * Standard (late): £860

This includes access to all sessions, catered lunch, social events, and a catered reception at Glasgow City Chambers.

We also have a limited amount of subsidised accommodation remaining at £195 for an en-suite room in 
[Queen Margaret Residences](https://www.gla.ac.uk/myglasgow/accommodation/visitorstouristsgroups/residences/queenmargaretresidences/),
checking in on Sunday 2nd August and checking out on Friday 7th August.
You can book this from the registration page.


## Course Line-up

This year we have **3 invited core courses**, and **6 contributed courses**.

### Core Courses
<div class="flex">

<details closed>
<summary>
    <img class="avatar" src="assets/nachi.jpeg">
    <strong>Introduction to Types and Lambdas</strong> by <a href="https://nachivpn.me/">Nachi Valliappan</a> (University of Edinburgh)
</summary>


<p>Types were introduced to me as a restriction bolted on top of the
untyped lambda calculus to prevent certain runtime errors. Shackles I
must program with, because I cannot be trusted with the power of the
unruly lambda calculus. In this course, I will present types through
the lens of a different paradigm, where types are internalized into
the definition of the calculus and terms are well-typed (thus free of
said errors) by construction. This view of types, sometimes called an
intrinsic view, aligns naturally with proof theory and is incredibly
well suited for mechanization and mathematical treatment.</p>

<p>The objective of this course is to provide an introduction to typed
lambda calculi and their denotational semantics by means of well-typed
interpreters. We will begin with a simply typed lambda calculus with
products and sums, and go on to cover two different extensions of this
calculus, one with a monad and another with a box modality.</p>

<p>Bring pen and paper!</p>

<p><a href="https://nachivpn.me/itl">Course page</a></p>

</details><br>


<details closed>
<summary>
    <img class="avatar" src="assets/oana.jpeg">
    <strong>Introduction to Model Checking with PRISM</strong> by <a href="https://www.gla.ac.uk/schools/computing/staff/oanaandrei/">Oana Andrei</a> (University of Glasgow)
</summary>

Model checking is an automated technique for verifying whether a system satisfies its requirements by exploring all of its possible behaviours. In this tutorial we will learn how to model systems as transition systems, specify behavioural requirements using temporal logic, and use model checking to verify properties or generate counterexamples when they are violated. We will then explore these ideas in practice using the PRISM model checker, including a brief introduction to probabilistic model checking. Students are welcome to follow along using PRISM (https://prismmodelchecker.org) on their own laptops. This tutorial is suitable for beginners: no prior knowledge of model checking, formal verification or temporal logic is required.
</details><br>


<details closed>
<summary>
    <img class="avatar" src="assets/bob.jpeg">
    <strong>Introduction to Category Theory</strong> by <a href="https://bentnib.org/">Bob Atkey</a> (University of Strathclyde)
</summary>

Category Theory is a unifying language for describing mathematical structures and has been especially successful with the kinds of mathematical structures that arise in Computer Science. I will motivate the use of Category Theory in Programming Language and Verification research with some examples, covering the basic notions of category, functor, natural transformations, and universal properties.
</details><br>

</div>

### Contributed Courses

<div class="flex">

<details closed>

<summary>
    <img class="avatar" src="assets/blair.jpeg">
    <strong>Formal Modelling with Bigraphs</strong> by <a href="https://www.blairarchibald.co.uk/">Blair Archibald</a> (University of Glasgow)
</summary>

Bigraphs are a versatile modelling formalism, originally by Milner, that describes systems in terms of both spatial placement, e.g. a Person within a Room, and non-local linking, e.g. that Person connected via a radio link to a Cell Tower. 

In this tutorial we explore bigraphs through a practical lense: how do we specify a system with bigraphs, how are bigraphs combined, how do users specify their own rewrite rules (including probabilistic rules), and how can we use bigraphs once they are defined. Students are welcome to follow along using the [BigraphER tool](https://bitbucket.org/uog-bigraph/bigraph-tools). This tutorial is suitable for beginners:  No knowledge of category theory needed!
</details><br>


<details closed>
<summary>
    <img class="avatar" src="assets/jamie.jpeg">
    <strong>Distributed Systems: A Logical Approach</strong> by <a href="https://gabbay.org.uk/">Jamie Gabbay</a> (Heriot-Watt University)
</summary>

<p>An algorithm (= protocol) is distributed when it runs across multiple participants, without central control. A good distributed algorithm allows multiple participants to arrive at some common goal, even though there is no central controller, and even though some participants may not be following the protocol, e.g. they may have crashed, or be actively misbehaving.</p>

<p>Distributed protocols are usually specified as small (or not-so-small) imperative programs. In this course I will present an alternative declarative approach, based on logic. This is to traditional approaches as functional programming is to imperative programming: higher level of abstraction, shorter code, simpler proofs.</p>

<p>The rule of thumb is that declarative methods reduce complexity by a factor of 10 (10x shorter code; 10x shorter proofs). This means that a protocol that took 10 pages of specification and 100 pages of proof in imperative style, in declarative style takes 1 page of specification and 5-10 pages of proof. This is not a projection, it is from a real example.</p>

<p>My approach has been battle-tested on a proposed industrial protocol. It was studied using declarative methods and shown to be incorrect. Using the same declarative methods, the error was fixed. This fix involved nontrivial changes to the basic conceptual structure of the protocol, which were relatively straightforward to see in declarative style but were not evident in the imperative presentation.</p>

<p>In this course, I will give an overview of these methods, starting with simple protocols like Bracha Broadcast and Crusader Agreement, then moving to Paxos and, time permitting, the industrial protocol.</p>

<p>If you want to get a feel for the style of these techniques, you can look at the following resources:</p>

<ol>
<li><strong>Bracha Broadcast / Crusader Agreement:</strong>
"Declarative distributed algorithms as axiomatic theories in three-valued modal logic over semitopologies" https://arxiv.org/pdf/2512.21137 (in press with Journal of Applied Logics).
A Lean formalisation of the proofs is at https://github.com/janmasrovira/mlda
</li>

<li>
<strong>Paxos:</strong>
"A declarative approach to specifying distributed algorithms using three-valued modal logic" https://arxiv.org/pdf/2502.00892 (submitted)
</li>

<li>
<strong>The industrial protocol:</strong>
"Heterogeneous trust in reliable broadcast via modal logic and history structures" https://zenodo.org/records/17636313 (submitted).
A Lean formalisation of the proofs is at https://doi.org/10.5281/zenodo.17611735
</li>
</ol>

<p>For light reading see also:</p>
<ol>
<li>"Decentralised collaborative action: cryptoeconomics in space" https://arxiv.org/pdf/2504.12493 </li>
<li>A toy model-checking tool, implementing many of these ideas, is at https://github.com/bellissimogiorno/declarative-protocols </li>
</ol>
</details><br>


<details closed>
<summary>
    <img class="avatar" src="assets/clemens.jpeg">
    <strong>Fixpoint Logics</strong> by <a href="https://www.strath.ac.uk/staff/kupkeclemensdr/">Clemens Kupke</a> (University of Strathclyde)
</summary>
Modal Logics are used to reason about the finite behaviour of state-based dynamical systems. To be able to express properties of the ongoing, possibly infinite behaviour, one adds fixpoint operators to the logics. This class will explain the fundamentals of how this is done. The content is structured in the following three parts: <br>

(i) Intro to Modal and Temporal Logics<br>
(ii) Fixpoints and their Game characterisation<br>
(iii) A very brief intro to the modal mu calculus 
</details><br>


<details closed>
<summary>
<img class="avatar" src="assets/ohad.jpeg">
<strong>Algebra and Normalisation</strong> by <a href="https://denotational.co.uk/">Ohad Kammar</a> (University of Edinburgh)
</summary>

Normalisation concerns specifying a representative in each equivalence
class. It comes up whenever we want to guarantee robustness up-to the
equivalence relation. For example, a normalising optimising compiler
will produce the same object code when you refactor your source code
using the equivalence it normalises by. Advanced type-checkers may
accept or reject programs by normalising fragments of their
types. Modern partial evaluators take incorporate equational laws
before extracting a residual program. The hallmark of modern algebra
is representation theorems: characterising a structure such as the set
of polynomials as the universal structure among a class of structures
of interest.

In this course, we will explore the relationship between normalisation
and modern algebra. We will start with algebraic expressions and
universal algebra, and relate them to normalisation and partial
evaluation using multi-sorted equational logic. In the second part of
the course, we will turn to normalisation of open-programs through the
more advanced second-order algebraic structures.

[Course web-page](https://denotational.co.uk/algebra-and-normalisation-splv-2026/)
</details><br>


<details closed>
<summary>
    <img class="avatar" src="assets/wim.jpeg">
    <strong>Resource-constrained compiler construction for functional languages</strong> by <a href="https://www.gla.ac.uk/schools/computing/staff/wimvanderbauwhede/">Wim Vanderbauwhede</a> (University of Glasgow)
</summary>

<p>In this course we explain how to create a compiler for an expressive statically typed functional language targeting a resource-constrained VM (16K memory, 8-bit instructions) and what the challenges are in doing so. As ultimately the compiler should be able to run on the same VM, it has to be constructed in a resource-constrained way.</p>

<p>The course will deal with the architectural and design choices. I will assume attendants have some knowledge of statically typed functional programming (Haskell, ML) with a Hindley-Milner-like type system, but I do not assume knowledge of compilers. </p>

<p>The main blocks are:</p>

<ul>
<li> The target language, Funktal, an expressive statically typed functional language,  and its design choices</li>
<li> The target platform for the language, the Uxn VM, and its assembly language Uxntal</li>
<li> High-level view of a compiler</li>
<li> How to create a resource-constrained compiler: principles, techniques, structure and design </li>
</ul>
</details><br>


<details closed>
<summary>
    <img class="avatar" src="assets/jan.jpeg">
    <strong>Highly-Assured Programming Language Design and Implementation using Dependent Types</strong> by <a href="https://tyde.systems/">Jan de Muijnck-Hughes</a> (University of Strathclyde)
</summary>
Traditionally, designing our programming languages has been a
pen-&-paper (LaTeX) exercise to describe syntax, semantics, and proofs
that important properties hold.
These designs must then be realised in software.
However, writing software is challenging and errors will be made.
Mechanisation offers a way to reduce design and implementation mistakes
by making them both machine checkable.

This course provides an introduction to mechanised programming language
design using dependent types.
We will also explore how the same mechanised proofs lay the foundation
for a verified pipeline for type-checking and executing programs.

No prior experience with dependently-typed programming is required;
ample reference material will be provided!
</details><br>

</div>


## Timetable

<table>
    <thead>
        <tr>
            <th>Time</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>09:00 - 09:30</th>
            <td class="Lunch">Registration</td>
            <td rowspan="2" class="Nachi">Nachi</td>
            <td rowspan="2" class="Jamie">Jamie</td>
            <td rowspan="2" class="Jan">Jan</td>
            <td rowspan="2" class="Oana">Oana</td>
        </tr>
        <tr>
            <th>09:30 - 10:00</th>
            <td rowspan="2" class="Bob">Bob</td>
        </tr>
        <tr>
            <th>10:00 - 10:30</th>
            <td rowspan="2" class="Ohad">Ohad</td>
            <td rowspan="2" class="Bob">Bob</td>
            <td rowspan="2" class="Ohad">Ohad</td>
            <td rowspan="2" class="Nachi">Nachi</td>
        </tr>
        <tr>
            <th>10:30 - 11:00</th>
            <td rowspan="2" class="Wim">Wim</td>
        </tr>
        <tr>
            <th>11:00 - 11:30</th>
            <td class="Coffee">Coffee</td>
            <td class="Coffee">Coffee</td>
            <td class="Coffee">Coffee</td>
            <td class="Coffee">Coffee</td>
        </tr>
        <tr>
            <th>11:30 - 12:00</th>
            <td class="Coffee">Coffee</td>
            <td rowspan="2" class="Wim">Wim</td>
            <td rowspan="2" class="Jan">Jan</td>
            <td rowspan="2" class="Bob">Bob</td>
            <td rowspan="2" class="Blair">Blair</td>
        </tr>
        <tr>
            <th>12:00 - 12:30</th>
            <td rowspan="2" class="Nachi">Nachi</td>
        </tr>
        <tr>
            <th>12:30 - 13:00</th>
            <td rowspan="2" class="Lunch">Lunch</td>
            <td rowspan="2" class="Lunch">Lunch</td>
            <td rowspan="2" class="Lunch">Lunch</td>
            <td rowspan="2" class="Lunch">Lunch</td>
        </tr>
        <tr>
            <th>13:00 - 13:30</th>
            <td rowspan="2" class="Lunch">Lunch</td>
        </tr>
        <tr>
            <th>13:30 - 14:00</th>
            <td rowspan="2" class="Jamie">Jamie</td>
            <td rowspan="2" class="Clemens">Clemens</td>
            <td rowspan="2" class="Jamie">Jamie</td>
            <td rowspan="2" class="Clemens">Clemens</td>
        </tr>
        <tr>
            <th>14:00 - 14:30</th>
            <td rowspan="2" class="Oana">Oana</td>
        </tr>
        <tr>
            <th>14:30 - 15:00</th>
            <td rowspan="2" class="Oana">Oana</td>
            <td rowspan="6" class="Lunch"> (Free)</td>
            <td rowspan="2" class="Clemens">Clemens</td>
            <td rowspan="2" class="Ohad">Ohad</td>
        </tr>
        <tr>
            <th>15:00 - 15:30</th>
            <td class="Coffee">Coffee</td>
        </tr>
        <tr>
            <th>15:30 - 16:00</th>
            <td rowspan="2" class="Wim">Wim</td>
            <td class="Coffee">Coffee</td>
            <td class="Coffee">Coffee</td>
            <td rowspan="4"></td>
        </tr>
        <tr>
            <th>16:00 - 16:30</th>
            <td rowspan="2" class="Jan">Jan</td>
            <td rowspan="2" class="Blair">Blair</td>
        </tr>
        <tr>
            <th>16:30 - 17:00</th>
            <td rowspan="2" class="Blair">Blair</td>
        </tr>
        <tr>
            <th>17:00 - 17:30</th>
            <td></td><td></td>
        </tr>
        <tr>
            <th></th>
            <td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <th>Evening</th>
            <td class="Social">Pub Quiz</td>
            <td class="Social">Reception</td>
            <td class="Social">Dinner</td>
            <td></td>
            <td></td>
        </tr>
    </tbody>
</table>



## Target Audience

The school is aimed at PhD students in 
programming languages, verification and related areas. 
Researchers and practitioners are welcome, as are strong
undergraduate and masters students with the support of a supervisor. 
Participants should have a background in computer science,
mathematics or a related discipline.
Prospective students may contact the organisers if they have any concerns 
about background knowledge.



## Contact

You can reach the organisers at:

<glasgow-splv-organisers@lists.cent.gla.ac.uk>

The organisers of SPLV'26 are:

* Simon Fowler <Simon.Fowler@glasgow.ac.uk>
* Matthew Alan Le Brun <MatthewAlan.LeBrun@glasgow.ac.uk>
* Olivia Weston <o.weston.1@research.gla.ac.uk>
* Jacob Trevor <j.trevor.1@research.gla.ac.uk>
* Jeremy Singer <Jeremy.Singer@glasgow.ac.uk>



## Sponsors

### Gold Sponsors

<a href="https://www.sigplan.org/"><img style="padding-bottom:6px;
width:180px;" src="assets/logo_sigplan.svg" alt="ACM SIGPLAN"/> </a>

<a href="https://aws.amazon.com/"><img style="padding-bottom:6px; width:180px;"
src="assets/logo_aws.svg" alt="Amazon Web Services"/> </a>


### Silver Sponsors

<a href="https://www.janestreet.com/"><img style="padding-bottom:6px;
width:180px;" src="assets/logo_janest.svg" alt="Jane Street"/> </a>


### Bronze Sponsors

<a href="https://www.well-typed.com/"><img style="padding-bottom:6px;
width:180px;" src="assets/logo_well-typed.svg" alt="Well-Typed"/> </a>


<!-- Style -->
<style type="text/css">
  .avatar {
    float: left;
    vertical-align: middle;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    padding: 10px;
  }
  .flex {
    display: flex; 
    flex-direction: column; 
    gap: 0.5rem; 
  }

  .Bob{
    background-color: #EF4444; 
    color: #cad5e2;
  }
  .Wim{
    background-color: #5b4f4b;
    color: #cad5e2;
  }
  .Nachi{
    background-color: #d08700;
    color: #cad5e2;
  }
  .Oana{
    background-color: #00bba7;
    color: #cad5e2;
  }
  .Blair{
    background-color: #00a63e;
    color: #cad5e2;
  }
  .Ohad{
    background-color: #8200db;
    color: #cad5e2;
  }
  .Jan{
    background-color: #00a6f4;
    color: #cad5e2;
  }
  .Clemens{
    background-color: #79716b;
    color: #cad5e2;
  }
  .Jamie{
    background-color: #c800de;
    color: #cad5e2;

  }
  .Coffee{
    background-color: #461901;
    color: #cad5e2;
  }
  .Lunch{
    /* Colourless! */
    background-color: white;
    color: black;
  }
  .Social{
    background-color: #8b0836;
    color: #cad5e2;x
  }
</style>
