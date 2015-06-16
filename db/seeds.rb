# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Behemoth Instincts
  Instinct.create([
      {name: "Nightmarish", description: "This behemoth is unpredictable and dangerous. It draws two additional cards in its initial hand.", cost: "0"},
      {name: "Berserker", description: "At the beginning of the round, draw a card. On an 8+, the Behemoth will deal damage to the Atlas crew and draw instead of advancing this round.", cost: "1"},
      {name: "Vengeful", description: "When taking damage from this behemoth, only 1 Atlas must take all the damage.", cost: "1"},
      {name: "Predator", description: "If no Atlas takes module damage, the Behemoth draws a card. (Cannot take with Holds a Grudge)", cost: "2"},
      {name: "Relentless", description: "At the end of every turn flip a card. If the value is greater than 5+ the Category of the behemoth, it advances towards the city regardless of being attacked.", cost: "D"},
      {name: "Stalker", description: "At the end of a round where the Behemoth was crit, pick up all non face cards, shuffle them, and lay them face down.", cost: "C"}
    ])

  Category.create([
    {name: "One", value: 1, build_points: 4, initial_hand: 4, initial_hand_draw_per_atlas: 1, draw: 0, draw_per_atlas: 1},
    {name: "Two", value: 2, build_points: 6, initial_hand: 5, initial_hand_draw_per_atlas: 2, draw: 0, draw_per_atlas: 1},
    {name: "Three", value: 3, build_points: 8, initial_hand: 6, initial_hand_draw_per_atlas: 3, draw: 1, draw_per_atlas: 1},
    {name: "Four", value: 4, build_points: 10, initial_hand: 7, initial_hand_draw_per_atlas: 4, draw: 0, draw_per_atlas: 2},
    {name: "Five", value: 5, build_points: 12, initial_hand: 8, initial_hand_draw_per_atlas: 5, draw: 1, draw_per_atlas: 2}
  ])
