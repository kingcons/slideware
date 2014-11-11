#|

I really want 3 themes:
* There Is No Magic
-- Programming Languages are just another program
-- These slides are written in lisp/parenscript
-- I wrote an emulator that does 6502 assembly to lisp
-- It's interpreters all the way down

* We Are Archaeologists/Programs Don't Compose
-- You will be working on legacy software more often than building from scratch.
-- This is both blessing and curse.
---- Least you don't have to write the whole thing from scratch.
---- On the other hand, more often than we'd like have to understand assumptions.

* An Outsider's View of Javascript? Or something else?
-- Things to know about a programming language. What times can things happen?
---- compile time, load time, execute time, etc.
-- What is the control flow like?
---- Very standard straight flow? Vs callbacks/asynchrony, Vs Constraint Propagation?
-- What about the constant wheel reinvention?
---- I dunno. Fuck.

|#

(in-package :slideware)

(defun img (name)
  "Resolve img paths to local names until deploy time."
  (format nil "/home/redline/quicklisp/local-projects/slideware/talks/~a" name))

(defslides (:title "Frontend Guest Lecture"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "file:///home/redline/quicklisp/local-projects/slideware/lib/html5slides/slides.js"
;            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "Know Your History")
   (:br)
   (:p "Brit Butler" (:br) "2014/11/12"))

  (:article
   (:h1 :align :center "Disclaimer")
   (:br)
   (:p :align :center "This talk will be a little different..."))

  (:article
   (:br)
   (:h3 "3 Core Points and an overarching theme...")
   (:br)
   (:p :align :center (:b "Know Your Damn History"))
   (:br)
   (:ul
    (:li "Whence the Web?")
    (:br)
    (:li "We're Programmer Archaeologists")
    (:br)
    (:li "There Is No Magic")))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:br)
   (:br)
   (:p
    (:img :src (img "igl/eich.jpg")
          ;; Inline CSS? I'm a monster!
          :style "margin-right: 150px;")
    (:img :src (img "igl/netscape.png"))))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:p "Let's go back to September '95...")
   (:br)
   (:br)
   (:p "Search engines aren't a thing.")
   (:p "Geocities and AOL still exist.")
   (:p "SSL was invented that February.")
   (:p "No browsers support CSS (1.0) yet.")
   (:p "Web pages can't do anything interesting yet."))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:p "Netscape asks Brendan Eich to write Javascript. Why?")
   (:br)
   (:p "Make webpages suck less by adding dynamic behavior.")
   (:br)
   (:p "Current alternative was Java applets. Blech.")
   (:br)
   (:p "Brendan writes the language and its called 'Livescript'.")
   (:br)
   (:p "Marketing christens it 'Javascript' later. Demands syntax changes."))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:h1 "What might Brendan have said about JS in 2008?"))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:blockquote "As you may know, I wrote javascript in "
                (:span :class :green "ten days") "."
                (:br) " ... " (:br)
                "The part that is good is "
                (:span :class :blue "not original") ", "
                "and the part that is original is "
                (:span :class :red "not good") ".")
   (:p :align :right "- 2008, Brendan Eich, " (:a :href "http://brendaneich.com/2008/04/popularity/" "Popularity"))
   (:blockquote "Engine prototype took ten days in May."
                (:br) " ... " (:br)
                "The rest of the year was "
                (:span :class :blue "browser integration, mainly ")
                "what became known as “DOM level 0″... "
                (:br)
                "Sentence fragments here show my "
                (:span :class :red "PTSD") " from that sprint. :-/")
   (:p :align :right "- 2011, Brendan Eich, " (:a :href "http://brendaneich.com/2011/06/new-javascript-engine-module-owner/" "New JS Engine Module Owner")))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:h1 :align :center "What can we take away from that?"))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:p "Technical Debt is" (:em (:b " very ")) "real.")
   (:p "We all live with it.")
   (:ul
    (:li "Stuff gets pushed out the door for business reasons."
         (:br) "You're stuck with that until people "
         (:b "stop using it") ".")
    (:br)
    (:li "jQuery 1.0 was released in 2006. Gmail was out in 2004.")
    (:br)
    (:li "Promises are just now being added to javascript.")
    (:br)
    (:li "Modules still aren't a solved problem." (:br)
         "See: "
         (:a :href "https://scott.mn/2014/03/03/javascript_modules/"
             "browserify, requirejs, google closure, es6 modules"))))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:p "Requirements Will Change")
   (:p "'Can you make it look more like Java?'")
   (:p "How do we control the damage?")
   (:ul
    (:li "What can be put off until the next sprint?")
    (:br)
    (:li "TODO")))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:p "The Best Tech Doesn't Matter")
   (:ul
    (:li "Social forces dominate technology choice.")
    (:br)
    (:li "What you build with your tools matters much more than the tools themselves.")
    (:br)
    (:li "There is a lot of cool tech that is forgotten or died out.")
    (:br)
    (:li "Even if you can't use it, you can learn from it."
         (:br) "See: "
         (:a :href "http://www.lively-kernel.org/" "The Lively Kernel") ", "
         (:a :href "http://www.youtube.com/watch?v=AnzMEdC2FDk" "Logic Programming") ", etc")))

  (:article
   (:h3 "Whence the Web?")
   (:br)
   (:p "TODO"))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br)
   (:br)
   (:br)
   (:div :align :center (:img :src (img "igl/memory.jpg"))))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br)
   (:br)
   (:p "Wait until you can look at code you wrote 6 months ago.")
   (:br)
   (:div :align :center (:img :src (img "opa/cxx.gif"))))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br)
   (:p "You will be working on old code more often than writing new code.")
   (:br)
   (:p "This is both blessing and curse.")
   (:br)
   (:p "Some days bugfixing is really nice.")
   (:br)
   (:p "But often, we have to understand the assumptions embedded in code."))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br) (:br) (:br) (:br) (:br)
   (:p :align :center
       (:b "Why do changes to one piece of code break things elsewhere?")))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br) (:br)
   (:br) (:br)
   (:h3 "Every program is part of some other program and rarely fits.")
   (:br) (:p :align :center "-- Alan Perlis, Epigrams on Programming"))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br) (:br)
   (:img :align :left :style "height: 80%;" :src (img "trp/sicp.jpg"))
   (:br) (:br)
   (:p :align :right
       "Building larger programs out of a group of small, understandable "
       "pieces is what things like recursion and functional programming "
       "are built for.")
   (:br)
   (:p :align :right (:b "The world isn't like that anymore."))
   (:br)
   (:p :align :right
       (:a :href "http://cemerick.com/2009/03/24/why-mit-now-uses-python-instead-of-scheme-for-its-undergraduate-cs-program/"
           " - Gerald Sussman, 2009")))

  (:article
   (:h3 "We're Programmer Archaeologists")
   (:br)
   (:p "TODO"))

  (:article
   (:h3 "There Is No Magic"))
)
