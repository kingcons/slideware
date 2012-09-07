(in-package :slideware)

(defslides (:title "CMGd LnL - Wanting Types, Demanding Mirrors"
            :path "/Users/bsbutler/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

    (:article
     (:h1 "Wanting Types," (:br) "Demanding Mirrors")
     (:p "Brit Butler" (:br) "2012-09-07")
     (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:div :align :center (:img :src "wtdm/hickey.jpg"))
   (:ul :align :center
        (:li (:a :href "http://www.infoq.com/presentations/Are-We-There-Yet-Rich-Hickey" "Are We There Yet?"))
        (:li (:a :href "http://www.infoq.com/presentations/Simple-Made-Easy" "Simple Made Easy"))))

  (:article
   (:h3 "Death by Complecting")
   (:p "complect - " (:br) "To join by weaving or twining together; interweave.")
   (:br)
   (:p "My " (:a :href "http://redlinernotes.com/docs/talks/opa.html#33" "last talk")
       " left me thinking about the war between" (:br) (:span :class :red " Static ")
       "and" (:span :class :blue " Dynamic ") "languages.")
   (:p "Also that there have been multiple "
       (:a :href "http://technomancy.us/161" "successful models") " for building software.")
   (:br)
   (:p "Two startling personal conclusions:")
   (:ul
    (:li "The war is about Reflective Systems, not Types!")
    (:li "More controversially, the Unix model is " (:b "WRONG") " for language implementations."))
   (:br)
   (:p "But let's take a brief detour to look at programming today..."))

  (:article
   (:h3 "On 'Best Practices'")
   (:br)
   (:img :src "wtdm/deploy.png")
   (:p "Several times this year, Github has done 100+ deploys/day.")
   (:p "What's a web service without continuous deployment?"))

  (:article
   (:h3 "Greenspunning Reflection")
   (:ul
    (:li "Kernel Examples:"
         (:ul
          (:li (:a :href "http://en.wikipedia.org/wiki/Ksplice" "ksplice")
               " - Load security updates without rebooting.")
          (:li (:a :href "http://en.wikipedia.org/wiki/SystemTap" "SystemTap") "/"
               (:a :href "http://en.wikipedia.org/wiki/DTrace" "DTrace")
               " - Dynamic Tracing. Took 4 years!")))
    (:li "Userland Examples:"
         (:ul
          (:li (:a :href "http://www.xmonad.org/" "xmonad")
               " - Great software. But plugins involved a "
               (:a :href "http://code.haskell.org/~dons/papers/thesis/dons-phd-thesis.pdf"
                   "thesis") "!"))))
   (:p "Other interesting papers...")
   (:ul
    (:li (:a :href "http://lambda-the-ultimate.org/node/219" "Types and Reflection") (:br) "see: "
         (:a :href "http://lambda-the-ultimate.org/node/1169#comment-12699" "related discussion"))
    (:li (:a :href "http://www.lfcs.inf.ed.ac.uk/reports/97/ECS-LFCS-97-378/ECS-LFCS-97-378.pdf.gz"
             "Dynamic ML without Dynamic Types"))))

  (:article
   (:h1 "Back to the Runtime Wars...")
   (:br)
   (:p (:i "Pascal is for building pyramids - imposing, breathtaking, static structures built by armies pushing heavy blocks into place. Lisp is for building organisms...") (:br)
       " - Alan Perlis"))

  (:article
   (:h3 "On Dreams")
   (:ul
    (:li "The Static Dream"
         (:ul
          (:li "A compiler pronounces your program correct by construction.")
          (:li "Many classes of errors impossible.")
          (:li "Semantics assured provided no bugs in: Hardware, OS, Compiler")))
    (:li "The Dynamic Dream"
         (:ul
          (:li "The program is a living thing.")
          (:li "I can take it apart or observe it during execution.")
          (:li "I can decide to change it during execution.")))))

  (:article
   (:h3 "On Runtimes and Tradeoffs")
   (:p "What it takes to do reflection " (:b "*right*") ":")
   (:ul
    (:li "Compiler/Debugger/Inspector always available.")
    (:br)
    (:li "Implies runtime type info even for statically typed programs! No more "
         (:a :href "http://en.wikipedia.org/wiki/Type_erasure" "Type Erasure") "!")
    (:br)
    (:li "Implies " (:a :href "http://stackoverflow.com/questions/11074528/how-to-reduce-the-size-of-a-clozure-common-lisp-executable"
                        "increase in space costs") "." (:br)
         "- Interesting analog to Immutable Data Structures here.")
    (:br)
    (:li (:a :href "http://nelsonmorris.net/2012/09/06/breaking-lazybot-out-of-clojail.html"
             "Hard to sandbox") " highly reflective systems.")
    (:br)
    (:li "Easy inspection a nightmare for proprietary software.")))

  (:article
   (:h3 "Sic Transit Gloria")
   (:br)
   (:ul
    (:li "Lisp Machines!"
         (:ul
          (:li (:a :href "http://redlinernotes.com/video/lmfs.mov"
                   "Filesystem hacks"))
          (:li (:a :href "http://redlinernotes.com/video/cdebug.mov"
                   "C interop"))))
    (:li "Tektronix adds color...")
    (:li "Serializing debuggers..."
         (:ul
          (:li (:a :href "http://marianopeck.wordpress.com/2012/01/19/moving-contexts-and-debuggers-between-images-with-fuel/"
                   "With Pharo..."))
          (:li (:a :href "http://www.storytotell.org/essays/74-response.html"
                   "And other 70s dreams..."))))
    (:li "Isn't this "
         (:a :href "wtdm/hydra.jpg" "what") " "
         (:a :href "wtdm/virus.jpg" "we") " "
         (:a :href "wtdm/thedream.jpg" "dreamed") " "
         (:a :href "wtdm/gibsons.jpg" "of") "?")))

  (:article
   (:h3 (:a :href "http://blog.redlinernotes.com/posts/A-Fun-Maybe-Useful-Exercise....html"
            "How did we get here?"))
   (:p "A few possible causes...")
   (:ul
    (:li "Backwards compatability/outside world") (:br)
    (:li (:a :href "http://danweinreb.org/blog/why-did-symbolics-fail" "Price!")
         " Custom hardware couldn't leverage economies of scale.") (:br)
    (:li "Attempts to switch *AWAY* from textual mediums for code") (:br)
    (:li (:a :href "http://news.ycombinator.com/item?id=80662" "Too hard") " for average programmers")))

  (:article
   (:h3 "Today's Dynamism Kings")
   (:ul
    (:li "The Browser - Javascript is "
         (:a :href "http://wingolog.org/pub/qc-2012-js-slides.pdf" "more dynamic")
         " than Scheme!")
    (:li "Emacs - The Last Lisp Machine. "
         (:a :href "http://emacs.wordpress.com/2007/01/14/the-ghost-in-the-lisp-machine/"
             "Duh."))
    (:li "Surviving Dynlangs"
         (:ul
          (:li (:a :href "http://en.wikipedia.org/wiki/Common_Lisp#Freely_redistributable_implementations" "Common Lisps"))
          (:li (:a :href "http://opendylan.org/" "OpenDylan"))
          (:li (:a :href "http://www.pharo-project.org/home" "Pharo Smalltalk"))
          (:li (:a :href "http://erlang.org/" "Erlang"))))
    (:li "New Dynlangs"
         (:ul
          (:li (:a :href "http://factorcode.org/" "Factor"))
          (:li (:a :href "http://iolanguage.com/" "Io"))))))

  (:article
   (:h3 "Where to next?")
   (:ul
    (:li (:a :href "http://awelonblue.wordpress.com/2012/08/01/natural-programming-language/"
             "Natural Programming Languages") "!"
             (:ul
              (:li "We will need to integrate AI for this.")
              (:li "David Barbour seems to be "
                   (:a :href "http://awelonblue.wordpress.com/2012/09/04/rdp-progress-report/"
                       "on the right track") ".")))
    (:br)
    (:li (:a :href "http://dynamicaspects.org/blog/2012/05/15/back-to-the-future/"
             "Self-explaining Computation") "!")
    (:br) (:br)
    (:li "Higher-level languages on the "
         (:a :href "http://www.openmirage.org/" "bare") " "
         (:a :href "http://erlangonxen.org/" "metal") "!")
    (:br) (:br)
    (:li "Or even just "(:a :href "http://www.chris-granger.com/2012/04/12/light-table---a-new-ide-concept/" "better")
         " " (:a :href "http://www.youtube.com/watch?v=bUR_eUVcABg" "environments") ".")))

  (:article
   (:h3 "Conclusions")
   (:br)
   (:ul
    (:li "Dynamic systems died due to "
         (:a :href "http://www.yosefk.com/blog/what-worse-is-better-vs-the-right-thing-is-really-about.html"
             "evolutionary pressures") ".")
    (:br) (:br)
    (:li "Many of those pressures are " (:a :href "http://xkcd.com/676/" "likely gone")
         ". Let's try again!")
    (:br) (:br)
    (:li "There are " (:a :href "http://lambda-the-ultimate.org/node/852" "advantages")
         " to language-level support for dynamism.")
    (:br) (:br)
    (:li "Statically and Dynamically Typed programs can benefit!")))

  (:article
   (:h3 "Q & A, or...")
   (:br) (:img :src "wtdm/comeatme.jpg") (:br) (:br)
   (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/wtdm.lisp" "Slides Source"))))

#|

Preliminaries: So this is my last CMG talk. I couldn't have imagined working with a group of smarter or more entertaining folks for the last year. I am privileged and proud to have spent my first year as a Developer here and will miss you all. But don't worry, I've learned your lessons well. I'll continue to give LNLs and post them online...just behind a paywall...because you have to look to the future as well as the past. ;)

{Title}
Wanting Types, Demanding Mirrors. Could also be called "Your language isn't dynamic enough".

{Clojure}
At my next job, I'll be writing Clojure, a Lisp-family language that runs on the JVM. One of the best things about Clojure is this guy: Rich Hickey [img:State-youre-doing-it-wrong.jpg]. Hickey is a brilliant language designer and programmer-philosopher and has given some fantastic talks on his ideas about language design, functional programming, and concurrency. [The Value of Values?, Are We There Yet?] He's particularly good at finding language issues we've lumped together that are actually orthogonal...and he found an archaic word for failing to separate concerns, to complect.

{Death by Complecting}
We have *thoroughly* complected dynamic and static in relation to languages. My [last talk] left me thinking about the divide between Static and Dynamic languages and I came up with two interesting conclusions:
- The war is about reflective systems, not types.
- The unix model is wrong for programming langs.
But let's step back and look at modern programming for a minute...

{On 'Best Practices'}
This is a graph of github deploys in 2012. As you can see, they've done over 100 deploys a day several times already. And it takes a good bit of infrastructure to do, doesn't it? You need at least 2 servers, a load balancer and a deploy script.

{Greenspunning Reflection}
WE ARE GREENSPUNNING REFLECTION INTO OUR SYSTEMS!
The kernel added a reflection system called ksplice for uptime purposes. It hasn't taken off tremendously, presumably because people use load balancers and more hardware. SystemTap was a DTrace clone that took 4 years to upstream. Dynamically Extension of Haskell programs was the xmonad author's PhD dissertation. And there's other work on this. So what's my point?

{Back to the Runtime Wars...}
We're not arguing about types. You like types, I like types. Every programmer is happy to have assurances that their program behaves as intended. But Perlis nailed it. This is about the difference between people that think of programs as architecture or as agents, as structures or as spirits.

{My Hopes}
The static dream is to be able to have a program (i.e. a compiler or theorem-prover) pronounce your program correct at compile-time and we have made measurable progress towards that dream even if the tools aren't intuitive to the average joe. But pushing the state of the art is always about moving past average. We should (and do) aim higher. The dynamic dream is being able to explore a program and change its behavior while it runs. I'm simply more interested in one of these dreams than the other. But they're both useful to all of us. So what are the tradeoffs?

{On Runtimes}
What it takes to do reflection right:
compiler/debugger/inspector always available
definite space costs in RAM and "size to ship", interesting analog to Immutable DS
Security concerns/hard to do with strong type systems.

{Really now?}
Lisp Machine FS
Lisp Machine C interop
Tektronix adds color
Serializing debuggers/stack traces
The hacker movie dream.

{How did we get here?}
Possible causes: [redlinernotes/30 years]
* No backwards compatibility/walled garden approach
* Incompatible interfaces re:version control, editing
* Reflective, Open systems too powerful/hard for average programmers
* Hardware+Software prices
* Security(Runtime+Sources) + Space(Disk+RAM) concerns

{Today's Dynamism Kings}
Browser: JS is more dynamic than Scheme!
Emacs: The last Lisp Machine.
Pharo Smalltalk/Common Lisps/Io/Factor/OpenDylan

{Where to next?}
Naturalistic Programming Languages!
Infer my ideas. Help me think!
-- We will have to integrate AI for this...
-- David Barbour seems to be on the right track. [RDP]

{Conclusions}
- Dynamic Systems died due to evolutionary pressures in the market.
- Many of those pressures are likely gone. Why not try again?
- There are clear advantages to language-level support for dynamism.
- Statically and Dynamically Typed programs stand to benefit!

|#
