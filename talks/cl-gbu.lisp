(in-package :slideware)

#|

Problems:
This doesn't show off the interactive nature of the REPL. At all. What can we do about that?
-- I can ask Will for some advice, maybe spend Thursday night working on it/rehearsing with him.
-- Also, could get a good SLIME or ENSIME video off the web and demonstrate that way...

Common Lisp Talk:

* S1 - Preliminaries

LISP vs Lisp

What Lisp is and what Lisp isn't.

* S2 - A sketch of the fam in late 2011

R7RS split into 2 "versions"
Clojure continuing to gain traction
CL getting it's accessibility act together.

* S3 - Why not Scheme or Clojure?

Scheme shifting towards being useful for "real work". Is it there yet?
R5RS was 50 pages and had *NO LIBRARY/MODULE SYSTEM* in the spec.
Racket, Guile, Chicken are fairly productive schemes but still can't share libs.

Clojure is JVM-based, pros and cons. Scheme is functional, Clojure is strongly functional.
An opinionated language! Common Lisp is _agnostic_. Pros and cons, again.
Decent library ecosystem, comparable to Common Lisp. Modernized, elegant, less historical cruft. Damn upstarts!

I came to CL rather by accident/chance (Will Halliburton) but love it now.
CLHS is a good thing, many high quality implementations. Don't fear choice!
"Cockroach of programming languages, last one after the apocalypse." - Paul Snively

* S4 - A few Foundational Concepts

Atoms and Expressions, everything can be categorized as one of these two
Expressions yielding values, no Statement Dichotomy, every function's last form has an implicit return.
Special forms, macros and everything else: http://www.lispworks.com/documentation/HyperSpec/Body/03_abab.htm
Quoting, Playing with Code as Data
Think of everything as being lexically bound, you can do more than redefine things, you can shadow them!

* S5 - Enter cl-scrobbler?

Sorry to inflict my code on you guys. :)
Project point 1: Packages are in *no way* path based. Don't care. Systems/makefiles are however. More on that later.
-- I like a "src" directory. Obviously I don't write enough big projects.
Project point 2: Packages contain symbols.
-- "Where do symbols come from? When a reader and a package love each other very much..."
Lisp-1 vs. Lisp-2.

Show off cl-scrobbler.asd.
Oh, man. Is package.lisp scary? Let's break it down...

* S6 - Our first real lisp code...

Show off cache, config.
Take questions.

* S7 - Show off Auth, Errors.

Room here to talk about conditions, macros.

* S8 - Show off Util, Scrobble.

Deep dive. Fun magic.

* S9 - ASDF
System definitions are *magical*...
Show docs, auto test suite recompile?

* S10 - The Library Nightmare
cliki, c-l.net, alu, etc
QUICKLISP!

* S11 - Where to next?

Books, editor integrations, recommended libraries, IRC, etc.

|#

(defslides (:title "CMGd LnL - Common Lisp"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "Common Lisp - The Good, the Bad and the Ugly")
   (:p "Brit Butler" (:br) "2011-11-04")
   (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 "Preliminaries")
   (:p "It is LISP or Lisp? Well..." (:br))
   (:ul
    (:li "It's a family of languages and ideas, a"
         (:span :class "red" " phenotype ")
         "really, primarily distinguished by its"
         (:span :class "blue" " 'code as data' ") "philosophy these days.")
    (:li "LISP could refer to older versions of the language," (:br)
         "first widely distributed version was LISP 1.5 " (:b "circa 1963!")
         (:br) "Could also refer to the family of languages/the genotype.")
    (:li "Lisp should be used when speaking about any modern incarnation. "
         "Need to use context to tell if subject is genotype or phenotype.")))

  (:article
   (:h3 "There are *modern* incarnations?")
   (:p (:b "YES! Let's meet the fam..."))
   (:ul
    (:li "Scheme - Many implementations. R7RS upcoming, R6RS controversial." (:br))
    (:li "Clojure - New up-and-comer. Unusual, single author, opinionated. JVM-based.")
    (:li "Common Lisp - A few implementations. Venerable, getting its act together.")))

  (:article
   (:h3 "So why CL over Clojure or Scheme?")
   (:p "A historical accident, I promise!")
   (:ul
    (:li "The full R5RS Scheme Specification is under 50 pages. R7RS incoming."
         (:br) (:b "NO MODULE SYSTEM ") "but shifting towards being useful...")
    (:li "ANSI CL is 1100 pages and contains historical cruft." (:br)
         "But it has libraries, great implementations, community!")
    (:li "Clojure wasn't born when I started (2008)." (:br)
         "Modern, elegant, functional, libraries. ... damn upstarts.")))

  (:article
   (:h3 "A Few Fundamental Concepts")
   (:p "Only two things in Lisps: Atoms and Expressions." (:br)
       "Think simple substitution and reduction.")
   (:p "Special forms, Macros and everything else." (:br)
       "(see:  clhs 3.1.2.1.2)")
   (:p "Code is data! () is the notation for a List. Much better than strings..." (:br)
       "Once you get used to it. ;)")
   (:p "Related: We can switch back and forth between code and data via \"quoting\"."))

  (:article
   (:h1 :align "center" "And now... SOME CODE!"))

  (:article
   (:h3 "God...it's all so ugly!")
   (:p "Compared to Python? You better believe it.")
   (:p "Biggest problem right now is how to find libraries:")
   (:ul
        (:li "cliki.net")
        (:li "common-lisp.net")
        (:li "cl-user.net"))
   (:p "Unfortunate that newcomers faced with choice about compiler, editor.")
   (:p "At least we have quicklisp! Lispbox, further improvements incoming."))

  (:article
   (:h3 "Resources for those interested...")
   (:p
    (:ul
     (:li "Friendly coworkers!")
     (:li "Excellent books - PCL (free @ gigamonkeys.com), CLtL and HyperSpec.")
     (:li "Excellent implentations: Clozure CL (ccl.clozure.com), SBCL, clisp.")
     (:li "Lovely package manager - Zach Beane's Quicklisp at quicklisp.org")
     (:li "Great folks in freenode's #lisp. Just don't ask why you should learn it!")
     (:li "Insane editor integration - SLIME for Emacs, Slimv for Vim.")))))
