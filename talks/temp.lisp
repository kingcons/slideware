(in-package :slideware)

(defslides (:title "Towards Dynamic NES Games"
            :path "/home/redline/quicklisp/local-projects/slideware/talks/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
    (:br) (:br) (:br) (:br) (:br)
    (:h3 :align :center "Towards Dynamic NES Games or,"
         (:br) "Deconstructing my Childhood")
    (:p :align :center "Brit Butler" (:br) "2013-08-06")
    (:br) (:br) (:br) (:br) (:br) (:br)
    (:p :align :center
        (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 (:pre "> whoami"))
   (:br)
   (:ul
    (:li "Pythonista by day, Lisper by night")
    (:li "27, started programming about " (:span :class "red" "five") " years ago")
    (:li "Cut my teeth on Scheme+SICP in '08")
    (:li "No 'real' programming (larger than 100 loc) until 10/2009")
    (:li "Most of my hobby coding is done in CL"))
   (:br)
   (:p (:b "Please") " stop me for questions whenever."))

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
    (:li "1997 - Suspended for \"hacking\", Military School, :-(") (:br)
    (:li "Oh look, videogames!") (:br)
    (:li "2003 - Suspended for \"hacking\"") (:br)
    (:li "2006 - Econ is boring...Switch to linux! Start programming?") (:br)
    (:li "2008 - Actually start programming.")))

  (:article
   (:h3 "A New Obsession")
   ;; i.e. foss lets you know the machine soup-to-nuts!
   (:br) (:br)
   (:blockquote "'Bit-twiddlers' are neither exactly proletariat nor bourgeoisie. They may not own the means of production in the sense that Marx argued, but they certainly do have significant control over those means, in a more profound way than the term 'symbols analysts' or 'knowledge workers' captures.")
   (:p " - Stephen Weber, " (:i "The Success of Open Source") ", page 247"))

  (:article
   (:h3 "Dissenting Opinions?")
   ;; i.e. or does it? why don't these users feel empowered?
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
   (:h3 "Programmer Archaeology: In Search of Lost Culture")
   ;; i.e. lisp lets you know the machine soup-to-nuts!
   (:br) (:br)
   (:blockquote "Thus, programs must be written for "
                (:span :class :blue "people to read")
                ", and only incidentally for machines to execute.")
   (:p " - Abelson and Sussman," (:br)
       (:i "Structure and Interpretation of Computer Programs"))
   (:br)
   (:blockquote (:b "Personal Mastery:") " If a system is to serve the creative spirit, it must be "(:span :class :red "entirely comprehensible") " to a single individual.")
   (:p " - Dan Ingalls, " (:br)
       (:i (:a :href "http://www.cs.virginia.edu/~evans/cs655/readings/smalltalk.html" "Design Principles Behind Smalltalk"))))

  (:article
   (:h3 (:small (:i "Exemplary source code?")))
   ;; i.e. exemplary code lets you know the machine soup-to-nuts!
   (:br) (:br) (:br)
   (:p "ex*em*pla*ry (adj):")
   (:blockquote "1) serving as a pattern, or deserving of imitation")
   (:blockquote "2) serving as a warning")
   (:blockquote "3) serving as an example, instance, or illustration"))

  (:article
   (:h1 :align :center "shit"))

  (:article
   (:h3 "The Goldilocks Principle or," (:br)
        (:i "What the fuck are we doing?"))
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
   (:p "Something real, simple, cool")
   (:ul
    (:br)
    (:li "Inspect all source code and hardware state " (:i "intuitively") ".")
    (:br) (:br)
    (:li "Modify source code + hardware with " (:i "short feedback loop" "."))
    (:br) (:br)
    (:li "Exemplary style, within reasonable (SICP?) " (:i "size constraints") ".")))

  (:article
   (:h3 :align :center "From My Desperate Need") ; for it to exist!
   (:br) (:br) (:br) (:br)
   (:div :align :center (:img :src "tdng/famiclom.png")))

  )

#| notes:

- build a solution.

"" - Christopher Kelty, *Two Bits: The Significance of Free Software*, page 11

"" - Pekka Himanen, *The Hacker Ethic and the Spirit of the Information Age*

|#

#| quotes:

; (:blockquote "They [the students] should be capable of reading a 50-page-long program, if it is written in an " (:span :class "red" "exemplary") " style.")
; (:p " - " (:i "SICP") ", Preface to the First Edition")

p50 lines/page * 50 pages == 2500 lines of code.
that's the target for famiclom.
beyond that, it would be nice to get a lispy-lang to nes compiler in 2500 lines.
beyond that, can i golf mega man 2 into 2500 lines??? O_O

|#
