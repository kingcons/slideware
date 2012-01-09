(in-package :slideware)

#|

Common Lisp - My Favorite Tool

* About Me
-- 25, started programming 4.5 years ago (linux a few years before that)
-- Didn't learn much until scheme+sicp in '08
-- Didn't do serious programming until ~09/09
-- Hence: You all know more than me ;)
-- But almost all of my serious coding was in CL for the next 1.5 years (pros and cons, yes my mind is warped)
-- Did a talk in November called "CL: The good, the bad, the ugly" ... didn't go so well. Dove too deep, too fast.
-- Please stop me for questions whenever

* Why Common Lisp instead of (Scheme, Clojure, non-lisps, etc)?
-- Don't want to get too into this, save it for beers.
-- But let's talk about a few things CL got insanely *right*
--- http://john.freml.in/lisp-features: usable globals (i.e. thread-local binding stack), conditions/restarts, powerful closures (even return from enclosing scope)
-- Things that suck a little
--- CLOS is amazing, sequence operations could benefit from it. Historical cruft.
-- Macros are legitimately awesome but it's a sum of the parts thing.
-- Most importantly, as an image-based language my ability to maintain flow is better than anything else I've encountered.
--- Some people are annoyed by the deploy side of this.
--- EMACS + SLIME BITCHES! ; (sorry)

