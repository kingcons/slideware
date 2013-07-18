(in-package :slideware)

#|
I've wanted to give a lunch and learn since I got here. This is a talk about what obsesses me.
It might not be applicable to company problems but I hope there is interesting food for thought anyway.

> whoami stuff
I feel compelled to point out that I've only been programming about 5 years and only doing it professionally for 2.

> Recent developments: cl-6502

My most significant project for the last year has been a CPU emulator called cl-6502.
An emulator is a program that simulates another computer, usually so you can run its programs.
The 6502 in particular was used in a lot of popular older computers such as
the Apple II, the Commodore 64, and the original Nintendo.

> Not quite there yet...

cl-6502 only handles the CPU, I've started another project to do video and sound
emulation but it's not done. Which is why Super Mario Bros looks so strange.

> Shifting Goals

Initially, I was working on this because it was challenging and I wanted to learn
more about assembly and hardware. But my motivations have changed over the course
of the project towards something more abstract.

> What's wrong?

By default, most people assume CS schools have the pedagogy down. They certainly
produce new graduates, that isn't what concerns me.

> MIT's New Curriculum (2009)

In 2009, MIT changed their freshman curriculum for the first time in over 20 years.
When asked about it, one of the authors said this:

"Building larger programs out of a group of small, understandable pieces is what
things like recursion and functional programming are built for.
THE WORLD ISN'T LIKE THAT ANYMORE."

Which is rather distressing to me personally and begs the question...

> What is software like today?

Well, it's a mixed bag. We're doing more complicated things than we've ever done
before. So in a real sense, black-box abstraction and software engineering is a
success. But we're increasingly reliant on larger and larger amounts of plumbing
in our lives and work. Rather than empowered by the machines, we're dependents
in many ways, user and programmer alike. And the schools are too busy trying to
produce students that actually know theory and practice to worry about it.
Which results in talks like Gary Bernhardt's from Strangeloop 2012...

> Ignored Infrastructure

"Collectively, we suffer from a learned helplessness around them:
to build new high-level tools, we’d also have to rebuild some of the
infrastructure... We can’t imagine triggering such a large cultural
and technological shift, so we don’t even try to build truly new tools
for ourselves." - Gary Bernhardt, A Whole New World

"Our 'Shipping Culture' is poisonous to infrastructure. We just accrete it."
- Gary? Me? Who knows. We're [Programmer Archaeologists](opa) now!

> Programmer Archaeology: In Search of Lost Culture

And that ties back into readability. Now that we *expect* programs to be
massive, incomprehensible things, you rarely encounter talk like these
quotes from respected forefathers of Computer Science:

Thus, programs must be written for people to read, and only incidentally for machines to execute.

Personal Mastery: If a system is to serve the creative spirit, it must be entirely comprehensible to a single individual.

It's very sad to me that these goals have been almost completely forgotten,
not only in industry which at least has deadlines and bottom lines to deal with
but often in the wider community at large.

> A New Motivation

So as I found myself thinking about these issues more, I became more concerned
with creating a new infrastructure, even a toy one, that I could complete
comprehend. And that I would be proud of if others encountered it. Because I've
been programming for a few years now and there's little code that I would
describe as readable or exemplary in the way that these sages seem to mean.

> Too Fast?

And we need more fun. We're so focused on getting ahead of the curve that we
have forgotten how much fun SIMPLE programs can be. We've left in the dust
the idea that rethinking our infrastructure can be rewarding, teaching us
more about the machine as well as the problems it solves.

> Back to emulators

Emulators could be a great tool for exploring our infrastructure and I'm
investigating how that could be done. The emulator shown here, FCEUX, is
a fairly popular Nintendo emulator. It's also in the ballpark of 175k lines
of code. That's 2500 pages at 70/lines a page! I can't comprehend 2500
pages of code.

> Back to cl-6502

So I wrote this instead. It's about 30 pages. Someone posted it to Hackernews
and the programming reddit about 2 weeks ago and the response was very good.
In particular, most people who read the code described it in *aesthetic terms*,
and overall found it pleasing which is a great start. And there's something
special about the feeling of editing your code with a red pen.

