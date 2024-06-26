---

title: SPLV 2024
custom_css: strath

---

<img src="assets/strath_fullcolour.jpg" style="float:right; max-width:15%" alt="University of Strathclyde logo" />

# SPLV24: Scottish Programming Languages and Verification Summer School, 2024

## Glasgow, UK — July 29<sup>th</sup> to August 2<sup>nd</sup>


This year, the [Scottish Programming Languages and Verification Summer School](..)
will be held in Strathclyde.
The event is organized by the [Computer and Information Sciences](https://www.strath.ac.uk/science/computerinformationsciences/)
department at the [University of Strathclyde](https://www.strath.ac.uk/).

For announcements and updates concerning SPLV 2024, please subscribe to our [SPLS Zulip stream](https://spls.zulipchat.com/#narrow/stream/402733-splv-2024).

<p class="announcement"><a href="#registration">Registration is open!</a></p>

## Core Courses

These required lectures cover foundational knowledge.

<div class="flex-container" markdown="1">

  **Category Theory**<img class="avatar" src="assets/chris_heunen.jpg" />
  : **Lecturer:** [Chris Heunen](https://homepages.inf.ed.ac.uk/cheunen/)
  : <details open>
    <summary>Abstract</summary>
      Category theory is a powerful way to describe objects only in terms of how they interact &mdash;
      without looking inside an object to see how it is made. In other words, it focuses on behaviour
      rather than implementation details. This tool is therefore very useful to think about programming
      languages and semantics, and relates to type theory. These lectures will start from the beginning,
      introducing categories and examples. We'll discuss universal properties, which characterise for
      example products and function types. Next we focus on monads, which are a popular way to capture
      computational effects, and adjunctions, which provide translations between different categories.
      Finally, we briefly touch on monoidal categories, string diagrams, and strong monads.
    </details>
  {: .flex-element }

  **Type Theory**<img class="avatar" src="assets/conor_mcbride.jpg" />
  : **Lecturer:** [Conor Mc Bride](https://personal.cis.strath.ac.uk/conor.mcbride/)
  : <details open>
    <summary>Abstract</summary>
      What makes type theories tick? I intend these lectures to communicate an approach to the
      metatheory of type theories which keeps a tight grip on the direction of information flow
      and of trust. A typing rule is a server for its conclusion and a client for its premises.
      The places in judgement forms are classified not only grammatically but as signals.
      Every signal has both a sender (who transmits the syntax of the signal) and a guarantor
      (who promises that the signal is in some way meaningful). We gain insight by distinguishing
      inputs (client-sent) from outputs (server-sent), citizens (guaranteed by their senders)
      from subjects (to be guaranteed by their receivers), and expressions (synthesizing signals
      to send) from patterns (analysing signals upon receipt). In my first lecture, I shall
      introduce the approach via a straightforward example: a reformulation of Martin-Löf's
      1971 type theory, separating type checking for introduction forms from type synthesis
      for elimination forms. In my second lecture, I shall explore the metametatheory of the
      approach, showing generic benefits of its adoption, with some standard metatheoretic
      properties shifting becoming less things to prove and more things to not mess up.
      If I'm not massively overrunning by Tuesday morning, I'll have a quick look at how I
      go about formalising this approach in Agda. You won't find any of this in a book.
    </details>
  {: .flex-element }

</div>



## Invited Course

Our guest lecture series opens a window to a related field.


**A few ideas from distributed systems for PL folk**<img class="avatar" src="assets/lindsey_kuper.jpg" />
: **Invited Lecturer:** [Lindsey Kuper](https://users.soe.ucsc.edu/~lkuper/)
: <details open>
    <summary>Abstract</summary>
    Fifteen years ago, when I was a new PhD student and suffering from an
    advanced case of PL myopia, I foolishly ignored every other area of
    computer science. It was only years later that I realized that distributed
    systems had a lot to teach me.  In these lectures, I'll fill you in on what
    I've learned so far, so you won't be as foolish as I was. We'll start with
    the very basics (what is a distributed system?) and work our way up to an
    implementation of causal broadcast, then finish the week with a brief
    excursion into choreographic programming.  No background in distributed
    systems is necessary, only an open mind.
  </details>
: <details>
    <summary>Bio</summary>
    Lindsey Kuper is an Assistant Professor at the University of California,
    Santa Cruz.  She works on programming-language-based approaches to building
    concurrent and distributed software systems that are elegant, correct, and
    efficient. Some of her research contributions include library-level
    choreographic programming, verification of distributed protocols using
    refinement types, and guaranteed-deterministic parallel programming with
    LVars. She co-founded !!Con
    (<a href="https://bangbangcon.com">bangbangcon.com</a>), the radically
    inclusive conference of ten-minute talks on the joy, excitement, and
    surprise of computing.  She is the recipient of an ICFP Distinguished
    Paper Award (2023), an NSF CAREER Award (2022), and a Google Faculty
    Research Award (2019), and received her Ph.D. in computer science in 2015
    from Indiana University.
  </details>


## Specialised Courses

The specialised courses are offered as two tracks running in parallel.
The interleaving is currently TBC.


<div class="flex-container" markdown="1">

<div class="flex-element" markdown="1">
### Track 1
{: .flex-element }

**Type Theory & Implicit Complexity**<img class="avatar" src="assets/bob_atkey.jpeg" />
: **Lecturer:** [Bob Atkey](https://bentnib.org/)
: <details open>
    <summary>Abstract</summary>
    Implicit Computational Complexity is concerned with the
    characterisation of computational complexity classes as programming
    languages. A programming language characterises a complexity class if
    every function in that class can be implemented in the language and
    every function implementable in the language is in the class.

    In this course I will show how to use Linear Type Theory to
    characterise the class of Polynomial Time computable functions, and
    how by using Linear Dependent Types, we can use this describe other
    classes such as NP, coNP and beyond.
  </details>

**Mechanization of Binders**<img class="avatar" src="assets/kathrin_stark.jpg" />
: **Lecturer:** [Kathrin Stark](https://www.k-stark.de/)
: <details open>
    <summary>Abstract</summary>
    Binders are ubiquitous when mechanising results about programming languages.
    More than 15 years after the POPLMark Challenge, new tools and approaches
    to binding are still being published, and binders are still frequently
    mentioned as being the main difference between mechanisation and paper proof.
    So which one to choose: named, de Bruijn, locally nameless, nominal syntax
    or HOAS? While not answering this question, this course takes a (necessarily
    incomplete) peek into several approaches to binders in a programming language,
    with a focus on their mechanisation.
  </details>

**Category Theory for Semantics**<img class="avatar" src="assets/vikraman_choudhury.jpg" />
: **Lecturer:** [Vikraman Choudhury](https://vikraman.org/)
: <details open>
    <summary>Abstract</summary>
      A programming language is a very exotic object: it provides a vocabulary
      to give instructions to a computer, and at the same time, denotes a mathematical
      object that follows axioms. The purpose of semantics is to reconcile the two
      notions, giving insights into computation, language design, and programming.
      In this course, I will introduce some tools and techniques from category
      theory that are useful to semanticists, and show applications of these to
      prove fundamental results about type theories and programming languages.
  </details>

</div>

<div class="flex-element" markdown="1">
### Track 2

**Protocol Verification**<img class="avatar" src="assets/andres_goens.png" />
: **Lecturer:** [Andrés Goens](https://goens.org/)
: <details open>
    <summary>Abstract</summary>
    Protocols are central to the functioning of many crucial systems. From
    the consistency of your device's memory, to exchanging information over
    the internet, protocols ensure these extremely concurrent systems
    function correctly. In this course we will consider some basic
    principles required to verify such protocols. We will learn about
    labeled transition systems and use temporal logic to specify properties
    of them. In particular, we will focus on safetey and fairness conditions
    in protocols.
  </details>

**Effects and Handlers**<img class="avatar" src="assets/sam_lindley.jpg" />
: **Lecturer:** [Sam Lindley](https://homepages.inf.ed.ac.uk/slindley/)
: <details open>
    <summary>Abstract</summary>
      Effect handlers allow programmers to define, customise, and compose a
      range of crucial programming features ranging from exceptions to
      lightweight threads to probability, inside the programming language.
      In this course I will give a high-level introduction to the theory of
      algebraic effects and effect handlers, effect type systems for effect
      handlers, and effect handler oriented programming.
  </details>

**Applied Category Theory**<img class="avatar" src="assets/jules_hedges.jpg" />
: **Lecturer:** [Jules Hedges](https://julesh.com/)
: <details open>
    <summary>Abstract</summary>
    This course will be about symmetric monoidal categories and what they have to tell us about computation and systems. I plan the topics of my 4 lectures to be:
    <ol>
      <li> string diagrams as 2-dimensional syntax, how they unify computation graphs and flowcharts</li>
      <li> traced, compact closed and hypergraph categories, non-well-founded recursion, backtracking and quantum processes</li>
      <li> decorated and structured cospans, the standard sledgehammer for building domain-specific categories of open systems</li>
      <li> bidirectional processes: lenses, optics, containers, differentiable programming, categorical cybernetics</li>
    </ol>
  </details>

</div>
</div>

## Details

SPLV 2024 is scheduled to run one full week:

> from 9am on **Monday 29th July** to 2:30pm on **Friday August 2nd**.

Lectures will run face-to-face on-site.
We will use the [SPLS Zulip](https://spls.zulipchat.com/) for online communications (e.g. for questions, arrival/dinner on Sunday, …).

## Prerequisites:

The school is aimed at PhD students in programming languages, verification and related areas.
Researchers and practitioners are very welcome, as are strong undergraduate and masters students with the support of a supervisor.
Participants will need to have a background in computer science, mathematics or a related discipline, and have basic familiarity with (functional) programming and logic.

## Registration:

Please register using [this link](https://onlineshop.strath.ac.uk/conferences-and-events/science-faculty/computer-and-information-science/scottish-programming-languages-and-verification-summer-school-2024). Registration closes Sunday 14 July.

The registration fees are:

**Free**
:   for students at a SICSA-affiliated university (limited places)

**250.00 GBP**
:   for students at non SICSA-affiliated universities and academics

**750.00 GBP**
:   for all other participants, i.e. industry practitioners and independent researchers

For students and academics, we kindly request that you register with an institutional account.

If you are unsure which fee is applicable to you, please do get in contact.

Fees cover: all lecture courses, tea and coffee breaks, and lunch.

Fees **do not** cover: travel and accommodation nor subsistence outside of the Summer School times.
A list of options for accommodation are provided below.


## Provisional Schedule:

<div class="schedule">
 <table>
  <tr>
    <th class="time"></th>
    <th class="weekday">Monday</th>
    <th class="weekday">Tuesday</th>
    <th class="weekday">Wednesday</th>
    <th class="weekday">Thursday</th>
    <th class="weekday">Friday</th>
  </tr>
  <tr>
    <td class="time">08:30</td>
    <td>Registration</td>
    <td class="freetime"></td>
    <td rowspan=3 class="freetime"></td>
    <td class="freetime"></td>
    <td class="freetime"></td>
  </tr>
  <tr>
    <td class="time">09:00</td>
    <td rowspan=3 class="core1"></td>
    <td rowspan=2 class="core2"></td>
    <td rowspan=2 class="speciala"></td>
    <td rowspan=2 class="specialb"></td>
  </tr>
  <tr>
    <td class="time">09:30</td>
  </tr>
  <tr>
    <td class="time">10:00</td>
    <td rowspan=2 class="core1"></td>
    <td class="coffee"></td>
    <td rowspan=2 class="specialc"></td>
    <td rowspan=2 class="speciala"></td>
  </tr>
  <tr>
    <td class="time">10:30</td>
    <td class="coffee"></td>
    <td rowspan=2 class="specialb"></td>
  </tr>
  <tr>
    <td class="time">11:00</td>
    <td rowspan=3 class="core2"></td>
    <td class="coffee"></td>
    <td class="coffee"></td>
    <td class="coffee"></td>
  </tr>
  <tr>
    <td class="time">11:30</td>
    <td rowspan=2 class="invited"></td>
    <td rowspan=2 class="invited"></td>
    <td rowspan=2 class="invited"></td>
    <td rowspan=2 class="invited"></td>
  </tr>
  <tr>
    <td class="time">12:00</td>
  </tr>
  <tr>
    <td class="time">12:30</td>
    <td rowspan=2 class="lunch"></td>
    <td rowspan=2 class="lunch"></td>
    <td rowspan=10 class="excursion"></td>
    <td rowspan=2 class="lunch"></td>
    <td rowspan=2 class="lunch"></td>
  </tr>
  <tr>
    <td class="time">13:00</td>
  </tr>
  <tr>
    <td class="time">13:30</td>
    <td rowspan=3 class="core1"></td>
    <td rowspan=2 class="speciala"></td>
    <td rowspan=2 class="specialb"></td>
    <td rowspan=2 class="specialc"></td>
  </tr>
  <tr>
    <td class="time">14:00</td>
  </tr>
  <tr>
    <td class="time">14:30</td>
    <td rowspan=2 class="specialb"></td>
    <td rowspan=2 class="specialc"></td>
    <td class="farewell"></td>
  </tr>
  <tr>
    <td class="time">15:00</td>
    <td class="coffee"></td>
    <td rowspan=12 class="freetime"></td>
  </tr>
  <tr>
    <td class="time">15:30</td>
    <td rowspan=3 class="core2"></td>
    <td class="coffee"></td>
    <td class="coffee"></td>
  </tr>
  <tr>
    <td class="time">16:00</td>
    <td rowspan=2 class="specialc"></td>
    <td rowspan=2 class="speciala"></td>
  </tr>
  <tr>
    <td class="time">16:30</td>
  </tr>
  <tr>
    <td class="time">17:00</td>
    <td class="lightning"></td>
    <td class="lightning"></td>
    <td rowspan=8 class="freetime"></td>
  </tr>
  <tr>
    <td class="time">17:30</td>
    <td rowspan=7 class="freetime"></td>
    <td rowspan=3 class="freetime"></td>
    <td rowspan=7 class="freetime"></td>
  </tr>
  <tr>
    <td class="time">18:00</td>
  </tr>
  <tr>
    <td class="time">18:30</td>
  </tr>
  <tr>
    <td class="time">19:00</td>
    <td rowspan=4 class="dinner"></td>
  </tr>
  <tr>
    <td class="time">19:30</td>
  </tr>
  <tr>
    <td class="time">20:00</td>
  </tr>
  <tr>
    <td class="time">20:30</td>
  </tr>
</table>
</div>

## Sponsorship

[Industrial sponsorship](call-for/sponsorship/) is always welcome,
and if your company would like to sponsor SPLV 2024 then please do
[get in contact with the organising team](mailto:CIS_splv2024@groups.strath.ac.uk).

## Travel and Accommodation

The University of Strathclyde is located a short (five minutes) walk from Glasgow Queen Street, heading east from the City Centre. Glasgow Central Station is 15 minutes away.
The University provides [travel information](https://www.strath.ac.uk/maps/) including maps and directions.
The summer school will be taking place in the [McCance Building](https://maps.app.goo.gl/dRV3M6xkEbPh69id7).

There are many hotels in and around the city centre, as well as some hostels.

The very nearest hotels to the university are:
* Premier Inn George Square (100m)
* Moxy Merchant City (250m)
* Z Hotel Glasgow (300m)
* AC Hotel by Mariott Glasgow (300m)

The Premier Inns at St Enoch Square and particularly Glasgow City Centre South (just south of the River Clyde), are a bit further away (~25 min walk for the latter), but are normally cheaper than their George Square counterpart.

For those willing to share a dorm, the Revolver Hotel (private rooms also available) may be worth a look.

Unfortunately, Strathclyde's halls of residence are not available this summer due to renovation work.
However for those who would prefer a cheap self-catering option, we understand that our city-centre neighbour, Glasgow Caledonian University, currently has availability (~15 minute walk).
You would have to email their [accommodation office](mailto:accommodation@gcu.ac.uk) for more information.


## Sponsors

The summer school is generously sponsored by SICSA, the Scottish Informatics and Computer Science Alliance, Well-Typed, and Tweag.

<div class="logos">
<a href="https://www.sicsa.ac.uk/"><img style="padding-bottom:6px; width:250px;" src="assets/sicsa.png" alt="SICSA"/> </a>
</div>

### Bronze

<div class="logos">
<a href="https://www.well-typed.com/"><img style="padding-bottom:6px; width:250px;" src="assets/well-typed.png" alt="Well-Typed"/> </a>

<a href="https://tweag.io"><img style="padding-bottom:6px; width:250px;" src="assets/tweag.png" alt="Tweag"/> </a>
</div>

## Further Information:

If you have any further questions please get in contact with the local organising team at:

+ <CIS_splv2024@groups.strath.ac.uk>

The principal organisers of SPLV24 are:

* Guillaume Allais <guillaume.allais@strath.ac.uk>
* Fredrik Nordvall Forsberg <fredrik.nordvall-forsberg@strath.ac.uk>
* Jan de Muijnck-Hughes <jan.de-muijnck-hughes@strath.ac.uk>
* Sean Watters <sean.watters@strath.ac.uk>
