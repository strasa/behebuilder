class @CategoryDropdown extends Dropdown
  constructor: ->
    super('category')

  click_handler: (target) ->
    $('#instinct.dropdown-button').html "Click to Select"
    $('#instinct.dropdown-button').removeAttr('disabled')
    $('#instinct.dropdown-button').removeClass('disabled')
    window.traitManager.clear()
    window.traitManager.max_build_points = parseInt($(target).attr('build_points'))
    window.traitManager.category = parseInt($(target).attr('value'))
    $(document).trigger('bb_updateBuildPoints')

    # do the calculation on the initial_hand.
    stat = $(target).attr('initial_hand')
    stat_draw_per_atlas = $(target).attr('initial_hand_draw_per_atlas')
    stat_str = @initial_behemoth_stats_handler(stat, stat_draw_per_atlas)
    $('.initial_hand').text stat_str

    # do the calculation on the card_draw.
    stat = $(target).attr('card_draw')
    stat_draw_per_atlas = $(target).attr('card_draw_per_atlas')
    stat_str = @initial_behemoth_stats_handler(stat, stat_draw_per_atlas)
    $('.card_draw').text stat_str

    # grab all the instinct points and run calculations based on category value
    category = parseInt($(target).attr('value'))
    $cardPoints = $('.card-points')
    $cardPoints.each (i, cardPoint) ->
      $cardPoint = $(cardPoint)
      $pointValue = $cardPoint.find('.point-value')

      pointValue = $cardPoint.attr('points')
      if pointValue == 'C'
        pointValue = category
      else if pointValue == 'D'
        pointValue = category + 1

      $pointValue.text pointValue

  initial_behemoth_stats_handler: (stat, stat_draw_per_atlas) ->
    if  stat == '0'
      if stat_draw_per_atlas == '1'
        stat_str = 'A'
      else
        stat_str = "#{stat_draw_per_atlas}A"
    else
      if stat_draw_per_atlas == '1'
        stat_str = "#{stat} + A"
      else
        stat_str = "#{stat} + #{stat_draw_per_atlas}A"

class @InstinctDropdown extends Dropdown
  constructor: ->
    super('instinct')

  click_handler: (target) ->
    name = $(target).closest('li').find('.card-header-text').html()
    value = $(target).closest('li').find('.card-points').attr('points')
    # there can be only one ... ... instinct trait.
    window.traitManager.remove_type('instinct')
    window.traitManager.add_trait(new Trait(name, 'instinct', value))
    $(document).trigger('bb_updateBuildPoints')

  set_value: (target) =>
    $target = $(target).closest('li')
    $("##{@id}.dropdown-button").html $target.find('.card-header-text').html()

class @StatUpdater
  constructor: ->
    $(document).on("bb_updateBuildPoints", (event) ->
      curr_build_points = window.traitManager.total_cost()
      max_build_points = window.traitManager.max_build_points
      $('.build_points').text "#{curr_build_points}/#{max_build_points}"
    )

$ ->
  window.traitManager = new TraitManager
  new StatUpdater
  new CategoryDropdown
  new InstinctDropdown

