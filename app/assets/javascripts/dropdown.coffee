class @Dropdown
  constructor: (@id) ->
    @bind()

  bind: =>
    menu_selector = "##{@id}-menu"

    $("##{@id}.dropdown-button").click =>
      if $(event.target).attr('disabled') != 'disabled' 
        $("#{menu_selector}.dropdown-menu").toggleClass 'show-menu'
        $("#{menu_selector}.dropdown-menu > li").click =>
          $("#{menu_selector}.dropdown-menu").removeClass 'show-menu'
        $("#{menu_selector}.dropdown-menu.dropdown-select > li").on 'click', (event) =>
          $("##{@id}.dropdown-button").html $(event.target).html()
          @click_handler()
