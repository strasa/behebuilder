class @Trait
  constructor: (@name, @type, @cost) ->

class @TraitManager
  constructor: ->
    @traits = []
    @max_build_points = 0
    @category = 0

  clear: ->
    @traits = []

  add_trait: (trait) ->
    @traits.push trait

  remove_type: (type) ->
    @traits = @traits.filter (trait) ->
      trait.type != type

  total_cost: ->
    total = 0
    for trait in @traits
      if `trait.cost == parseInt(trait.cost)`
        total += parseInt(trait.cost)
      else
        if trait.cost == 'C'
          total += @category
        else
          if trait.cost == 'D'
            total += @category + 1
    total
