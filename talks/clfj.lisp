(in-package :slideware)

(defslides (:title "Common Lisp for Clojurists"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
    (:h1 "Common Lisp for Clojurists")
    (:p "Brit Butler" (:br) "2013-10-10")
    (:p :align :center
        (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))
  )

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
-- wondering what to use for X? use quicklisp:system-apropos, ask in IRC.

4. Stuff I've built
-- a blog engine, coleslaw
-- a cpu (one day NES) emulator, cl-6502/famiclom
-- a last.fm scrobbling plugin, cl-scrobbler
-- an archlinux package manager, paktahn
-- mailing list scrapers, scripts, endless nonsense

5. Stuff I obsessively think about even though i'm lazy and uninformed
-- Programmer Archaeology
-- Reflective Systems
-- Language Runtimes
-- How in the hell we're even going to make comprehensible software

|#
