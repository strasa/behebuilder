class @CategoryDropdown extends Dropdown
  constructor: -> 
    super('category')

  click_handler: ->
    $('#instinct.dropdown-button').removeAttr('disabled');

class @InstinctDropdown extends Dropdown
  constructor: -> 
    super('instinct')

  click_handler: ->

$ ->
  new CategoryDropdown
  new InstinctDropdown
