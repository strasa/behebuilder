class @CategoryDropdown extends Dropdown
  constructor: -> 
    super('category')

  click_handler: ->
    $('#instinct.dropdown-button').removeAttr('disabled');

class @InstinctDropdown extends Dropdown
  constructor: -> 
    super('instinct')

  click_handler: ->

  set_value: (target) =>
    $("##{@id}.dropdown-button").html $(target).closest('li').find('.card-header').html()

$ ->
  new CategoryDropdown
  new InstinctDropdown
