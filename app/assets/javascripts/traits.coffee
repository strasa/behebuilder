class @Trait
  constructor: (@name, @type, @cost) ->

class @TraitManager
  constructor: ->
    @traits = []
    @max_build_points = 0

  add_trait: (trait) ->
    @traits.push trait

  total_cost: ->
    total = 0
    for trait in @traits
      total += trait.cost
    total

  set_max_build_points: (max_num) ->
    @max_build_points = max_num