> What I want?

I'm not close to done though. Once I get the graphics and sound working, I want
to help people take apart their favorite old games WHILE they play them. It's
the most difficult and rewarding project I can think of because I believe people
should be *empowered* by their technology and that means knowing how it works.

> Lessons Learned thus far

Step one is to get your APIs right, which really means getting the
problem decomposition right. There's no silver bullet for that and it's really hard.
It goes back to how programmers are supposed to predict how long it will take them
to teach a machine to do something they themselves have never done. This is a very
weird industry.

After that, factor your function definitions internally so that independent behaviors
are only defined in one place. And finally, once you have a good grasp of the domain
concepts there really is no substitute for trying to extend your language to capture
those concepts with a DSL.

Category Theory can help us with function and module composition. We've studied
abstraction a lot and learned some good tricks. But no tool can teach us how to
describe a new domain automatically. It just takes sweat.

Questions?

# interesting figure: 2900 words of prose, 4200 words of code in cl-6502.
|#

(defslides (:title "Towards Readable Programs"
            :path "/home/redline/quicklisp/local-projects/slideware/talks/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
    (:br) (:br) (:br) (:br) (:br)
    (:h3 :align :center "Towards Readable Programs")
    (:br)
    (:p :align :center "Brit Butler" (:br) "2013-07-18")
    (:br) (:br) (:br) (:br) (:br)
    (:p :align :center
        (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:br)
   (:h3 (:pre "> whoami"))
   (:ul
    (:li (:strike "Pythonista") " Rubyist by day, Lisper by night")
    (:li "26, started programming " (:span :class "red" "five and a half") " years ago")
    (:br)
    (:li "Cut my teeth on Scheme & SICP in '08")
    (:li "No 'real' programming (larger than 100 loc) until Oct 2009"))
   (:br) (:br)
   (:p :align :center (:b "Please") " stop me for questions whenever."))

  (:article
   (:h3 "Recent Developments: cl-6502")
   (:br)
   (:p "cl-6502 is a Readable CPU emulator for the MOS 6502.")
   (:br)
   (:img :src "trp/nes.jpg"))

  (:article
   (:h3 "Not quite there yet...")
   (:br) (:br) (:br) (:br)
   (:img :align :center :src "trp/famiclom.png")
   (:br) (:br)
   (:p :align :center "todo: video/sound/input/mappers"))

  (:article
   (:h3 :align :center "Shifting Goals")
   (:br)
   (:p (:b "Initially:") " Make an emulator to better understand assembly; get close to the metal.")
   (:br) (:br) (:br)
   (:p (:b "Currently:") " How can I use this to improve programming pedagogy?")
   (:br)
   (:p :align :center (:img :src "trp/wat.jpg")))

  (:article
   (:h3 (:i "The Default Reaction"))
   (:h1 "What's wrong with programming pedagogy?"))

  (:article
   (:h3 "MIT's New 2009 CS Curriculum")
   (:br) (:br)
   (:img :align :left :style "height: 80%;" :src "trp/sicp.jpg")
   (:br) (:br)
   (:p :align :right
       "Building larger programs out of a group of small, understandable pieces is what things like recursion and functional programming are built for.")
   (:br)
   (:p :align :right (:b "The world isn't like that anymore."))
   (:br)
   (:p :align :right
       (:a :href "http://cemerick.com/2009/03/24/why-mit-now-uses-python-instead-of-scheme-for-its-undergraduate-cs-program/"
           " - Gerald Sussman, 2009")))

  (:article
   (:h3 "What is the software world like today?")
   (:br) (:br)
   (:p "Linux was "
       (:a :href "http://www.dwheeler.com/sloc/redhat71-v1/redhat71sloc.html"
           "30 million lines of code") " ... over "
           (:span :class :red "10 " (:i "years") " ago") "!")
   (:br)
   (:p "So...")
   (:ul
    (:li (:a :href "http://people.engr.ncsu.edu/efg/517/f00/syllabus/annotations/lec13.html" "Black-box abstraction")
         " and " (:a :href "http://www.hxa.name/notes/note-hxa7241-20120429T1019Z.html" "library reuse")
         " is a success." (:br) "(from the perspective of Software Engineering)")
    (:br)
    (:li "But our software is " (:a :href "http://blog.redlinernotes.com/static/size_of.txt" "growing too large")
         " to even navigate, much less "
         (:i (:a :href "http://blog.redlinernotes.com/posts/Towards-Comprehensible-Computing.html" "comprehend")) ".")
    (:br)
    (:li "And schools are focused on teaching engineers to work with incompletely understood components.")))

  (:article
   (:h3 "Ignored Infrastructure")
   (:br)
   (:p "Collectively, we suffer from a " (:i (:span :class :red "learned helplessness"))
       " around it: to build new high-level tools, we’d also have to rebuild some of the
       infrastructure... We can’t imagine triggering such a large cultural and
       technological shift, so we don’t even try to build truly new tools for ourselves.")
   (:br)
   (:p "Our 'Shipping Culture' is poisonous to infrastructure. We just accrete it.")
   (:p :align :right
       (:a :href "https://thestrangeloop.com/sessions/a-whole-new-world" " - Gary Bernhardt, A Whole New World"))
   (:br) (:br)
   (:p :align :center "So now we're "
       (:a :href "http://redlinernotes.com/docs/talks/opa.html" "programmer archaeologists") "..."))

  (:article
   (:h3 "Programmer Archaeology: In Search of Lost Culture")
   (:br) (:br)
   (:p "Thus, programs must be written for " (:span :class :blue "people to read")
       ", and only incidentally for machines to execute.")
   (:p :align :right " - Abelson and Sussman, " (:a :href "http://mitpress.mit.edu/sicp/front/node3.html" "SICP Preface"))
   (:br) (:br)
   (:br)
   (:p "Personal Mastery: If a system is to serve the creative spirit, it must be "(:span :class :red "entirely comprehensible") " to a single individual.")
   (:p :align :right " - Dan Ingalls, " (:br)
       (:i (:a :href "http://www.cs.virginia.edu/~evans/cs655/readings/smalltalk.html" "Design Principles Behind Smalltalk"))))

  (:article
   (:h3 "A New Motivation")
   (:br)
   (:p "They [the students] should be capable of reading a 50-page-long program, if it is written in an " (:span :class "red" "exemplary") " style.")
   (:p :align :right " - Abelson and Sussman")
   (:br)
   (:p "I think that it's extraordinarily important that we keep the fun in computing. ...
        We began to feel as if we really were responsible for the successful, error-free
         perfect use of these machines. " (:span :class :red "I don't think we are.") (:br) (:br)
       "I think we're responsible for stretching them, setting them off in new directions, and keeping fun in the house.")
   (:p :align :right " - Alan Perlis"))

  (:article
   (:h3 "Too Fast?")
   (:br) (:br)
   (:p "A programmer has a problem. Solves it. Releases as open-source. Now has "
                (:span :class :red "10,000 problems") ".")
   (:p :align :right
       " - " (:a :href "https://twitter.com/stuartsierra/status/327536088338030592" "@stuartsierra")
       ", " (:i "the twitters"))
   (:br) (:br)
   (:p "Open Source has a life cycle and the time to "
                (:span :class :green "burnout is accelerating") ".")
   (:p :align :right
       " - Jacob Thornton aka " (:a :href "https://twitter.com/fat/" "@fat")
       ", " (:a :href "https://www.youtube.com/watch?v=UIDb6VBO9os" "dotJS 2012")))

  (:article
   (:h3 "Back to emulators")
   (:br)
   (:p :align :center (:img :width "60%" :height "60%" :src "trp/fceux.png"))
   (:br)
   (:p "A: 'Cool, how does it work?'")
   (:p "B: 'Oh, just read this 2500 page book.'"))

  (:article
   (:h3 "Back to cl-6502")
   (:br)
   (:h1 "So I'm writing a shorter book."))

  (:article
   (:h3 "What do I want?")
   (:br)
   (:p "Something real, simple, cool.")
   (:ul
    (:br)
    (:li "Inspect all source code and hardware state " (:i "intuitively") ".")
    (:br) (:br)
    (:li "Modify the live system with a " (:i "short feedback loop") ".")
    (:br) (:br)
    (:li "Exemplary style within reasonable " (:i "size constraints") ".")))

  (:article
   (:h3 "Lessons Learned")
   (:br) (:br)
   (:ul
    (:li "1) Get the API right first.") (:br)
    (:li "2) Factor as much as reasonably possible.") (:br)
    (:li "3) Use a pinch of DSLs where it *really* counts."))
   (:br) (:br)
   (:p "No programming language or tool can solve these problems."))

  (:article
   (:h1 :align :center "Questions?")
   (:br) (:br)
   (:p :align :center (:a :href "https://github.com/redline6561/slideware/blob/master/talks/trp.lisp" "Slides Source"))))

#| notes:

- build a solution.

-- sell Matt Anderson, Gary Bernhardt. Why should hackers know their infrastructure?
---- black box abstraction "succeeded" leaves us with paper cuts.

"" - Christopher Kelty, *Two Bits: The Significance of Free Software*, page 11
"" - Pekka Himanen, *The Hacker Ethic and the Spirit of the Information Age*

- gary bernhardt: the scheme cpu/gc tweet.
- sussman quotes from lambdajam
- alan perlis, the fun in computing from SICP preface
- fred brooks, creating by exertion of the imagination
- kragen sitaker, why cs is awesome
- nostrademons, we are always learning

|#

#| quotes:

(:article
 (:h3 "A New Obsession")
 ;; i.e. foss lets you know the machine soup-to-nuts!
 (:br)
 (:blockquote "'Bit-twiddlers' are neither exactly proletariat nor bourgeoisie. They may not own the means of production in the sense that Marx argued, but they certainly do have significant control over those means, in a more profound way than the term 'symbols analysts' or 'knowledge workers' captures.")
 (:p " - Stephen Weber, " (:i "The Success of Open Source") ", page 247")
 (:br)
 (:p "But school wouldn't let me just study "
     (:strike (:a :href "http://p2pfoundation.net/Agalmics" "agalmics")) (:br)
     (:a :href "http://en.wikipedia.org/wiki/Commons-based_peer_production" "peer production")
     "..."))

(:article
 (:h3 (:small (:i "Exemplary source code?")))
 ;; i.e. exemplary code lets you know the machine soup-to-nuts!
 (:br) (:br) (:br)
 (:p "ex*em*pla*ry (adj):")
 (:blockquote "1) serving as a pattern, or deserving of imitation")
 (:blockquote "2) serving as a warning")
 (:blockquote "3) serving as an example, instance, or illustration"))

(:article
 (:h1 :align :center "crap"))

(:article
 (:h3 "We are so screwed.")
 (:br) (:br)
 (:p "Maybe we can fix it with better programming languages..."))

(:article
 (:h3 "The Goldilocks Principle or," (:br)
      (:i "What the hell are we doing?"))
 ;; i.e. oh, goddammit. nobody knows the machine soup-to-nuts.
 (:br)
 (:ul
  (:li "Everyone with less theoretical knowledge than me is an idiot noob whose code is gibberish.")
  (:li "Everyone with more theoretical knowledge than me is a pointy-headed elitist whose code is gibberish.")
  (:li "My level of theoretical knowledge is just right and my code is clear and deep."))
 (:br)
 (:p "I was an idiot 5 minutes ago, and will be an elitist in 5 minutes. Where has my beautiful code gone?")
 (:br)
 (:p " - " (:a :href "http://twitter.com/pltalaindeb" "PLT Alain de Botton")
     ", " (:i "the twitters")))

p50 lines/page * 50 pages == 2500 lines of code.
that's the target for famiclom.
beyond that, it would be nice to get a lispy-lang to nes compiler in 2500 lines.
beyond that, can i golf mega man 2 into 2500 lines??? O_O

|#
