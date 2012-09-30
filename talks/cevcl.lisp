(in-package :slideware)

(defslides (:title "Console Emulation via Common Lisp"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
    (:h1 "Console Emulation via Common Lisp")
    (:p "Brit Butler" (:br) "2012-10-01")
    (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

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
      (:b "Correct, Performant? Verdict still out, looking good.")
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
     (:ul (:b "What comprises this thing? "
              (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/cpu.lisp#L7" "Data"))
          (:li "Accumulator, X, Y - general purpose 8-bit registers")
          (:li "Program Counter - 16-bit register allowing for 64k addressable memory")
          (:li "Stack Pointer, Status Register - special purpose 8-bit registers"))
     (:ul (:b "What runs on this thing? "
              (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/opcodes.lisp#L7" "Code"))
          (:li "56 \"instructions\" (functions/primitives)")
          (:li "155 \"opcodes\" (variants for different addressing modes)")
          (:li "Take note pedants: I interchange these terms in talk and code. Probably incorrect.")))

    (:article
      (:h3 "An introductory 6502 program")
      (:br)
      (:pre "
;; clear the carry status bit
CLC
;; accumulator, Y = 0
LDA #$00
LDY #$00
;; loop incrementing Y. once Y wraps to zero, proceed to 0x0b
loop:
  INY
  BNE &loop
;; accumulator = accumulator - (0x0001 + carry bit),  halt.
SBC $0001
BRK")
      (:br)
      (:p "Leaves the Accumulator holding 86, or " (:code "255 - LDA") " (0xa9)."))

    (:article
     (:h3 "zomg machine codes!")
     (:br)
     (:div :align :center (:img :src "opa/distellamap.jpg"))
     (:p "Ben Fry's " (:a :href "http://benfry.com/distellamap" "Distellamap")
         " project is fantastic."))

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
     (:h3 (:i "\"Register\" ") "modes")
     (:h5 "Immediate - PC, 1 byte")
     (:p "Only in arithmetic, logical comparisons and loading.")
     (:pre "LDA #$00 ; 0xa9, LDA 0 into the Accumulator
SBC #$2a ; 0xe9, Subtract 42 from the Accumulator")
     (:h5 "Accumulator - A, 0 bytes")
     (:p "Only in Bitwise Shift and Rotations.")
     (:pre "ASL A ; 0x0a, shifts Accumulator left
ROR A ; 0x6a, rotates Accumulator right"))

    (:article
     (:h3 (:i "\"Zero-page\" ") "modes, 1 byte")
     (:br)
     (:p "Fast access to anything in bottom page of RAM.")
     (:br)
     (:p "Along with " (:b "absolute") ", " (:b "indirect")
         " comes with -x, -y variants.")
     (:br)
     (:pre "ORA $51 ; 0x05, Bitwise Or [81] with Accumulator.
STY $1b, X ; 0x94, Store Y register at [27+X].
LDX $1b, Y ; 0xb6, Store [27+Y] in X register."))

    (:article
     (:h3 (:i "\"Absolute\" ") "modes, 2 bytes.")
     (:br) (:br)
     (:p "Specify any address in memory.")
     (:br) (:br)
     (:pre "DEC $dead, X ; 0xde, Decrement [57005+X].
LDX $beef, Y ; 0xbe, Load [48879+Y] into X register.
CMP $1234 ; Compare [4660] with Accumulator, set flags."))

    (:article
     (:h3 (:i "\"Indirect\" ") "modes")
     (:h5 "Indirect mode, 2 bytes.")
     (:p "Only used by the JMP instruction.")
     (:pre "JMP ($1234) ; 0x6c, Set PC to [[4660]].")
     (:h5 "Indirect-x,y: 1 byte.")
     (:p "Slightly simplified: get word at (zero-page + register).")
     (:pre "ADC ($bc, X) ; 0x61, Add Indirect-X(188) to Accumulator.
AND ($ad, Y) ; 0x31, Bitwise And Indirect-Y(173) with Accumulator."))

    (:article
     (:h3 "Other modes")
     (:h5 "Implied mode, 0 bytes.")
     (:p "Instruction has no operand or knows operand location." (:br)
         "Tons of these, Stack+Status register handling, etc.")
     (:pre "NOP ; Do nothing
DEX ; or INY to Increment/Decrement the specified register.")
     (:h5 "Relative mode, 1 byte.")
     (:p "Trickiest to test because it's stateful." (:br)
         "Moves PC forward/back. Used in all branching instructions.")
     (:pre "BCC &19 ; 0x90, Move PC forward by 25 when :carry == 0.
BNE &ac ; 0xfd, Move PC back by 2 (255 - fd) when A != 0."))

    (:article
     (:h3 "On dispatch strategies")
     (:p "Which method goes with this byte in the array?")
     (:ul
      (:li "Opcodes take a CPU, figure out their addressing mode, modify its state and return it.")
      (:li "Store an array of methods, indexed by opcode. Opcode takes no args. `find-method` makes this annoying.")
      (:li "Have a giant switch/case statement. Totally unacceptable. What is this, C? :)"))
     (:p (:a :href "https://github.com/redline6561/cl-6502/blob/master/src/utils.lisp#L1"
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
      (:li "pham-nuwen - Make a nice frontend for it"))
     (:p (:b "Emulation as a Service!"))
     (:br)
     (:p "Maybe build crazy dev tools on top a la " (:a :href "http://www.youtube.com/watch?v=tjcvR5McmSg" "Frodo Redpill") ".")
     (:p "No promises! ;)"))

    (:article
     (:h1 :align :center "Questions?")
     (:br) (:br)
     (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/cevcl.lisp" "Slides Source"))))
