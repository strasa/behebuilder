$(document).ready ->
  $('#category.dropdown-button').click ->
    $('#category-menu.dropdown-menu').toggleClass 'show-menu'
    $('#category-menu.dropdown-menu > li').click ->
      $('#category-menu.dropdown-menu').removeClass 'show-menu'
    $('#category-menu.dropdown-menu.dropdown-select > li').click ->
      $('#category.dropdown-button').html $(this).html()

    #This is the click handler for the subsection, which won't exist until
    #the previous section is actually clicked.
    $('#instinct.dropdown-button').click ->
      $('#instinct-menu.dropdown-menu').toggleClass 'show-menu'
      $('#instinct-menu.dropdown-menu > li').click ->
        $('#instinct-menu.dropdown-menu').removeClass 'show-menu'
      $('#instinct-menu.dropdown-menu.dropdown-select > li').click ->
        $('#instinct.dropdown-button').html $(this).html()

