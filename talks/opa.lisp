(in-package :slideware)

(defslides (:title "CMGd LnL - On Programmer Archaeology"
            :path "/Users/bsbutler/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "On Programmer Archaeology")
   (:p "Brit Butler" (:br) "2012-08-06")
   (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:br)
   (:h3 :align :center "I've become known by the wrong name..." (:br)
        " and it's my own fault."))

  (:article
   (:h1 "Just a lisper?"))

  (:article
   (:h1 :align :center "Ideas > Tools")
   (:br) (:br) (:br) (:br) (:br)
   (:p :align :center "\"" (:em "Tools are only worthwhile in the service of ideas.") "\""))

  (:article
   (:h3 "A Programmer Archaeologist")
   (:div
    (:a :href "http://lambda-the-ultimate.org/node/4424"
        (:img :align :left :src "opa/vinge.jpeg"))
    (:p :align :right "\"Over thousands of years, the machine memories have been " (:b "filled with programs that can help")
        ". But like Brent says, many of those programs are " (:span :class :red "lies") ", all of them are " (:span :class :red "buggy")
        ", and only the top-level ones are " (:span :class :blue "precisely appropriate for our needs") ".\"")
    (:br) (:p :align :right "Sound familiar?")))

  (:article
   (:h3 "The Inherent Complexity in Software")
   (:p "At 50 lines/page, Storyville is 185k or " (:b "*10*") " 370-page books.")
   (:br) (:br)
   (:div :align :center (:img :src "opa/cxx.gif"))
   (:br)
   (:p "No one knows how to solve it. Especially me." (:br)
       "Though historically we've tried " (:a :href "http://old.storytotell.org/blog/2009/03/06/hiding-complexity.html" "a number of things") " ..."))

  (:article
   (:br) (:br) (:br) (:br) (:br) (:br)
   (:h3 "Every program is part of some other program and rarely fits.")
   (:br) (:p :align :center "-- Alan Perlis, Epigrams on Programming"))

  (:article
   (:h3 (:em "My definition of Programmer Archaeology"))
   (:h1 :align :center "Know Your Damn History"))

  (:article
   (:h3 "Let's mine history! ... at JSConf?")
   (:ul
    (:li "Dan Ingalls - " (:a :href "http://blip.tv/jsconf/jsconf2012-daniel-henry-holmes-ingalls-jr-6106503" "The Lively Kernel")
         (:br) (:em "'Well, this is how it should work, right?'"))
    (:li "David Nolen - " (:a :href "http://blip.tv/jsconf/jsconf2012-david-nolen-6141386" "Logic Programming and Unification")))
   (:br)
   (:p "Another example: "(:a :href "http://twitter.com/bigthingist" "@bigthingist")
       " used mark+sweep GC algos to manage retail fashion site.")
   (:br) (:br)
   (:p (:em "In many ways, this is equivalent to knowing and having an interest in CS...but the lens of archaeology is more fun. :)")))

  (:article
   (:h3 "Revenge of the Smalltalkers?")
   (:p "Why didn't old tech win if it was so great?") (:br)
   (:p "Alan Kay - " (:a :href "http://lambda-the-ultimate.org/node/4325" "Programming and Scaling talk") ", "
       (:a :href "http://www.drdobbs.com/architecture-and-design/interview-with-alan-kay/240003442" "Dr. Dobbs interview") ", etc")
   (:p "\"...But nowadays people are reinventing the flat tire.\"")
   (:p "A broken record. Crank or genius? Why keep saying it?")
   (:p "Lisp and Smalltalk failed for a reason, presumably.")
   (:br) (:br)
   (:p "Alright, proof is in the pudding. What's he building?"))

  (:article
   (:h3 "Steps for the Reinvention of Computing, VPRI")
   (:p "5 year project funded by the NSF.")
   (:p "First thought: What a pretentious jerk!")
   (:p "Second thought: Well...what are their results?")
   (:p (:b "An entire OS+Office Suite in 20,000 lines of code. W.T.F."))
   (:br) (:br) (:br) (:br)
   (:p "Even if it isn't backwards compatible with /anything/ ... ... HOW?!?"))

  (:article
   (:h3 "Metaprogramming, the Compiler as a Service pattern")
   (:p (:b (:a :href "http://www.vpri.org/pdf/tr2007003_ometa.pdf" "OMETA"))
       " - Technology from the 60s!!! " (:br) "[extended with Inheritance and PEGs]" (:br)
       "Parsing as a weapon: Compiler as parser series in lieu of IR.")
   (:ul (:em "Used it to write:")
    (:li "TCP/IP in 200 lines. Just parse "
         (:a :href "opa/parserfc.jpg" "the ASCII art") " in the RFC!")
    (:li "A complete " (:a :href "opa/nile.jpg" "2.5D graphics stack")
         " in " (:a :href "http://www.vpri.org/pdf/tr2011004_steps11.pdf" "500 lines") "."))
   (:br)
   (:p "See appendices of " (:a :href "http://www.vpri.org/pdf/tr2007008_steps.pdf"
                                "2007 STEPS report") " for further examples.")
   (:p "[Like OMETA->JS in 75 lines and Prolog->JS in 100 lines.]"))

  (:article
   (:h3 (:a :href "http://blip.tv/jsconf/jsconf-us-2012-jacob-thornton-br%C3%BBlons-les-mus%C3%A9es-6093851" "Burn the Libraries"))
   (:br) (:br)
   (:p (:b "'We should burn all libraries and allow to remain only that which everyone knows by heart' - Hugo Ball"))
   (:p "Interview question: 'Write as much of jQuery as possible in 45 minutes from scratch.'")
   (:br) (:br)
   (:p "The antithesis of using past solutions."))

  (:article
   (:h3 "Why not?")
   (:ul
    (:li (:a :href "http://twitter.com/fat" "@fat")
         " noticed that people don't know jQuery by heart. If we have to rewrite, we're all screwed.")
    (:li "Programming libraries are functional. They DO stuff in the real world. You can't execute books.")
    (:li "We need code as literature:"
         (:ul
          (:li (:a :href "https://github.com/blog/1103-ten-years-of-farbrausch-productions-on-github" "Insane demoscene assembly hacks"))
          (:li (:a :href "http://os-blog.com/xv6-unix-v6-ported-to-ansi-c-x86/" "Unix VI in 8000 lines of ANSI C"))
          (:li (:a :href "http://fabiensanglard.net/quake3/network.php" "Blog audits of clever network game architectures"))
          (:li (:a :href "http://news.ycombinator.com/item?id=3717949" "Napster algorithms"))))))

  (:article
   (:h3 "What's the lesson?")
   (:br)
   (:p "Tests define 'satisfactory code'. By using them, we are less trapped in the past.")
   (:p "My " (:a :href "http://redlinernotes.com/docs/talks/wosw.html" "Open Source Talk") " "
       "makes it clear how this would help promote competition and diversity.")
   (:p "MustacheJS has a specs repo in JSON.")
   (:br) (:br)
   (:p "... but it's not " (:em "quite") " clear how to apply this to the 6502."
      (:br) "And it wasn't my goal to. :)"))

  (:article
   (:h3 "Enter cl-6502")
   (:br) (:br)
   (:a :href "http://media.ccc.de/browse/congress/2010/27c3-4159-en-reverse_engineering_mos_6502.html"
       (:img :align :center :src "opa/6502.jpeg"))
   (:br) (:br)
   (:p "Let's emulate one.....with Lisp!"))

  (:article
   (:h1 :align :center "BUT WHY?!?"))

  (:article
   (:h3 "Goals: Definition")
   (:ul
    (:li "Extensible - Easy to arbitrarily toggle logging of reads/writes to memory, or branching opcodes, or...")
    (:br)
    (:li "Concise - NOT CODE GOLF. Dense but elegant. The minimal executable spec.")
    (:br)
    (:li "Performant - Able to comfortably run at least 2 emulated CPUs/core on modern hardware.")
    (:br)
    (:li "Correct - Implements the 6502 faithfully enough to run Mega Man 2, Super Mario Bros 3, etc.")))

  (:article
   (:h3 "Goals: Status")
   (:ul
    (:b "Extensible, Concise? Check.")
    (:li "Extensible - All opcodes are methods. CLOS makes arbitrary wrappers (think decorators or defadvice) trivial.")
    (:li "Concise -  Py65: " (:span :class :red "2091 SLOC") ". cl-6502: " (:span :class :green "879 SLOC") ".") (:br)
    (:b "Correct, Performant? Verdict still out, outlook positive.")
    (:li "Correct - Py65: " (:span :class :red "~8000 SLOC") ". cl-6502: " (:span :class :green "~200 SLOC") "." (:br)
         "- Lots of manual testing, no large programs.")
    (:li "Performant - ZERO profiling, ZERO optimization." (:br)
         "Currently runs 2x the speed of the NES on a single core.")
   (:p (:em "* - All SLOC figures courtesy of sloccount."))))

  (:article
   (:h3 "Why Lisp? (or, a few good points)")
   (:ul
    (:li "My favorite tool. Never found a better way to stay in flow than "
         (:a :href "http://www.gnu.org/software/emacs/" "Emacs") "+"
         (:a :href "http://www.sbcl.org" "SBCL") "+"
         (:a :href "http://common-lisp.net/project/slime/" "SLIME") ".")
    (:li (:a :href "http://lists.warhead.org.uk/pipermail/iwe/2005-July/000130.html" "Universal syntax")
         " is still (for now) the one true path to a metaprogramming culture." (:br))
    (:li "It's truly agnostic which enabled me to grow with the language. Procedural, OO, FP, Logic, Dataflow, whatever!")
    (:li "It's the fucking playdoh of PLs. Mold the language, mold the program.")))

  (:article
   (:h3 "A Culture of Metaprogramming")
   (:p "Still fairly unique to Lisp culturally...because metaprogramming and source transformation is usually "
       (:span :class :red "INSANE AND FROUGHT WITH DANGER."))
   (:p "Non-paren alternatives in Dynamic and Static langs exist: "
       (:b "Template Haskell, Camlp4, Dylan, Factor, Io"))
   (:ul (:em "It is the language's responsibility to give you:")
        (:li "More structure than strings.")
        (:li "Distinct compilation phases."))
   (:p "Thus far, no parens == no culture of metaprogramming.")
   (:p "Fear not, I will explain macro usage carefully."))

  (:article
   (:h3 "On emulators, portability, and methods of emulation")
   (:p "It's basically a VM, duh. Simulate hardware and run a program inside the simulated hardware.")
   (:p "Portability thinking seems to be: Write it in C. After all, C compilers are ported everywhere.")
   (:ul
    (:li "Interpreted")
    (:li "Dynamic Recompilation")
    (:li "Static Recompilation"))
   (:br)
   (:p "I stayed with interpretation for simplicity's sake. Crawl, then walk. "
       "For a great overview, see " (:a :href "http://personals.ac.upc.edu/vmoya/docs/emuprog.pdf" "this paper") "."))

  (:article
   (:h3 "Enter the 6502")
   (:ul (:b "What comprises this thing? Data")
        (:li "Accumulator, X, Y - general purpose 8-bit registers")
        (:li "Program Counter - 16-bit register allowing for 64k addressable memory")
        (:li "Stack Pointer, Status Register - special purpose 8-bit registers"))
   (:ul (:b "What runs on this thing? Code")
        (:li "56 \"opcodes\" (read: functions/primitives)")
        (:li "155 \"instructions\" (read: opcode variants for different addressing modes)")))

  (:article
   (:h3 "Addressing Modes, or Pointers redux")
   (:br)
   (:p "None of this \"Declare a variable\" nonsense.")
   (:p "6502 has 13 " (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/cpu.lisp#L182" "addressing modes")
       ". No instruction supports every mode. Indirect mode only used by one instruction.")
   (:ul (:em "Arg == Byte")
        (:li "No args - Implied, Accumulator")
        (:li "One arg - Immediate, Zero-page, Zero-page{x,y}, Indirect{x,y}, Relative")
        (:li "Two args - Absolute, Absolute{x,y}, Indirect"))
   (:p "Some opcodes use address, some use byte at address."))

  (:article
   (:h3 "Get ready to poop your pampers")
   (:br) (:br) (:br) (:br)
   (:p (:b "The following code has been rated GH-MA*") (:br)
       "* - [Github Mature]")
   (:ul
    (:li "For gratuitous use of parentheses.")
    (:li "And screwing around with "
         (:a :href "http://fare.livejournal.com/146698.html" "EVAL-WHEN")
         " with its weak " (:a :href "http://axisofeval.blogspot.com/2010/07/whats-phase-separation-and-when-do-you.html" "phase separation") ".")))

  (:article
   (:h3 "An executable spec, or Enter defopcode")
   (:p (:img :src "opa/cpu.lisp.jpg"))
   (:p "Remember when I said " (:em "I'll " (:a :href "http://paste.lisp.org/display/130923" "Explain") "?")))

  (:article
   (:h3 "A Defopcode Aside")
   (:ul
    (:li "A simple tweak to defopcode and opcodes return compiled closures instead of executing directly.")
    (:li "Not that it would give a big speedup.")
    (:li "Too much learning+engineering for a JIT compiler right now.")
    (:li "Fast interpreters are " (:a :href "http://nominolo.blogspot.co.uk/2012/07/implementing-fast-interpreters_31.html" "possible") "!")))

  (:article
   (:h3 "On dispatch strategies")
   (:p "Which method goes with this byte in the array?")
   (:ul
    (:li "Opcodes take a CPU, figure out their addressing mode, modify its state and return it.")
    (:li "Store an array of methods, indexed by opcode. Opcode takes no args. `find-method` makes this annoying.")
    (:li "Have a giant switch/case statement. Totally unacceptable. What is this, C? :)"))
   (:p (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/utils.lisp"
           "Wound up doing dispatch via opcodes just like a switch/case interpreter..."))
   (:p "But using Lisp's EQL-specialized methods! " (:span :class :green (:b "\\o/"))))

  (:article
   (:h3 "On Assembly and Disassembly")
   (:p "Once you have an opcodes array full of metadata, disassembly is "
       (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/disassemble.lisp" "*trivial*") ".")
   (:br) (:br)
   (:p (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/assemble.lisp" "Assembly")
       " is more involved even though I was lazy and didn't write a proper parser, just regexes. Still not so bad.")
   (:p "2-pass assembler. First sets labels, second resolves uses.")
   (:p "Supports labels, constants, comments. Here's a "
       (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/toys.lisp" "small example") "."))

  (:article
   (:h3 "Interesting hurdles")
   (:br) (:br)
   (:p (:b "Decimal mode") " - Dodged that " (:a :href "https://github.com/mnaberez/py65/blob/master/src/py65/devices/mpu6502.py#L295" "bullet") ". Not in the NES! ;)")
   (:br) (:br)
   (:p (:b "Status bits") " - Sort of ad-hoc and messy. "
       (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/cpu.lisp#L139" "No defaults for you!"))
   (:br) (:br)
   (:p (:b "Relative addressing") " - Oh God, "
       (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/cpu.lisp#L269" "Oh God") "."))

  (:article
   (:h3 "Emulator hurdles")
   (:p "Truthfully, CPU emulation isn't so bad. Whole systems are what's complicated.")
   (:ul (:em "A few reasons...")
    (:li "Concurrency+Synchronization for performance reasons. Graphics card in one thread, everything else in another, overhead keeping them 'in step' with each other.")
    (:li "Documentation doesn't exist in many cases. Reversing may be necessary.")
    (:li "In the case of the NES, the memory map is ... "
         (:a :href "http://wiki.nesdev.com/w/index.php/CPU_memory_map" "kinda nuts") ".")
    (:li "...and a number of cartridges had "
         (:a :href "http://wiki.nesdev.com/w/index.php/Mapper" "custom hardware")
         ". SNES was even worse! :P")))

  (:article
   (:h3 "What's next?")
   (:ul
    (:li (:a :href "http://github.com/redline6561/famiclom" "famiclom") " - Emulate the rest of the NES")
    (:li (:a :href "http://github.com/redline6561/qeng-ho" "qeng-ho") " - Serve it via a REST API")
    ;         (:br) "- Where to split server/client for acceptable latency?"
    (:li "pham-nuwen - Make a nice frontend for it"))
   (:p (:b "Emulation as a Service!"))
   (:br)
   (:p "Maybe build crazy dev tools on top a la " (:a :href "http://www.youtube.com/watch?v=tjcvR5McmSg" "Frodo Redpill") ".")
   (:p "No promises! ;)"))

  (:article
   (:h3 "The Dichotomy at the Bottom")
   (:p "Biologists vs Logicians")
   (:p "Late-bound metaprogramming vs Static verification")
   (:br)
   (:ul
    (:li "Gerald Sussman, " (:a :href "http://groups.csail.mit.edu/mac/users/gjs/6.945/readings/robust-systems.pdf"
                                "Building Robust Systems: an essay"))
    (:li "Leslie Lamport, " (:a :href "http://research.microsoft.com/en-us/um/people/lamport/pubs/future-of-computing.pdf"
                                "The Future of Computing: Logic or Biology"))
    (:li "Jonathan Edwards, " (:a :href "http://alarmingdevelopment.org/?p=85#more-85" "Informality sans Mysticism"))))

  (:article
   (:h3 "On Abstraction")
   (:p "Civilization advances by extending the number of important operations which we can perform without thinking about them."
       (:br) (:em "- Alfred North Whitehead"))
   (:br) (:br) (:br)
   (:p "We are living now, not in the delicious intoxication induced by the early successes of science, but in a rather grisly morning-after, [where we have]... improved the means for achieving deteriorated ends."
       (:br) (:em "- Aldous Huxley")))

  (:article
   (:br) (:br) (:br) (:br) (:br)
   (:p :align :center (:b "There must be a middle place between abstraction and childishness where one can talk seriously about serious things.")
       (:br) (:em "Czeslaw Milosz, Second Space")))

  (:article
   (:h1 :align :center "Questions?")
   (:br) (:br)
   (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/opa.lisp" "Slides Source"))))

#|
On Programmer Archaeology

{The Wrong Name}
I've become known by the wrong name and it's my own fault.

{Just a lisper?}
I'm thought of as a lisper. I use lisp for all my personal projects and I've given two talks on it in the last year so it isn't hard to see why. But it's a mistake. In the past I've jokingly fashioned myself as a "programmer archaeologist". I even put it down as my title last August when I was hired but Bronosky insisted HR wouldn't like it. I'm bad at saying how cool programming's history is because I'm too focused on Lisp. But our history is much richer than that...because at the end of the day lisp is just a tool.

{Ideas > Tools}
Tools can be interesting but they are only worthwhile in the service of ideas. Even Common Lisp is "just a tool" and I'd rather talk about ideas than tools. So, today will involve some Common Lisp code but please remember that it's the ideas that matter and that I want to show you. Lisp is just the medium. So...this talk is about Programmer Archaeology but I didn't come up with that term.

{A Programmer Archaeologist}
I got the term from A Deepness in the Sky, an awesome scifi novel by Vernor Vinge. In it, programmer archaeology is a future profession. This quote captures it pretty aptly: "Over thousands of years, the machine memories have been filled with programs that can help. But like Brent says, many of those programs are lies, all of them are buggy, and only the top-level ones are precisely appropriate for our needs." Sounds familiar, right? It should because...

{The Irreducibility of Software Complexity}
Our storyville repo is 185k lines of code. NOT including whitespace and comments. That's 10 370-page books at 50 lines/pg! It seems pretty obvious then, that the biggest problem in modern programming is how massively complex it is to do useful things. No one knows how to compartmentalize that complexity and neither do I. We've tried hiding it a number of places over the years: the operating system, our languages and compilers, editors and tools. We still don't have it figured out yet. Anyway, the Vinge quote reminded me of this other quote...

{Code Spelunking is here today}
"Every program is part of some other program and rarely fits." - Alan Perlis, Epigrams on Programming
How beautiful and profound is that? It doesn't seem so futuristic though, does it? Because we deal with it everyday.

{My Definition}
Sometimes when I talk about programmer archaeology though I mean something totally different. Sometimes I mean "Know the fucking history!". Because we do very little that is novel and there is inspiration and sometimes answer keys in 30 year old CS papers.

{Let's mine history! ... at JSconf???}
I was really pleased to see a few recent examples of this at JSConf.
- Dan Ingalls wowed the shit out of everyone by showing basically a smalltalk in the browser and saying, "Well, this is how it should work, right?"
- David Nolen got into the Reasoned Schemer and is using Logic programming+unification algos at the NY Times!
Outside of that, my buddy @bigthingist used his knowledge of mark-sweep GC algos to help manage a fashion retail site.
A lot of this is knowing how to apply CS but calling it archaeology is more fun. Who doesn't want to be Indiana Jones?

{Revenge of the Smalltalkers?}
You may think this raises the question of why old tech didn't win if it's so great. Smalltalk and Alan Kay in particular are a really interesting case. Alan Kay was interviewed about the web recently in Dr. Dobbs and he's given great talks at HPIK, SRII, and other conferences. He often says, "these days we're not even reinventing the wheel, we're reinventing the flat tire" and I love that notion. But he's sort of a broken record. Like an academic Paul Graham and shit. "Lisp+startup/rebel shit=millions". Are they geniuses or cranks? Well, the proof is in the pudding, so what has Kay /built/ lately?

{STEPS}
There's this thing called the "Steps for the Reinvention of Computing" project at VPRI. Sounds audacious, right? You should read the damn paper. They wrote an entire Operating System and Office Suite in 20,000 lines of code flat. It's hard to even conceive of this and in some ways they cheat. It doesn't resemble a traditional operating system. It lacks a traditional browser. Still how? Well...with metaprogramming!

{Metaprogramming, or the "Compiler as a Service" pattern}
Their approach is centered on using OMETA, a compiler-writing language. OMETA is based on research dating from the 60s, namely META I+II updated with inheritance and PEG parsing. They then used OMETA to build custom languages for the problem domain. This allows for some really neat tricks, like parsing pictograms directly from the TCP/IP RFC and using a dataflow language to compile graphics algorithms straight from math to machine code. There are further examples in their report. Back to archaeology though.

{'Burn the Libraries'}
Ironically, the talk I most enjoyed from JSConf was by @fat and was called 'Burn the Libraries' which was centered around the following quote: 'We should burn all libraries and allow to remain only that which everyone knows by heart' - Hugo Ball. He came up with an interview question from that: 'Write as much of jQuery as possible in 45 minutes from scratch.' This is pretty much the antithesis of using past solutions.

{Why not?}
But it's not the best idea ever for a few reasons.
- @fat noticed that people don't know jQuery by heart. If we have to rewrite, we're all screwed.
- Programming libraries are functional. They DO stuff in the real world. You can't execute books.
- We need code as literature, things we'll never get around to:
--- https://github.com/blog/1103-ten-years-of-farbrausch-productions-on-github
--- http://os-blog.com/xv6-unix-v6-ported-to-ansi-c-x86/
--- http://fabiensanglard.net/quake3/network.php
--- http://news.ycombinator.com/item?id=3717949

{What's the lesson?}
So @fat's talk ended on a slightly different point. Tests that can run anywhere promote competition+diversity. Going back to my wosw talk may shed light on why this can help lead to better ecosystems and better software. Mustache did this by writing their specs in JSON. It's an interesting idea but only seems reasonable for 6502 with a given API, probably typed. How do you interpret the tests in a given language, right? I had other goals.

{Enter cl-6502}
So what is the 6502? It's the CPU that powered the Nintendo, Apple II, Commodore 64, etc. Due simply to the number of units shipped, it is a significant CPU, and really helped kick off the microcomputer boom in the 80s.

{BUT WHY?}
There were a few big drivers behind me doing this. One is that I simply never wrote in assembly in college and snuck by without doing much C or C++ either. Another is that I'm nostalgiac for the microcomputers of the 80s. There aren't many (if any) small systems these days and I think that's a real loss. You could give a kid a Commodore 64 or Apple II and they could eventually understand it soup to nuts. I also saw a phenomenal talk by Michael Steil on reverse engineering the 6502 which I highly encourage you to watch.

{Goals: Definition}
Extensible -- Easy to arbitrarily toggle logging of reads/writes to memory, or branching opcodes, or...
Concise -- NOT CODE GOLF. Dense but elegant. The minimal executable spec.
Performant -- Able to comfortably run at least 2 emulated CPUs/core on modern hardware.
Correct -- Implements the 6502 faithfully enough to run Mega Man 2, Super Mario Bros 3, etc.

{Goals: Status}
Extensible, Concise? Check.
-- Concise: Closest competitor (py65) - 2091 SLOC. Me - 853 SLOC.
-- Extensible: All opcodes are EQL-specialized methods. CLOS makes arbitrary wrapper functions (think decorators) trivial.
Correct, Performant? Verdict still out, headed in a good direction.
-- Correct: I've run some code samples and tested lots 'by hand' but no large programs. py65: 8000 SLOC. me: 200 SLOC.
-- Performant: Have done ZERO profiling, ZERO optimization. Currently runs 2x the speed of the NES on a single core.
---- Thought about thread-safety but not a priority yet. Probably did something wrong somewhere because I've heard "threads are hard" or whatever(tm).

{Why Lisp? (or, a few good points)}
So this brings us to the question of why using lisp. I chose Lisp for a few reasons.
- I've my favorite tool and I've never found a better way to stay 'in flow' than Emacs+SBCL+SLIME.
- Universal syntax is still the one true path to metaprogramming. I'll talk more about that in a minute.
- It's agnostic and I've been able to grow with the language. It's the fucking playdoh of PLs. Mold the lang, mold the program.
- 'writing fast code is knowing how to speak to the compiler in a way it knows how to optimize.' - littledan

{A Culture of Parentheses}
This is what those parens are all about. Metaprogramming is normally insane and culturally frowned upon. Half of this is just a dumb myth and half is legitimate. The legitimate half is that metaprogramming is powerful and people have to use your DSL so it requires taste, docs+communication, etc. The illegitimate half is simply a result of languages that force you to do metaprogramming by working on strings and not having well thought out phase separation. Any legitimate attempt at programming gives you an AST or something with more structure to play with and distinct compilation phases. No universal syntax == no safe culture of metaprogramming. See Mark Dominus on universal syntax. Will explain macros carefully, fear not.

{On emulators, portability, and methods of emulation}
Emulators - Basically a VM, duh. Simulate hardware and run a program inside the simulated hardware.
Portability rationale on emulators seems to be 'C compilers get ported everywhere, architecture-independent C is straightforward'
-- interpreter
-- dynamic recompiler
-- static recompiler

{Enter the 6502}
Three 8-bit storage locations, A, X, Y.
Also, 16-bit program counter (64k addressable memory), 8-bit SR, SP.
Okay, so what runs on this thing? Opcodes!!
56 "opcodes" (read: functions/primitives), 155 "instructions" (opcode variants including addressing mode).

{Addressing Modes, or Pointers redux}
Addressing modes are a huge part of what's different about assembly. You don't work with variables you work with addresses. But even then you're restricted to these modes. Instructions only support a few ways of being addressed. Some addressing modes take addresses in memory, some don't. No instruction supports them all and some addressing modes are only used by one instruction. Furthermore, some opcodes need the address whereas some need the byte at that address in memory. We'll look at this more soon.

{Get ready to poop your pampers}
Now we're going to look at some code. It's a little scary but I'll explain. Hang on!

{An executable spec, or Enter defopcode}
So this is sort of the crown jewel of the project. It's also probably the nastiest code in the project. But it allows for something really cool. It allows for me to define an opcode in a single place and have it generate methods for every instruction that opcode has which use the right addressing mode, have accurate cycle counts, and so on.

{A defopcode aside}
Also, it would be reasonably straightforward to rework defopcode and have it spit back compiled closures instead of interpreting. It would be simple to do naively but doing JIT compilation or getting smart here would involve...a lot of learning and engineering on my part.

{On dispatch strategies}
Anyway, once you've got the opcodes figured out you've got to look at the main loop. The question then becomes "hey, I've got this big array of bytes (i.e. memory) that I'm supposed to loop over and execute, how do I get the opcode/method I need?" Normally this winds up being a case statement but that makes for a big gross main loop. Since I've got first class functions (and methods) I can just store them in an array, look them up and funcall them directly. Much nicer!

{On Assembly and Disassembly}
Additionally, assembly and disassembly fall out quite naturally if you store all the metadata about your opcodes in an array. The big difference is that you need to know how to parse and print different addressing modes. You'll note that my defaddress macro takes care of that though. Assembly is definitely more complicated than disassembly. We'll peek at some examples now. It's an excuse to see 6502 code after all. :)

{Interesting hurdles}
So there were a few interesting hurdles in the project. One notable non-hurdle is documentation. Thanks to the 6502 being such a widely shipped and loved chip, there are extensive docs to be found. Decimal mode is this really nasty thing that lets you work on stuff in decimal rather than binary but...it's just gross to implement. Thankfully, the NES had a custom 6502 that didn't use this. There's a status register which I mentioned earlier. Basically you use it to track the outcome of certain operations, find out if you overflowed while adding, different stuff. It's not really /awful/, it's just messy. Finally, relative addressing is a little weird. It's the only "non-pure" addressing mode.

{Emulator hurdles}
So CPU emulation isn't actually that bad it's whole systems that get hard. The big thing is that eventually you want multiple threads for, basically, the graphics card and everything else. Then you have a bunch of overhead trying to keep them synchronized. Sometimes docs aren't around so you have to reverse engineer too. In the case of the NES, I'm getting a handle on the memory mapping stuff at the moment which seems like it will be the trickiest bit. I can talk about that after to anyone who is interested.

{What's next?}
I definitely have further plans. I've started work on both famiclom and qeng-ho and the eventual idea is to offer emulation as a service. Just for giggles, just because it's crazy. And I might build a dev environment for Nintendo games on top. Why not, right, if I get done with all this other stuff?

{The Dichotomy at the bottom}
Currently, this has led me to try and figure out why I struggle to get excited about static languages. And I feel like there's this cultural divide between static and dynamic languages that we still haven't bridged. So I'm reading about that and hope to talk more about that next time. I will say that these papers are *VERY* worth reading and that the fundamental divide isn't about metaprogramming. Most lisp macros are compile-time anyhow. It's about the runtime and what's available and allowed then.

{On Abstraction}
"Civilization advances by extending the number of important operations which we can perform without thinking about them." – Alfred North Whitehead

"We are living now, not in the delicious intoxication induced by the early successes of science, but in a rather grisly morning-after, [where we have]... improved the means for achieving deteriorated ends." - Aldous Huxley

{On Abstraction}
"There must be a middle place between abstraction and childishness where one can talk seriously about serious things."
 - Czeslaw Milosz, "Second Space"

|#

#|
What about some msimoni This PLT Life references?

{Mozilla's gone crazy.}
Mozilla's one. They've hired a bunch of Uber hackers to design a new language for making a highly-concurrent+stable browser. The idea is to make a proper successor to C instead of C++ for systems programming (read: critically fast apps, not kernels) that actually uses the type safety, expressevity, and compiler tricks we've learned in the last 40 years. They're doing well so far, very tasteful folks, just dropped 0.3. Graydon is the head honcho and has established an explicit goal of using old, proven ideas. The mailing list is great. It's full of discussions like:
-- "Ya'll should look at dependent types!" G: "Cool story bro. We did and they're not predictable enough yet." "Ya'll should change the syntax to not be so 70s." G: "As for the 70s ... any decade that produced C, ML, Forth, CLU, Mesa, Smalltalk, Pascal/Modula and Scheme is OK in my book. It's kinda the design-space where we're aiming, actually. Just less crashy. They didn't have quite as much internet in their face as we moderns do."

  (:article
   (:h3 "Mozilla's gone crazy")
   (:br) (:br)
   (:img :src "opa/rust.jpeg"))

  (:article
   (:h3 "Mozilla's gone crazy")
   (:ul
    (:li "Hired a bunch of Uberhackers" (:br) "{"
         (:a :href "http://twitter.com/graydon_moz" "@graydon_moz") ", "
         (:a :href "http://twitter.com/pcwalton" "@pcwalton") ", "
         (:a :href "http://twitter.com/nikomatsakis" "@nikomatsakis") ", "
         (:a :href "http://twitter.com/marijnh" "@marijnh") "}")
    (:li "Idea: Make a safe, concurrent systems language for experimental browser architectures.")
    (:li "Status: Just released Rust 0.3, tasteful folks->tasteful lang. Servo work underway.")
    (:li "Design Principle: Only use proven, battle-tested ideas. Not a research language."))
   (:p "Fantastic " (:a :href "http://news.gmane.org/gmane.comp.lang.rust.devel" "mailing list discussions") "."))

  (:article
   (:h3 "For Example: Dependent types")
   (:br)
   (:div :align :center
         (:img :src "opa/dependent.jpeg")))

  (:article
   (:h3 "For Example: Good ol' syntax debates")
   (:br)
   (:p "D: Yo dawg, why are you sticking to a 70s style syntax and short keywords?")
   (:br) (:br)
   (:p "G: ...As for the 70s [...] any decade that produced C, ML, Forth, CLU, Mesa, Smalltalk, Pascal/Modula and Scheme is OK in my book." (:br) (:br)
       "G: It's kinda the design-space where we're aiming, actually. Just less crashy. They didn't have quite as much internet in their face as we moderns do."))

|#
