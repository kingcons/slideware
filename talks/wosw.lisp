(in-package :slideware)

#|

TODO:

- 7 images were lost, need restoration.
-- I believe the prog-lang ones were custom made aside from binary. :-/
- How are we going to store images going forward. Relative to the talk? wosw/c.jpg?
- Factor out some common patterns into a slide function.

|#

(defslides (:title "CMGd LnL - Open Source"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "Why Open Source Works")
   (:p "Brit Butler" (:br) "2011-08-08")
   (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 "First things first...")
   (:ul
    (:li "We need an operational defintion of \"works\".")
    (:li "Also, of Open Source."))
   (:p (:b "Open Source") " is a " (:span :class "red" "process")
       " for making things, the most oft associated artifact being software.")
   (:p "We're going to use software as our vantage point since...")
   (:ul
    (:li "A) The most data is available for looking at Open Source via software and...")
    (:li "B) We make software."))
   (:p "Just remember, Open Source is *NOT* about software!"))

  (:article
   (:h3 "Use the source, Luke!")
   (:p "That said, if software is our artifact, we need to discuss what software is composed of...")
   (:h1 :align "center" (:b "CODE")))

  (:article
   (:h2 "To deliver you from the preliminary terrors..."))

  (:article
   (:h3 "Source Code")
   (:p "Software is just text...really unusual, exquisitely structured, occasionally expensive text..."))

  (:article
   :class "fill"
   (:p (:img :src "img/lisp.png" :width "100%")))

  (:article
   :class "fill"
   (:p (:img :src "img/cpp.png" :width "100%")))

  (:article
   :class "fill"
   (:p (:img :src "img/python.png" :width "100%")))

  (:article
   :class "fill"
   (:p (:img :src "img/asm.png" :width "100%")))

  (:article
   :class "fill"
   (:p (:img :src "img/binary.jpg")))

  (:article
   (:h3 "Some Key Points about Programming")
   (:ul
    (:li "Thus, programs must be written for people to read, and only incidentally for machines to execute."
         (:br)
         "- Abelson and Sussman"))
   (:br)
   (:h3 "Some Key Points about Software")
   (:ul
    (:li "Simply a set of behaviors that automate human labor.")
    (:li "Software is intellectual property.")
    (:li "Software (when stored digitally) can be copied essentially for free.")))

  (:article
   (:h3 "This")
   (:img :src "img/y-combinator.jpg"))

  (:article
   (:h3 "Great. So what's Open Source Software (OSS)?")
   (:p "Software whose source code is publicly available under an appropriate legal license.")
   (:ul
    (:li "Two predominant families of such licenses, GPL-style and BSD-style.")
    (:li "Sometimes known as \"Free Software\" and \"Open Source\".")
    (:li "A historical marketing war, still cared about by some.")
    (:li "One emphasizes the rights of the software, the other the rights of the user.")))

  (:article
   (:h3 "In the beginning... (or, History? What history?)")
   (:p "Software used to be free.")
   (:ul
    (:li "No commodity hardware, not to mention Operating Systems or Programming Languages/Compilers.")
    (:ul
     (:li "So no notions of reuse or portability.")
     (:li "...until the advent of C in the early 70s."
          (:br) "- (Unix in C happened in 1972)"))
    (:li "Most systems were big organization owned Time-Sharing systems. Mainframes. DEC PDPs and stuff.")
    (:li "Hence, no notion of software as a commodity.")))

  (:article
   (:h3 "Early Proprietary Software")
   (:p "Arrived with the \"hobbyist\" then microcomputer markets in the late 70s and through the 80s.")
   (:p "Bill Gates wrote a particularly famous letter in 1976.")
   (:p "Meanwhile, in 1980...RMS got upset about a Network Laser Printer at the MIT AI Lab...")
   (:p "Then fought against LMI and Symbolics until 1983 when he founded the GNU project."))

  (:article
   (:h3 "GNU? Gnu's Not Unix")
   (:p "Intended to write a ton of \"Free Software\" culminating in an Open Source Operating System.")
   (:p "Unix was a predominant hacker OS at the time...")
   (:p "Finished everything but the OS kernel. Then a Finnish kid (seriously, he was in school) showed up in 1991 named Linus Torvalds..."))

  (:article
   (:h3 :align "right" (:img :src "img/rms.jpg"))
   (:p "Fine. Hippies making software. What's hard about that?"))

  (:article
   (:h2 "Anybody in here old enough to have owned an Atari?"))

  (:article
   (:h2 "Now you know why Medley's taking so long..."))

  (:article
   (:h3 "What did they do?")
   (:p "1000s of volunteers, creating a complex public good, beating the pants off established market competitors and giving it away!")
   (:p "Does this correspond with your *intuitions* about economics?")
   (:p "Examples: Apache, Linux running NYSE, 900,000+ Google servers, CMGdigital!")
   (:br)
   (:p "Managed to solve a collective action problem by reframing the notions of ownership and property."))

  (:article
   (:h3 "Who did it?")
   (:p "Anybody. Open Source is characterized by distributed, voluntary participation on voluntary tasks.")
   (:p "Lower the barrier to entry as much as possible. But a bunch of people \"scratching an itch\" is not enough...")
   (:p "Demographics are international, mixed paid and unpaid work these days. 80-20 rule still applies. Top-heavy."))

  (:article
   (:h3 "Classical Economics")
   (:p "Property is an exclusionary notion. My ownership means I can deny you access.")
   (:p "Open Source makes the notion of ownership the right to distribute, reframing what property fundamentally is.")
   (:p "Political Economist Steven Weber suggests this underlying change supports all the rest."))

  (:article
   (:h3 "The Goods")
   (:table
    (:tr :valign "top"
         (:th "")
         (:th "Excludable")
         (:th "Non-Excludable"))
    (:td
     (:div "Rival")
     (:br) (:br)
     (:div "Non-Rival"))
    (:td
     (:div "Private Goods" (:br)
           "Food, Cars, Homes, iPhones")
     (:br)
     (:div "Club Goods" (:br)
           "Cable TV, Private Gyms/Parks/Pools"))
    (:td
     (:div "Common Goods" (:br)
           "Fish stocks, Timber, Coal, Many natural resources")
     (:br)
     (:div "Public Goods" (:br)
           "National Defense, Public TV, (often) Air and Water")))
   (:br)
   (:ul
    (:li "Non-excludable due to licensing.")
    (:li "Non-rival due to digital distribution."))
   (:p "Open Source is a public good!"))

  (:article
   (:h3 "The Process - You Shall Be Faithful To It!")
   (:p "So what is this open source process? Are there tenets?")
   (:p "Is it like standard software engineering practice?")
   (:h2 "Glad you asked..."))

  (:article
   (:h3 "1. The Cool Factor")
   (:p "\"Enjoyment predicts excellence.\" - Eric Raymond (aka an insufferable blowhard)")
   (:p "Work on stuff that interests you and seems cool.")
   (:p "Remember, Voluntary task selection! Self-elected projects."))

  (:article
   (:h3 "2. Scratch an Itch")
   (:p "In some way improve or solve a personal problem for the author.")
   (:p "It should be relevant to you as well as just fun or cool."))

  (:article
   (:h3 "3. Reuse, reuse, reuse")
   (:p "Maximally utilize and repurpose existing code. Don't reinvent the wheel.")
   (:p "Helps build something genuinely new, useful and/or innovative faster."))

  (:article
   (:h3 "4. Parallel Efforts")
   (:p "More than one person wants to solve the same problem at the same time? Fine!")
   (:p "Technical battle royale! (See: LKML)"))

  (:article
   (:h3 "5. Leverage the Law of Large Numbers")
   (:p "\"Given enough eyeballs, all bugs are shallow.\" - Linus Torvalds")
   (:p "The user is a contributor == the user is a tester. No barriers to entry!"))

  (:article
   (:h3 "6. Eternal Beta")
   (:p "Release early, release often! Interested users can just run from version control!")
   (:p "The software is never done...because software exists in a social context."))

  (:article
   (:h3 "7. Docs, Docs, Docs")
   (:p "Code is *not* enough. Need beginner's guides, IRC channels, Wikis, Unit Tests...")
   (:p "Don't want to be stuck instructing each new contributor."))

  (:article
   (:h3 "8. Talk a *lot*.")
   (:p "Argue about licensing. Argue about braindead parts of current architecture.")
   (:p "Argue about brilliant hypothetical overhauls. Argue about history. Wind up maintaining."))

  (:article
   (:h3 "Dependencies...")
   (:p "All these behaviors are enabled by a trifecta of three things:")
   (:ul
    (:li "1. Network connectivity for dissemination of materials and plummeting transaction costs.")
    (:li "2. Legal licenses for protection of code and developers' rights.")
    (:li "3. Elders and/or BDFLs for social norms and leadership.")))

  (:article
   (:h3 "BDFLs?")
   (:p "Benevolent Dictator For Life")
   (:p "\"organizations...are constrained to produce designs which are copies of the communication structures of the organization\" - Conway's Law")
   (:p "No single dominant organizational structure.")
   (:ul
    (:li "Linux - Onion-like. Linus, surrounded by maintainers, surrounded by sub-maintainers, surrounded by...")
    (:li "Apache - Democratic Repulic. Minimal quorum consensus rule.")
    (:li "Perl - Round-robin. \"Pumpkin-holder pattern\", still an inner circle.")))

  (:article
   (:h3 "Not without Dangers...")
   (:ul
    (:li "Forks")
    (:li "Licensing disputes")
    (:li "Occasional crazy maintainers or BDFLs...Ulrich Drepper, anyone? (Glibc)"))
   (:p "Oh, and some projects just die... IGNORED!"))

  (:article
   (:h3 "More Economics...")
   (:p "Microeconomic Issues")
   (:ul
    (:li "Why volunteer towards a public good? What's the individual motivation?")
    (:li "Where is the scarcity in this economic system?"))
   (:p "Macroeconomic Issues")
   (:ul
    (:li "How to coordinate, manage complexity and beat Brooks' Law?")
    (:li "How to avoid forks and sustain functioning communities?")))

  (:article
   (:h3 "Motivations...")
   (:ul
    (:li "It's Cool. Elegant code is a thing of beauty. Mongrel was an \"art project\".")
    (:li "Job as vocation. Take code seriously, due to scarce resource, having to solve the same problem more than once is stupid, not just inefficient. (See: subcommander)")
    (:li "Comfort. Sometimes referred to as \"Joint enemy\". More about community against perceived discomfort of closed source. The shared enemy of software that doesn't do what you want.")))

  (:article
   (:h3 "Motivations... (pt. 2)")
   (:ul
    (:li "Ego-boosting but not egotism. About self-satisfaction and self-recognition. Don't brag, let your work brag for you. About self-improvement, efficacy.")
    (:li "Reputation as a way of signaling expertise. Market signals! Feedback is needed to improve and distance helps with objectivity and flaws. What better way than status in a community of experts?")
    (:li "Communities should empower individuals to help themselves.")))

  (:article
   (:h3 "But what about competition for status?")
   (:p "Several reasons it doesn't overwhelm...")
   (:ul
    (:li "Pretty hard if you can't write code that works. \"Let the code decide.\"")
    (:li "Largely mitigated by shared beliefs and membership in a community with shared values.")
    (:li "The only way to get better is to build more stuff!")))

  (:article
   (:h3 "Scarcity or Abundance?")
   (:p "Abundance")
   (:ul
    (:li "Framed by some people as a Gift Economy, where status comes from giving away property.")
    (:li "- Plausible enough. A gift economy can make sense...at the very top of Maslow's Hierarchy...")
    (:li "\"Rings and jewels are not gifts, but apologies for gifts. The only gift is a portion of thyself.\" - Ralph Waldo Emerson")))

  (:article
   (:h3 "Scarcity!")
   (:ul
    (:li "The abundance exists but in bandwidth and CPU cycles. Human cycles are what matter for software.")
    (:li "The scarce resource in this system is the time and energy of skilled, creative, focused individuals.")))

  (:article
   (:h3 "The Free Rider Problem")
   (:p "Public Goods generally require government provision because of the free rider problem.")
   (:p "Why not just take? Non-rival *and* non-excludable?")
   (:p "Worse still, why create in the first place?"))

  (:article
   (:h3 "Hypothesis")
   (:p "Software is not just a non-rival good, it's actually Anti-Rival!")
   (:p "Meaning that it's a network good and receives positive externalities from free riders.")
   (:p "Even free riders actually enhance the utility of the software!")
   (:p "How could this be..."))

  (:article
   (:h3 "Network dowhatnow?")
   (:p "Network Effect: The impact on the value of a product that one user has on the product for other users.")
   (:p "Positive Externality: The more people that use it, the more useful it is!")
   (:p "Why software? Bugfixing, testing, translation. Users turn to devs and back again!")
   (:p "-- Even a small percentage is HUGE. Still needs *some* balance against userbase.")
   (:p "Large groups thus thrive better. Flip on traditional collective action problems."))

  (:article
   (:h3 "The Challenge Shifts: Coordinating Contributions")
   (:p "Forking - Occasional forks are needed, even endorsed!")
   (:p "-- Ex.: Lucid/XEmacs, Samba NG, etc")
   (:p "Licenses *explicitly* designed to empower forking...")
   (:ul
    (:li "But the cost to fork can be high (projects, not repos)")
    (:li "Must establish legitimacy.")
    (:li "Struggle to integrate new contributions to original project.")
    (:li "Division of contributor pool, less overall useful patches!")
    (:li "And maintenance efforts? /me dies")))

  (:article
   (:h3 "Forking Success Stories")
   (:p "Resemble John Locke's Homestead Principle/Labor Theory of Ownership from his Second Treatise on Government.")
   (:p "Three Paths")
   (:ul
    (:li "Work the land to own it.")
    (:li "Claim land that is unused/abandoned.")
    (:li "Have it passed on to you.")))

  (:article
   (:h3 "What about authority?")
   (:p "\"Talk is cheap, show me the code.\" - Linus Torvalds")
   (:ul
    (:li "Seniority credentials, even \"ownership\" ultimately subservient to techincal concerns.")
    (:li "Demonstrated work is the only law. \"Let the code decide.\"")))

  (:article
   (:h3 "Fine. What isn't Open Source good at?")
   (:p "Being a panacea or silver bullet.")
   (:p "Creating new markets (usually)")
   (:p "Design or UX-heavy software, games, etc")
   (:p "-- Are these IPs less well-suited to the OS process than code? If so, why?"))

  (:article
   (:h3 "Non-Code OS Examples?")
   (:p "Structured data definitely!")
   (:ul
    (:li "Wikipedia")
    (:li "OpenStreetMap"))
   (:p "Structured Products? ...not so much")
   (:ul
    (:li "Open Hardware...")
    (:li "Pharmaceuticals"))
   (:p "Maybe. Still waiting..."))

  (:article
   (:h1 :align "center" "Questions?")))
