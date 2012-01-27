(in-package :slideware)

(defslides (:title "T3 - 01/27/2012"
            :path "/home/redline/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
   (:h1 "T3: Medley/Util is a Ghetto?" (:br))
   (:p "Brit Butler" (:br) "2012-01-27")
   (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
   (:h3 "About me")
   (:p "Sidebar was my waterloo...")
   (:img :src "http://images.icanhascheezburger.com/completestore/2009/3/6/128808346098451684.jpg"
         (:br) "(I'm this one)"))

  (:article
   (:h3 "A Util Adventure... (CMSMTA-140)")
   (:p "So tampabay's 'Now Playing' widget isn't updating...")
   (:ul
    (:li "Wind up in medley/util/caching " (:span :class "red" "four days") " later")
    (:li "TuneableCache lets you change memcache expiration time with a sitesetting...?"
         " " (:a :href "http://alltheragefaces.com/img/faces/large/surprised-gasp-l.png" "MIND BLOWN"))
    (:li "Any other callsites? No. And which sites use this sitesetting? Just one. Which? Guess.")
    (:li "In this moment I knew " (:a :href "http://alltheragefaces.com/img/faces/large/angry-desk-flip-l.png" "My Future")))
   (:p "Okay. WTF else is hiding in here?"))
  ;; http://alltheragefaces.com/img/faces/large/rage-rage-l.png

  (:article
   (:h3 "Indiana Jones Time (Code Spelunking, Archaeology)")
   (:img :height "80%" :width "80%" :src "http://redlinernotes.com/images/all-the-utils.jpg"))

  (:article
   (:h3 "What are we looking for?")
   (:ul
    (:li "Dead and Unused Code")
    (:li "Oft-used Utils")
    (:li "Underused Gems"))
   (:br) (:br)
   (:p "~4000 Lines of Python")
   (:p "~1400 of which are tests")
   (:p "Methodology: sloccount"))

  (:article
   (:h3 "What gets used a lot?")
   (:ul
    (:li "util/helpers - 106 imports")
    (:li "util/testing - 56 imports")
    (:li "util/templatetags/medley_urls - 37 imports")
    (:li "util/patching - 33 imports")
    (:li "util/caching - 21 imports")
    (:li "util/decorators - 21 imports")
    (:li "util/text - 18 imports")
    (:li "util/chrono - 14 imports")
    (:li "util/inspector - 10 imports")))

  (:article
   (:h3 "Preliminary findings: "
        (:a :href "http://alltheragefaces.com/img/faces/large/fuck-yeah-gtfo-clean-l.png" "Dead and/or Unused Code"))
   (:p "Methodology:" (:br) "grep -r  \"[m|t] medley.util\" * | cut -d ':' -f 2 | sort | uniq")
   (:ul
    (:li "util/fixturing - Painless (ish) Fixture Generation! via matt")
    (:li "util/forms - Generic Unique Field Handling! via rob")
    (:li "util/profiling/* - @profile decorator! via alex")
    (:li "util/template_tags/{broadcast_tags,querystring_tags,switch}")
    (:li "util/mocks/mockurllib")
    (:li "util/smartimporter")))

  (:article
   (:h3 "Preliminary findings: "
        (:a :href "http://alltheragefaces.com/img/faces/large/happy-epic-win-l.png" "Underused Gems"))
   (:ul
    (:li "util/decorators - via matt, rob, clay, nate, healey")
    (:li "util/mocks/* - via alex, meno, alfredo, justin, etc")
    (:li "util/iterator_tools - Lovely LC++ toys - via datagrok")
    (:li "util/inspector - URL resolution, field searches - via matt")
    (:li "util/geo - via kpatel, matt")
    (:li "util/parsers - rss+xml->json toys, via brandon, ironfroggy")))

  (:article
   (:h3 "Be Aware of Util " (:a :href "http://legacy-cdn.smosh.com/smosh-pit/122010/kitteh8.jpg" "(or else)"))
   (:ul
    (:li "I'm dumb, don't listen to me, see for yourself")
    (:li "Lots of cool and useful things in Medley")
    (:li "Happy Hacking!")))

  (:article
   (:h1 :align "center" "Q & A")
   (:p "Ask questions, berate me, challenge me, demand to see code, etc")
   (:p (:a :href "http://github.com/redline6561/slideware/blob/master/talks/med-util.lisp" "Slides Source"))))
