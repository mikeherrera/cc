$ ->
  $('.dropdown-toggle').dropdown()
  page = window.location.pathname.split("/")[1]

  page_obj = '#' + page

  if (page != 'home' && page != 'whats-new' && page != 'about' && page != 'services' && page != 'contact')
    $('#catalogs').addClass('active') 
  else
    $(page_obj).addClass('active')
