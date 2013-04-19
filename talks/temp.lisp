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
    (:li "27, started programming " (:span :class "red" "five and a half") " years ago")
    (:br)
    (:li "Cut my teeth on Scheme & SICP in '08")
    (:li "No 'real' programming (larger than 100 loc) until Oct 2009"))
   (:br) (:br)
   (:p :align :center (:b "Please") " stop me for questions whenever."))

  (:article
   (:h3 :align :center "Thesis: ? "))

  (:article
   (:h1 :align :center "How did I get here?"))

  (:article
   (:h3 "Late 1995... (4th grade)")
   (:br)
   (:br)
   (:div :align :center (:img :src "tdng/hackers.jpg")))

  (:article
   (:h3 "The Lost Decade")
   (:br)
   (:ul
    (:li "1995 - Accused of \"hacking\"") (:br)
    (:li "1997 - Suspended for \"hacking\", military school, :-(") (:br)
    (:li "Oh look, videogames!") (:br)
    (:li "2003 - Suspended for \"hacking\"") (:br)
    (:li "2005 - Switch to linux. Read Weber, switch major to econ.") (:br)))

  (:article
   (:h3 "A New Obsession")
   ;; i.e. foss lets you know the machine soup-to-nuts!
   (:br)
   (:blockquote "'Bit-twiddlers' are neither exactly proletariat nor bourgeoisie. They may not own the means of production in the sense that Marx argued, but they certainly do have significant control over those means, in a more profound way than the term 'symbols analysts' or 'knowledge workers' captures.")
   (:p " - Stephen Weber, " (:i "The Success of Open Source") ", page 247")
   (:br)
   (:p "But school wouldn't let me just study "
       (:strike (:a :href "http://p2pfoundation.net/Agalmics" "agalmics")) (:br)
       (:a :href "http://en.wikipedia.org/wiki/Commons-based_peer_production" "peer production")
       "..."))

  (:article
   (:h1 :align :center "So I finally succumbed to programming."))

  (:article
   (:h3 "5 years later...")
   (:br)
   (:p "Computers are too hard to understand."))

  (:article
   (:h3 "Modern Software Complexity")
   (:br) (:br)
   (:p "Linux was "
       (:a :href "http://www.dwheeler.com/sloc/redhat71-v1/redhat71sloc.html"
           "30 million lines of code") " ... "
           (:span :class :red "10 " (:i "years") " ago") "!")
   (:br)
   (:p "So...")
   (:ul
    (:li "Black box abstraction and library reuse is a success." (:br)
         "(from the perspective of Software Engineering)")
    (:br)
    (:li "Open Source has improved user freedom.")
    (:br)
    (:li "But we have so much code it is difficult to even " (:b "navigate") ".")))

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
   (:blockquote "They [the students] should be capable of reading a 50-page-long program, if it is written in an " (:span :class "red" "exemplary") " style.")
   (:p " - Abelson and Sussman," (:br)
       (:i "Structure and Interpretation of Computer Programs"))
   (:br)
   (:blockquote ))

  (:article
   (:h3 (:small (:i "Exemplary source code?")))
   ;; i.e. exemplary code lets you know the machine soup-to-nuts!
   (:br) (:br) (:br)
   (:p "ex*em*pla*ry (adj):")
   (:blockquote "1) serving as a pattern, or deserving of imitation")
   (:blockquote "2) serving as a warning")
   (:blockquote "3) serving as an example, instance, or illustration"))

  (:article
   (:h1 :align :center "crap"))

  (:article
   (:h3 "Dissenting Opinions?")
   (:br) (:br)
   (:blockquote "A programmer has a problem. Solves it. Releases as open-source. Now has "
                (:span :class :red "10,000 problems") ".")
   (:p " - " (:a :href "https://twitter.com/stuartsierra/status/327536088338030592" "@stuartsierra")
       ", " (:i "the twitters"))
   (:br)
   (:blockquote "Open Source has a life cycle and the time to "
                (:span :class :green "burnout is accelerating") ".")
   (:p " - Jacob Thornton aka " (:a :href "https://twitter.com/fat/" "@fat")
       ", " (:a :href "https://www.youtube.com/watch?v=UIDb6VBO9os" "dotJS 2012")))

  (:article
   (:h3 "We are so screwed.")
   (:br) (:br)
   (:p "Maybe we can fix it with better programming languages..."))

  (:article
   (:h3 "The Goldilocks Principle or," (:br)
        (:i "What the hell are we doing?"))
   ;; i.e. oh, goddammit. nobody knows the machine soup-to-nuts.
   (:br)
   (:ul
    (:li "Everyone with less theoretical knowledge than me is an idiot noob whose code is gibberish.")
    (:li "Everyone with more theoretical knowledge than me is a pointy-headed elitist whose code is gibberish.")
    (:li "My level of theoretical knowledge is just right and my code is clear and deep."))
   (:br)
   (:p "I was an idiot 5 minutes ago, and will be an elitist in 5 minutes. Where has my beautiful code gone?")
   (:br)
   (:p " - " (:a :href "http://twitter.com/pltalaindeb" "PLT Alain de Botton")
       ", " (:i "the twitters")))

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
   (:h3 :align :center "From My Desperate Need") ; for it to exist!
   (:br) (:br) (:br) (:br)
   (:div :align :center (:img :src "tdng/famiclom.png")))

  )

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
