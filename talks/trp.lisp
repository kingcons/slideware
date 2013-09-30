(in-package :slideware)

#|
> whoami stuff

# some sort of disclaimer here?
# i.e. wanted to do a talk on what i know, might not be applicable to co problems, but targeted at wide audience

> latest project: cl-6502, a CPU emulator.
> what's an emulator? a program that pretends to be a computer.
> in particular, this one is a WIP nintendo emulator. vidya games! (screenshot)

> but goals have shifted during the project. been working on it a year,
> started to learn about assembly lang/get closer to the metal, but now
> i'm more interested in programming infrastructure pedagogy ..... WAT?

> so, we've been teaching programming for ~30 years, conservatively.
> and there have been some improvements along the way. (fortran -> python/ruby; cs 101/102 dialed but then what?)
> though CS sucks at teaching pragmatics and DIY sucks at teaching theory.
> the 2 inform *one another* and that's a sad thing to lose.

> In particular, I've been programming for 5 years, professionally for 2,
> and I still don't have a strong mental model of what our infrastructure
> is doing under the covers: PLs, OSes, etc. why is that?

> gary bernhardt: this industry sucks.
> it's INSANELY COMPLICATED is why: 40 million lines of code, etc.


# interesting figure: 2900 words of prose, 4200 words of code in cl-6502.
|#

#|

> whoami stuff

> i saw hackers, always loved computers
> i ran for a while, wound up at a liberal arts school, started using linux
> loved the school, didn't want to do any of those things professionally

> then i read 'The Success of Open Source' by Steven Weber
> SHOCKED by notions of Gift Economies, people coordinating and cooperating without monetary incentive/coercion, and it EMPOWERED them
> started programming, bouyed by excitement about open source and agalmics

> 5 years later: i love programming, but Weber was *wrong*. Why?
> THE SIZE OF SOFTWARE. we're not empowered, we're drowning!
> having access to the source code is only empowering if we can wade through it, comprehend it, leverage it!

> what is readability?
* the right interfaces, modules are the problem decomposition, (requires understanding the problem)
* well factored code
* DSLs where it *really* counts

|#

