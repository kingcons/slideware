(in-package :slideware)

(defslides (:title "Planeswalking - A StrangeLoop2012 Magic the Gathering Unsession"
            :path "/Users/kgann/tmp.html"
            :template "template-io2011"
            :slides-js-src "http://redlinernotes.com/docs/html5slides/slides.js"
            :layout "layout-faux-widescreen")

  (:article
    (:h1 "Planeswalking:" (:br) "A Crash Course")
    (:p "Brit Butler" (:br) "2012-09-24")
    (:p (:i (:small "(use arrow keys or PgUp/PgDown to move slides)"))))

  (:article
    (:h3 :align :center "The Basics")
    (:p (:b "Starting State"))
    (:ul
      (:li "Both players have 20 life.")
      (:li "Both players have 60 card decks.")
      (:li "Both players draw 7 cards." (:br)
           (:i (:small "Note: You can mulligan if your opening hand is garbage."))))
    (:p (:b "Win Conditions"))
    (:ol
      (:li "Opponent has life <= 0.")
      (:li "Opponent cannot draw a card when required."))
    (:br)
    (:p "Players take turns back and forth until someone wins."))

   (:article
     (:h3 :align :center "The Golden Rule")
     (:br) (:br)
     (:b "The cards are " (:span :class :red "always") " right.")
     (:br) (:br)
     (:p "If the cards contradict the rules in any way, the cards take precedence.")
     (:br) (:br) (:br)
     (:p :align :center (:i (:span :class :green "Hack the game!"))))

     (:article
       (:h3 :align :center "Card Colors")
       (:img :align :left :src "pacc/colors.jpg")
       (:p (:img :align :right :src "pacc/card.jpg"))
       (:br) (:br) (:br) (:br) (:br)
       (:br) (:br) (:br) (:br) (:br)
       (:p "Cards can have more than one color.")
       (:p "Color is indicated by border and cost.")
       (:p "Lands and artifacts are considered colorless."))

   (:article
     (:h3 :align :center "Card Types")
     (:ul
       (:li (:a :href "pacc/land.jpg" "Land"))
       (:li (:a :href "pacc/artifact.jpg" "Artifact"))
       (:li (:a :href "pacc/creature.jpg" "Creature"))
       (:li (:a :href "pacc/enchantment.jpg" "Enchantment"))
       (:li (:a :href "pacc/instant.jpg" "Instant"))
       (:li (:a :href "pacc/sorcery.jpg" "Sorcery")))
     (:br)
     (:p "Everything but land is a " (:b (:i "spell")) ".")
     (:p "Anything that stays on the battlefield is a " (:b (:i "permanent")) ".")
     (:p "Land is a persistent resource used to cast (pay for) spells.")
     (:p "You may only play one land per turn."))

   (:article
     (:h3 :align :center "Turn Structure")
     (:ol
       (:li "Untap - Reset renewable resources") (:br)
       (:li "Upkeep - Probably a nop, or pay for things") (:br)
       (:li "Draw") (:br)
       (:li "First Main Phase - Play a land if possible") (:br)
       (:li "Optional Combat") (:br)
       (:li "Second Main Phase - Play post-combat spells if desired") (:br)
       (:li "Discard - Discard until 7 or fewer cards are in your hand")))

   (:article
     (:h3 :align :center "Combat: How does it work?")
     (:ol
       (:li "Declare attackers") (:br)
       (:li "Opponent declares blockers") (:br)
       (:li "Deal combat damage"))
     (:br)
     (:p "Not so bad, right?"))

   (:article
     (:h3 :align :center "Popular Strategies/Deck Archetypes")
     (:br) (:br)
     (:li "The Tribal Deck (Goblins, Vampires, etc)") (:br)
     (:li "The Weenie/Sligh Deck (Cheap spells, swarm tactics)") (:br)
     (:li "The Control Deck") (:br)
     (:li "The Creature Control Deck") (:br)
     (:li "The Combo Deck") (:br)
     (:li "The Misery Deck (Mill, Lifegain, Stasis, etc)"))

   (:article
     (:br) (:br)
     (:h3 :align :center "Pair up.")
     (:h1 :align :center "Let's do this!!!")))
