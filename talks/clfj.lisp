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
    (:li "Pervasive Destructuring, but there is " (:a :href "http://www.lispworks.com/documentation/HyperSpec/Body/m_destru.htm" "destructuring-bind"))
    (:li "Lisp-1 Namespacing, but there are always " (:a :href "https://gist.github.com/redline6561/6889672" "macros..."))
    (:li "Uniform Data Structure APIs, but there are " (:a :href "https://github.com/mikelevins/folio2" "crazy people...")))
   (:br)
   (:p "And so on. But Clojure and CL are complimentary tools."))

  (:article
   (:h3 (:pre "> But Why Common Lisp?"))
   (:br)
   (:p "Should probably just address this head on...")
   (:ul
    (:li "Maybe the JVM isn't an option.")
    (:li "Maybe you want an unopinionated language.")
    (:li "Maybe you want to dig under the abstractions.")
    (:li "Maybe you want to play with the wealth of CL libraries."))
   (:br)
   (:p "We can discuss this further over beers. :)"))

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
       (:small (:i "(There is ABCL if you must JVM...)")))
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
   (:h3 (:pre "> The Language"))
   (:br)
   (:p "Common Lisp is (as far as possible) a Systems Lisp.")
   (:ul
    (:li
     (:blockquote "What I like about Lisp is that you can " (:br)
                  (:span :class :blue "feel the bits between your toes") "."
                  (:br) (:i " - Drew McDermott"))))
   (:br)
   (:p "Common Lisp is unopinionated, agnostic.")
   (:ul
    (:li
     (:blockquote "Lisp is a " (:span :class :red "programmer amplifier") "."
                  (:br) (:i " - Martin Rodgers")))))

  (:article
   (:h3 (:pre "> The Language: Syntax"))
   (:br)
   (:p (:b "No") " literal syntax for...")
   (:ul
    (:li "Hashes/Sets")
    (:li "Regexes")
    (:li "Lambdas, but there's " (:a :href "https://github.com/eschulte/curry-compose-reader-macros"
                                     "curry-compose-reader-macros")))
   (:br)
   (:p "Vectors are not [1 2 3] but #(1 2 3)")
   (:p "Functions are passed not as foo but #'foo"))

  (:article
   (:h3 (:pre "> The Language: Basics"))
   (:ul
    (:li "NOTE: Having an " (:a :href "http://l1sp.org/html/" "online ANSI standard") " is awesome!"))
   (:br)
   (:p "Many things will be clear quickly:")
   (:p (:a :href "https://gist.github.com/6891925" "Variables, Functions, Macros"))
   (:br)
   (:p "Other things will be stranger:")
   (:p (:a :href "https://gist.github.com/redline6561/6891925#file-basics-lisp-L50"
           "Conditions, Format, Loop")))

  (:article
   (:h3 (:pre "> The Language: Object Oriented"))
   (:br)
   )

  (:article
   (:h3 (:pre "> The Language: REPL Tools"))
   (:br)
   )

  (:article
   (:h3 (:pre "> The Language: Packaging"))
   (:br)
   (:p "Packages are _roughly_ analagous to namespaces.")
   (:p "File can define multiple packages, package can have code in multiple files.")
   (:br) (:br)
   (:p "Systems are analagous to a library.")
   (:p "Defined by a foo.asd file in your project root." (:br) "Example: "
       (:a :href "https://github.com/redline6561/cl-scrobbler/blob/master/cl-scrobbler.asd" "cl-scrobbler")))

  (:article
   (:h3 (:pre "> The Language: Extensions"))
   (:br)
   (:p "Much like with Clojure, you can get outside the box...")
   (:br)
   (:ul
    (:li "Pattern Matching with " (:a :href "https://github.com/m2ym/optima" "Optima"))
    (:li "Logic and Nondeterminism with " (:a :href "http://nikodemus.github.io/screamer/" "Screamer"))
    (:li "Parallelism with " (:a :href "http://lparallel.org/" "lparallel"))
    (:li "Distribution with " (:a :href "https://github.com/lmj/lfarm" "lfarm"))
    (:li "Parametric Polymorphism a la Type Classes with "
         (:a :href "https://github.com/fare/lisp-interface-library" "LIL"))
    ;; SERIES or Xecto for Array Parallelism?
    (:li "And plenty of others...")))

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

p1. Language (oh shit)
-- data types & the type system
-- basics (imperative)
-- basics (OO)
-- basics (functional)
-- file i/o, network i/o
-- repl tools: trace, break, apropos, describe, time, etc etc etc

|#
