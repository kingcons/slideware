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
   (:ol
    (:li "Common Lisp - the Language") (:br)
    (:li "Common Lisp - the Toolset") (:br)
    (:li "Common Lisp - the Ecosystem") (:br)
    (:li "A Few Projects (time allowing)")))

  (:article
   (:h3 (:pre "> The Language"))
   (:br))

  (:article
   (:h3 (:pre "> The Toolset"))
   (:br))

  (:article
   (:h3 (:pre "> The Ecosystem"))
   (:br))

  (:article
   (:h3 (:pre "> A Few Projects: "
              (:a :href "https://github.com/redline6561/cl-6502" "famiclom")))
   (:p (:img :src "trp/famiclom.png"))
   (:p :align :center "A (wip) Nintendo Emulator in Pure CL")
   (:ul
    (:li "750 lines of code for the CPU, Assembly, Disassembly.")
    (:li "Runs at ~50 Mhz on an old Core 2 Duo.")
    (:li "There's a literate-style "
         (:a :href "http://redlinernotes.com/docs/cl-6502.pdf" "book")"!")))

  (:article
   (:h3 (:pre "> A Few Projects: "
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
   (:h3 (:pre "> A Few Projects: "
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

2. Implementation and Tools (compilers, editor integration, build system, library management)
-- just sbcl or abcl, can talk more about this over beers/stackoverflow/twitter if you want
-- emacs/SLIME is the premier editor, surprise surprise. vim/slimv is there too.
-- ASDF is the buildsystem, mostly just interact with it via "ASD files" (think project.clj)
-- quicklisp is the library manager (think lein deps), not command line though, in-image!

3. Community and Ecosystem (docs, specific libraries, irc/reddit)
-- CLHS, sure. but also minispec.org, quickdocs
-- cliki current recommended libraries
-- wondering what to use for X? use quicklisp:system-apropos, ask in #lisp.

|#