(defslides (:title "Towards Readable Programs"
            :path "/home/redline/quicklisp/local-projects/slideware/talks/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
    (:br) (:br) (:br) (:br) (:br)
    (:h3 :align :center "Towards Readable Programs or,"
         (:br) "Deconstructing my Childhood")
    (:br)
    (:p :align :center "Brit Butler" (:br) "2013-08-06")
    (:br) (:br) (:br) (:br) (:br)
    (:p :align :center
        (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:br)
   (:h3 (:pre "> whoami"))
   (:ul
    (:li (:strike "Pythonista") " Rubyist by day, Lisper by night")
    (:li "27 years old today")
    (:li "Started programming about " (:span :class :red "5 and a half") " years ago")
    (:br)
    (:li "Cut my teeth on Scheme & SICP in 2008")
    (:li "No 'real' programming (larger than 100 loc) until Oct 2009"))
   (:br) (:br)
   (:p :align :center (:b "Please") " stop me for questions whenever."))

  (:article
   (:h3 :align :center (:b "Disclaimer"))
   (:br)
   (:p :align :center (:img :src "trp/feels.gif"))
   (:br)
   (:p :align :center "This may be whiny but I just can't hold all these feels."))

  (:article
   (:h3 :align :center "Thesis: ")
   (:h1 :align :center "The Age of Comprehensible Computing is Over"))

  (:article
   (:h3 "Example: MIT's 2009 Curriculum Changeup")
   (:br) (:br)
   (:img :align :left :style "height: 80%;" :src "trp/sicp.jpg")
   (:br) (:br)
   (:p :align :right
       "Building larger programs out of a group of small, understandable pieces is what things like recursion and functional programming are built for.")
   (:br)
   (:p :align :right (:b "The world isn't like that anymore."))
   (:br)
   (:p :align :right
       (:a :href "http://cemerick.com/2009/03/24/why-mit-now-uses-python-instead-of-scheme-for-its-undergraduate-cs-program/"
           " - Gerald Sussman, 2009")))

  (:article
   (:h3 "What is the software world like today?")
   (:br) (:br)
   (:p "Linux was "
       (:a :href "http://www.dwheeler.com/sloc/redhat71-v1/redhat71sloc.html"
           "30 million lines of code") " ... over "
           (:span :class :red "10 " (:i "years") " ago") "!")
   (:br)
   (:p "So...")
   (:ul
    (:li (:a :href "http://people.engr.ncsu.edu/efg/517/f00/syllabus/annotations/lec13.html" "Black-box abstraction")
         " and " (:a :href "http://www.hxa.name/notes/note-hxa7241-20120429T1019Z.html" "library reuse")
         " is a success." (:br) "(from the perspective of Software Engineering)")
    (:br)
    (:li "But our software is " (:a :href "http://blog.redlinernotes.com/static/size_of.txt" "growing too large")
         " to even navigate, much less "
         (:i (:a :href "http://blog.redlinernotes.com/posts/Towards-Comprehensible-Computing.html" "comprehend")) ".")
    (:br)
    (:li "And schools are focused on teaching engineers to work with incompletely understood components.")))

  (:article
   (:h3 "Ignored Infrastructure")
   (:br)
   (:p "Collectively, we suffer from a " (:i (:span :class :red "learned helplessness"))
       " around it: to build new high-level tools, we’d also have to rebuild some of the
       infrastructure... We can’t imagine triggering such a large cultural and
       technological shift, so we don’t even try to build truly new tools for ourselves.")
   (:br)
   (:p "Our 'Shipping Culture' is poisonous to infrastructure. We just accrete it.")
   (:p :align :right
       (:a :href "https://thestrangeloop.com/sessions/a-whole-new-world" " - Gary Bernhardt, A Whole New World"))
   (:br) (:br))

  (:article
   (:h3 "Tools of Oppression?")
   (:p :align :center (:img :src "trp/oppression.png")))

  (:article
   (:h3 "Who Cares?")
   (:br)
   (:p "Me: I want to build a machine I can understand from the ground up, soup to nuts.")
   (:br)
   (:p "Matt Anderson: Why? The whole point of programming and computer science is black-box abstraction.")
   (:br) (:br)
   (:p (:b "Underlying Idea:") " You shouldn't have to understand.")
   (:br)
   (:p "Well, maybe but..."))

  (:article
   (:h3 "We Care")
   (:br) (:br)
   (:p :align :center (:img :src "trp/evidence/alfredo.png"))
   (:br) (:br)
   (:p :align :center (:img :src "trp/evidence/nate.png"))
   (:br) (:br)
   (:p "Lots of us care..."))

  (:article
   (:br)
   (:p :align :center (:img :src "trp/evidence/gaynor.png"))
   (:br) (:br)
   (:p :align :center (:img :src "trp/evidence/gaynor2.png")))

  (:article
   (:br)
   (:p :align :center (:img :src "trp/evidence/pcwalton.png"))
   (:br)
   (:p :align :center (:img :src "trp/evidence/victor.png"))
   (:br)
   (:h2 "You get the idea..."))

  (:article
   (:h3 "When was this not true?")
   (:br) (:br)
   (:p "Do you even remember a time before all this complexity?")
   (:br) (:br)
   (:p (:b "I don't.") " I wasn't alive for it.")
   (:br) (:br)
   (:p "But I believed it existed and went looking."))

  (:article
   (:h3 "Programmer Archaeology: In Search of Lost Culture")
   ;; i.e. lisp lets you know the machine soup-to-nuts!
   (:br) (:br)
   (:blockquote "Thus, programs must be written for "
                (:span :class :blue "people to read")
                ", and only incidentally for machines to execute.")
   (:p " - Abelson and Sussman," (:br)
       (:i "Structure and Interpretation of Computer Programs"))
   (:br)
   (:blockquote (:b "Personal Mastery") ": If a system is to serve the creative spirit, it must be "(:span :class :red "entirely comprehensible") " to a single individual.")
   (:p " - Dan Ingalls, " (:br)
       (:i (:a :href "http://www.cs.virginia.edu/~evans/cs655/readings/smalltalk.html" "Design Principles Behind Smalltalk"))))

  (:article
   (:h3 "What is Readable Code?")
   (:br)
   (:p "They [the students] should be capable of reading a 50-page-long program, if it is written in an " (:span :class "red" "exemplary") " style.")
   (:p :align :right " - Abelson and Sussman")
   (:br)
   (:p "I think that it's extraordinarily important that we keep the fun in computing. ...
        We began to feel as if we really were responsible for the successful, error-free
         perfect use of these machines. " (:span :class :red "I don't think we are.") (:br) (:br)
         "I think we're responsible for stretching them, setting them off in new directions, and keeping fun in the house.")
   (:p :align :right " - Alan Perlis"))

  (:article
   (:h3 "Recent Developments: cl-6502")
   (:br)
   (:p "cl-6502 is a Readable CPU emulator for the MOS 6502.")
   (:br)
   (:img :src "trp/nes.jpg"))

  (:article
   (:h3 "Not quite there yet...")
   (:br) (:br) (:br) (:br)
   (:img :align :center :src "trp/famiclom.png")
   (:br) (:br)
   (:p :align :center "todo: video/sound/input/mappers"))

  (:article
   (:h3 "Emulators: FCEUX")
   (:br)
   (:p :align :center (:img :width "60%" :height "60%" :src "trp/fceux.png"))
   (:br)
   (:p "A: 'Cool, how does it work?'")
   (:p "B: 'Oh, just read this 2500 page book.' (175 kloc)"))

  (:article
   (:h3 "What do I want?")
   (:br)
   (:p "Something real, simple, cool.")
   (:ul
    (:br)
    (:li "Inspect all source code and hardware state " (:i "intuitively") ".")
    (:br) (:br)
    (:li "Modify the live system with a " (:i "short feedback loop") ".")
    (:br) (:br)
    (:li "Exemplary style within reasonable " (:i "size constraints") ".")))

  (:article
   (:h3 "Lessons Learned")
   (:br) (:br)
   (:ul
    (:li "1) Get the API right first.") (:br)
    (:li "2) Factor as much as reasonably possible.") (:br)
    (:li "3) Use a pinch of DSLs where it *really* counts."))
   (:br)
   (:p "No programming language or tool can solve these problems.")
   (:br)
   (:p "And, of course, readability is a function of the audience."))

  (:article
   (:h3 "Just Remember")
   (:br)
   (:p :align :center (:img :src "trp/evidence/cool_industry.png"))
   (:br)
   (:p "The next time you're frustrated with infrastructure, try to "
       (:b "reimagine") " it! We can take back our technology,"
       " and build whatever kind of computing world we want to.")
   (:br)
   (:p "Start from a CPU emulator if you have to. Supplanting the mess "
       "isn't what's important. Getting to play with systems and see how"
       " they interact is. And it's the only way we'll ever find a path out."))

  (:article
   (:h1 :align :center "Questions?")
   (:br) (:br)
   (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/trp2.lisp" "Slides Source"))))

#| notes:

- build a solution.

-- Computer Science - theory not practice.
-- How to Learn XYZ - practice not theory.
---- Both are needed. Where is my programming pedagogy?

-- sell Matt Anderson, Gary Bernhardt. Why should hackers know their infrastructure?
---- black box abstraction "succeeded" leaves us with paper cuts.

"" - Christopher Kelty, *Two Bits: The Significance of Free Software*, page 11
"" - Pekka Himanen, *The Hacker Ethic and the Spirit of the Information Age*

- sussman quotes from lambdajam
- alan perlis, the fun in computing from SICP preface
- fred brooks, creating by exertion of the imagination
- kragen sitaker, why cs is awesome
- nostrademons, we are always learning

|#

#| quotes:

p50 lines/page * 50 pages == 2500 lines of code.
that's the target for famiclom.
beyond that, it would be nice to get a lispy-lang to nes compiler in 2500 lines.
beyond that, can i golf mega man 2 into 2500 lines??? O_O

|#
