class @CategoryDropdown extends Dropdown
  constructor: -> 
    super('category')

  click_handler: (target) ->
    $('#instinct.dropdown-button').removeAttr('disabled');
    $('.build_points').text $(target).attr('build_points')

class @InstinctDropdown extends Dropdown
  constructor: -> 
    super('instinct')

  click_handler: ->

  set_value: (target) =>
    $("##{@id}.dropdown-button").html $(target).closest('li').find('.card-header').html()

$ ->
  new CategoryDropdown
  new InstinctDropdown
