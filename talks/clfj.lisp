(in-package :slideware)

(defslides (:title "Common Lisp for Clojurists"
            :path "/home/redline/tmp.html"
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
    (:li "Specific things I've built (time allowing)")))

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
   (:h3 (:pre "> A Few Projects: famiclom"))
   (:br)
   (:img :src "trp/famiclom.png"))

  (:article
   (:h3 (:pre "> A Few Projects: coleslaw"))
   (:br)
   (:img :src "clfj/coleslaw.jpg"))

  (:article
   (:h3 (:pre "> A Few Projects: cl-scrobbler"))
   (:br)
   (:img :src "clfj/shuffletron.png"))

  (:article
   (:h1 :align :center "Questions?")
   (:br) (:br)
   (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/clfj.lisp" "Slides Source"))))

#|

1. Language (oh shit)
-- Common Lisp is not functional! Or OO! Or Imperative! It's Programmable! (show LOOM/Folio?)
-- Practical Common Lisp is *THE* beginners guide. Land of Lisp is also pretty good.
-- syntax
-- data types
-- basics (imperative)
-- basics (OO)
-- basics (functional)
-- libraries for crazy stuff: screamer, optima, lfarm/lparallel, xecto?
-- repl tools: trace, break, apropos, describe, time, etc etc etc

2. Implementation and Tools (compilers, editor integration, build system, library management)
-- just sbcl or abcl, can talk more about this over beers/stackoverflow/twitter if you want
-- emacs/SLIME is the premier editor, surprise surprise. vim/slimv is there too.
-- ASDF is the buildsystem, mostly just interact with it via "ASD files" (think project.clj)
-- quicklisp is the library manager (think lein deps), not command line though, in-image!

3. Community and Ecosystem (docs, specific libraries, irc/reddit)
-- CLHS, sure. but also minispec.org, quickdocs
-- cliki current recommended libraries
-- wondering what to use for X? use quicklisp:system-apropos, ask in #lisp.

4. Stuff I've built
-- a blog engine, coleslaw
-- a cpu (one day NES) emulator, cl-6502/famiclom
-- a last.fm scrobbling plugin for a CL command line music player, cl-scrobbler/shuffletron
-- an archlinux package manager, paktahn
-- mailing list scrapers, scripts, endless nonsense

5. Stuff I obsessively think about even though i'm lazy and uninformed
-- Programmer Archaeology
-- Reflective Systems
-- Language Runtimes
-- How in the hell we're ever going to make comprehensible software

|#
