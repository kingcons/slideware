(in-package :slideware)

(defslides (:title "Common Lisp for Clojurists"
            :path "/home/redline/quicklisp/local-projects/slideware/talks/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 :align :center "Common Lisp for Clojurists")
   (:br) (:br) (:br) (:br) (:br)
   (:p :align :center "Brit Butler" (:br) "2013-10-10")
   (:p :align :center
       (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 (:pre "> whoami"))
   (:br)
   (:ul
    (:li (:strike "Pythonista") " Rubyist by day, Lisper by night")
    (:li "27, started programming " (:span :class "red" "six") " years ago")
    (:br)
    (:li "Cut my teeth on Scheme & SICP in '08")
    (:li "No 'real' programming (larger than 100 loc) until Oct 2009"))
   (:br) (:br)
   (:p :align :center (:b "Please") " stop me for questions whenever."))

  (:article
   (:h3 (:pre "> Talk Overview"))
   (:br)
   (:p "There " (:em (:b "is")) " a plan but I can switch styles if you want:")
   (:ul
    (:li "Give, ya know, a lecture-ish thing and answer questions. :)") (:br)
    (:li "Walk you through code from script to small lib to bigger.") (:br)
    (:li "Just live code something audience suggested and narrate."))
   (:br) (:br)
   (:p "Let's start with the lecture and veer off course when ready."))

  (:article
   (:h3 (:pre "> Disclaimers"))
   (:br)
   (:p "You'll probably miss some things...")
   (:ul
    (:li "Pervasive Destructuring")
    (:li "Uniform Data Structure APIs")
    (:li "Lisp-1 Namespacing"))
   (:br)
   (:p "And so on. But Clojure and CL are complimentary tools."))

  (:article
   (:h3 (:pre "> But Why Common Lisp?"))
   (:br)
   (:p "Should probably just address this head on...")
   (:ul
    (:li "Maybe the JVM isn't an option.")
    (:li "Maybe you're single-threaded or want mutation.")
    (:li "Maybe you want to dig under the abstractions.")
    (:li "Maybe you want to play with the wealth of CL libraries."))
   (:br)
   (:p "We can discuss this in much greater depth over beers. :)"))

  (:article
   (:h3 (:pre "> Some Historical Perspective"))
   (:br)
   (:p "Common Lisp is to Clojure as OCaml is to Scala.") (:br)
   (:p "CL + OCaml reached \"adulthood\" in the mid-90s.") (:br)
   (:p "Both facing off against C++ as opposed to Java..." (:br)
       "And thus more suited to \"Systems Programming\".") (:br)
   (:p "The Ecosystems can seem dated ... like CPAN."))

  (:article
   (:h3 (:pre "> The Toolset"))
   (:br)
   ;; Remember to mention the analogs here: clj, nil, maven, lein
   (:p "You need: Compiler, Editor, Build Tool, Package Manager")
   (:br)
   (:p "Compiler: Just Use " (:a :href "http://sbcl.org/" "SBCL") " or "
       (:a :href "http://ccl.clozure.com/" "CCL") "." (:br)
       (:small (:i "(There is ABCL if you must JVM, ECL if you must embedded.)")))
   (:p "Editor: Premier editors are Emacs/"
       (:a :href "http://common-lisp.net/project/slime/" "slime") " and vim/"
       (:a :href "https://bitbucket.org/kovisoft/slimv/overview" "slimv") ".")
   (:p "Build Tool: It's simple, there is only "
       (:a :href "http://common-lisp.net/project/asdf/" "ASDF") ".")
   (:p "Package Manager: Get " (:a :href "http://quicklisp.org/" "quicklisp")
       ". There is no substitute. :)")
   (:br)
   (:p (:a :href "http://common-lisp.net/project/lispbox/" "Lispbox") " is also an option."))

  (:article
   (:h3 (:pre "> The \"Community\""))
   (:br)
   (:p "A few notable, minimally intersecting hangouts...")
   (:ul
    (:li (:a :href "http://www.cliki.net/IRC" "#lisp on Freenode")) (:br)
    (:li (:a :href "http://reddit.com/r/lisp/" "Lisp Reddit")) (:br)
    (:li (:a :href "http://www.lispforum.com/" "Lisp Forum")) (:br)
    (:li (:a :href "http://planet.lisp.org/" "Planet Lisp"))))

  (:article
   (:h3 (:pre "> The Ecosystem"))
   (:p "Or, \"What lib do I use for X?\"")
   (:ul
    (:li "Check " (:a :href "http://www.cliki.net/current%20recommended%20libraries"
                      "Cliki's recommended libs"))
    (:li "Ask in #lisp or use " (:code "(ql:system-apropos \"my-lib\")")))
   (:br)
   (:p "What about learning materials?")
   (:ul
    (:li "Start with " (:a :href "http://gigamonkeys.com/book/" "Practical Common Lisp") "!")
    (:li "Take language questions to " (:a :href "http://minispec.org/" "the Minispec") ", "
         (:br) "take library questions to " (:a :href "http://quickdocs.org/" "QuickDocs") ".")
    (:li "There are also "
         (:a :href "http://redlinernotes.com/docs/talks/clfj/cl-reference-quick.pdf" "many") " "
         (:a :href "http://redlinernotes.com/docs/talks/clfj/cl-reference-brian.pdf" "quick") " "
         (:a :href "http://redlinernotes.com/docs/talks/clfj/cl-reference-mitch.pdf" "references") ".")))



  (:article
   (:h3 (:pre "> The Language"))
   (:br)
   (:p "Common Lisp is (as far as possible) a Systems Lisp.")
   (:ul
    (:li
     (:blockquote "What I like about Lisp is that you can " (:br)
                  (:span :class :blue "feel the bits between your toes") "."
                  (:br) (:i " - Drew McDermott"))))
   (:br)
   (:p "Common Lisp isn't \"multiparadigm\", it's agnostic.")
   (:ul
    (:li
     (:blockquote "Lisp is a " (:span :class :red "programmer amplifier") "."
                  (:br) (:i " - Martin Rodgers")))))

  (:article
   (:h3 (:pre "> The Language")))

  (:article
   (:h3 (:pre "> Selected Projects: "
              (:a :href "https://github.com/redline6561/cl-6502" "famiclom")))
   (:p (:img :src "trp/famiclom.png"))
   (:p :align :center "A (wip) Nintendo Emulator in Pure CL")
   (:ul
    (:li "750 lines of code for the CPU, Assembly, Disassembly.")
    (:li "CPU runs at ~50 Mhz on an old Core 2 Duo.")
    (:li "There's a literate-style "
         (:a :href "http://redlinernotes.com/docs/cl-6502.pdf" "book")"!")))

  (:article
   (:h3 (:pre "> Selected Projects: "
              (:a :href "https://github.com/redline6561/coleslaw" "coleslaw")))
   (:p :align :center (:img :src "clfj/coleslaw.jpg"))
   (:p :align :center "A Static Blog Engine a la Jekyll")
   (:br)
   (:ul
    (:li "450 lines of Core, 250 lines of Plugins.")
    (:li "Git-backed Markdown posts, Push to deploy.")
    (:li "RSS and ATOM feeds, Code highlighting.")
    (:li "Plugins for DISQUS comments, Google analytics, " (:br)
         "LaTeX via Mathjax, Wordpress Importing, etc")))

  (:article
   (:h3 (:pre "> Selected Projects: "
              (:a :href "https://github.com/redline6561/cl-scrobbler" "cl-scrobbler")))
   (:p (:img :src "clfj/shuffletron.png")))

  (:article
   (:h1 :align :center "Questions?")
   (:br) (:br)
   (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/clfj.lisp" "Slides Source"))))

#|

1. Language (oh shit)
-- Common Lisp is not functional! Or OO! Or Imperative! It's Programmable! (show LOOM/Folio?)
-- Things you'll miss: Pervasive destructuring, consistent standard lib/interfaces.
-- Practical Common Lisp is *THE* beginners guide. Land of Lisp is also pretty good.
-- syntax
-- data types & the type system
-- basics (imperative)
-- basics (OO)
-- basics (functional)
-- conditions, macros
-- file i/o, network i/o
-- packages, systems
-- repl tools: trace, break, apropos, describe, time, etc etc etc
-- libraries for crazy stuff: screamer, optima, lfarm/lparallel, xecto?

3. Community and Ecosystem
-- mention reference cards at clfj/references/, CLHS and other good books at the end...
   (:li "OO: Kleene, AMOP; macrology: On Lisp, Let over Lambda;" (:br)
   "general: Land of Lisp, PAIP, Lisp in Small Pieces.")))
|#
