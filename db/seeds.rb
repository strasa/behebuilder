# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Behemoth Instincts
  Instinct.create([
      {name: "Nightmarish", description: "This behemoth is unpredictable and dangerous. It draws two additional cards in its initial hand."},
      {name: "Berserker", description: "At the beginning of the round, draw a card. On an 8+, the Behemoth will deal damage to the Atlas crew and draw instead of advancing this round."},
      {name: "Vengeful", description: "When taking damage from this behemoth, only 1 Atlas must take all the damage."},
      {name: "Predator", description: "If no Atlas takes module damage, the Behemoth draws a card. (Cannot take with Holds a Grudge)"},
      {name: "Relentless", description: "At the end of every turn flip a card. If the value is greater than 5+ the Category of the behemoth, it advances towards the city regardless of being attacked."},
      {name: "Stalker", description: "At the end of a round where the Behemoth was crit, pick up all non face cards, shuffle them, and lay them face down."}
    ])

