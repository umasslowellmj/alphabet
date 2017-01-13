$ ->
  $('#words').imagesLoaded ->
    $('#words').masonry
      itemSelector: '.box'
      isFitWidth: true