* Introducing Shuffletron
-- Made by Andy Hefner (cause I was too lazy&dumb to bother with CFFI, learning about audio in '09)
-- http://vintage-digital.com/hefner/software/shuffletron/
-- Worked hard to make it deploy to targets without lisp installed
--- see: http://ahefner.livejournal.com/15783.html
-- Command-line based, fast. It has help, it has eval, it has mp3 (and now ogg and flac) support, etc etc

* Debugging Shuffletron: A Case Study
-- Fired up shuffletron after some substantial edits (adding ogg+flac support)
-- Quickly noticed that the player didn't proceed to the next queued track
-- TRACE ALL THE FUNCALLABLE THINGS! ; (within-reason-p)
-- http://redlinernotes.com/docs/best_debugging_experience_evar.txt
-- ... ... Oh. You changed the class hierarchy and left a dangling Super() call you idiot.
-- see: https://github.com/redline6561/mixalot/commit/cb701573b03d12e0a442398a0b8a68da9e3b616c
-- see: https://github.com/redline6561/shuffletron/commit/a7cd7f16cc11425e487a707286b06d4c0c933d6a
-- Edit code, reload while the music is playing, check that things proceed as expected, untrace.
-- /me bows

* A minor hack: Romreader
-- A lib for parsing ROM files for console emulators
-- Only supports NES at the moment
-- A good, simple project. ~130 LOC excluding comments, whitespace
-- http://github.com/redline6561/romreader
-- *.asd, package, conditions, util, romreader, nes
-- Any questions? Feel like walking through parse-header? Feel like disassembling it?

* A few other hacks:
-- Current project: 6502 emulator in lisp (been burned out the last month, need to pick it back up)
-- paktahn, an AUR helper (package management tool) for archlinux
-- cl-scrobbler, a library for scrobbling to last.fm. boring REST with cute (hideous?) macrology
-- clockwork, a simple email+sms reminder web app, made with weblocks (also a blog series)
-- coleslaw, lisp blogware (needs work)
-- cl-opencv, bindings to Intel's OpenCV, a computer vision lib
-- tic-tac-toe, terminal tic-tac-toe implementation
-- os-project, a silly assembly interpreter for a school project
-- trivial-raw-io, somewhat portable access to raw serial/terminal I/O (termios) for unix
-- slideware, simple html generator for my talks. pointless.
-- Feel free to ask questions, challenge me or demand to see code.

* Q & A

|#

(defslides (:title "Atlanta Lispers - CL: My Favorite Tool"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "Common Lisp - My Favorite Tool")
   (:p "Brit Butler" (:br) "2012-01-09")
   (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 "About Me")
   (:p "Recent graduate, Python/Djangoist by day, Lisper by night" (:br))
   (:ul
    (:li "25, started programming " (:span :class "red" "four and a half") " years ago")
    (:li "Cut my teeth on Scheme+SICP in '08")
    (:li "No 'real' programming (larger than 100 LoC) until ~09/09")
    (:li "All my serious coding was in CL for the following ~2 years"))
   (:p "What I've learned: Experience is everything in this business.")
   (:p "Please stop me for questions whenever."))

  (:article
   (:h3 "Why Common Lisp?")
   (:p "As opposed to (Scheme, Clojure, Dylan, etc...)" (:br)
       "Don't want to get too into this, "(:b "Save it for beers ;)"))
   (:p "But: It's *NOT* all about Macros")
   (:ul
    (:li "John Fremlin - " (:a :href "http://john.freml.in/lisp-features" "Lisp Features"))
    (:li "Conditions, Usable Globals, Powerful Closures, CLOS")
    (:li "Bad things too: Seq Fns, CLOS was late, Historical Cruft"))
   (:br)
   (:p (:b "Most importantly:") " Easiest way I've found to maintain flow." (:br)
       "EMACS + SLIME! ;; (sorry)"))

  (:article
   (:h3 "Introducing " (:a :href "http://vintage-digital.com/hefner/software/shuffletron/" "Shuffletron"))
   (:ul
    (:li "Author: Andy Hefner")
    (:li "Worked hard on deploy issues, see: " (:br)
         (:a :href "http://ahefner.livejournal.com/15783.html" "Adventures in Lisp App Deployment"))
    (:li "Command-line based, Fast, Help, mp3 (now ogg+flac) support, eval, etc")))

  (:article
   (:h3 (:a :href "http://redlinernotes.com/docs/best_debugging_experience_evar.txt"
            "Debugging Shuffletron") ": A Case Study")
   (:p "Added ogg+flac support in my fork")
   (:p "Huh, playback isn't progressing through the queue")
   (:p "TRACE ALL THE FUNCALLABLE THINGS! ;; (within-reason-p)")
   (:p "Oh, I changed the class hierarchy. (call-next-method)...")
   (:p "MOVE ALL THE SUPERS!" (:br) ";; see: "
       (:a :href "https://github.com/redline6561/mixalot/commit/cb701573b03d12e0a442398a0b8a68da9e3b616c" "mixalot commit") ", "
       (:a :href "https://github.com/redline6561/shuffletron/commit/a7cd7f16cc11425e487a707286b06d4c0c933d6a" "shuffletron commit"))
   (:p "Check, Untrace, /me bows, " (:b "\\o/ #lisp")))

  (:article
   (:h3 "A minor hack: romreader")
   (:ul
    (:li "A lib for parsing ROMs for console emulators")
    (:li "Only supports NES at the moment")
    (:li "A good, simple project. ~130 LoC excluding whitespace, comments"))
   (:br) (:br)
   (:h3 :align "center" "And now... SOME CODE!")
   (:p :align "center" "Enter "
       (:a :href "http://github.com/redline6561/romreader"
           (:b "romreader")) " ..."))

  (:article
   (:h3 "Tada! And we're all still alive...")
   (:p "Any questions? Feel like walking through parse-header? Feel like "
       (:span :class "red" "disassembling") " it?"))

  (:article
   (:h3 "A few other hacks...")
   (:ul
    (:li (:a :href "http://github.com/redline6561/cl-6502" "cl-6502")
         ": Current project: 6502 emulator in lisp"
         (:br) "(was burned out last month, need to pick it back up)")
    (:li (:a :href "http://github.com/redline6561/cl-scrobbler" "cl-scrobbler")
         ": a library for scrobbling to last.fm."
         (:br) "boring REST with cute (hideous?) macrology")
    (:li (:a :href "http://github.com/redline6561/paktahn" "paktahn")
         ": An AUR helper (pkg-mgmt tool) for archlinux")
    (:li (:a :href "http://github.com/redline6561/clockwork" "clockwork")
         ": a simple email+sms reminder web app"
         (:br) "made with weblocks (also a blog series)")
    (:li (:a :href "http://github.com/redline6561/coleslaw" "coleslaw")
         ": lisp blogware (needs work)")
    (:li (:a :href "http://github.com/redline6561/cl-opencv" "cl-opencv")
         ": bindings to Intel's computer vision lib")
    (:li (:a :href "http://github.com/redline6561/trivial-raw-io" "trivial-raw-io")
         ": raw serial/terminal I/O (termios) for unices")))

  (:article
   (:h1 :align "center" "Q & A")
   (:p "Ask questions, berate me, challenge me, demand to see code, etc")
   (:p (:a :href "http://github.com/redline6561/slideware/blob/master/talks/cl-mft.lisp" "Slides Source")))

  (:article
   (:h3 "More resources for those interested...")
   (:p
    (:ul
     (:li "Friendly coworkers!")
     (:li "Excellent books - " (:a :href "http://gigamonkeys.com/book/" "PCL") ", "
          (:a :href "http://www.cs.cmu.edu/Groups/AI/html/cltl/cltl2.html" "CLtL") ", and "
          (:a :href "http://www.lispworks.com/documentation/HyperSpec/Front/index.htm" "the HyperSpec") "!")
     (:li "Excellent implentations: " (:a :href "http://ccl.clozure.com/" "Clozure CL") ", "
          (:a :href "http://www.sbcl.org/" "SBCL") ", and "
          (:a :href "http://www.clisp.org/" "clisp"))
     (:li "Lovely package manager - Zach Beane's " (:a :href "http://quicklisp.org/" "Quicklisp"))
     (:li "Great folks in freenode's #lisp. Just don't ask why you should learn it!")
     (:li "Insane editor integration - SLIME for Emacs, Slimv for Vim.")))))
