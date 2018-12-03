function scrollListener() {
  document.addEventListener('scroll', function() {
    const next_link = document.querySelector('.pagination .next a');
    if (next_link) {
      let more_posts_url = next_link.getAttribute('href')
      if (more_posts_url && isScrolledIntoView(next_link)) {
        document.querySelector('.pagination').innerHTML = ('<img src="https://res.cloudinary.com/dfcud6por/image/upload/v1543849474/ajax-loader.gif" alt="Loading..." title="Loading..." />');
        $.getScript(more_posts_url);
      }
    }
  });
}

function isScrolledIntoView(elem) {
  var docViewTop = $(window).scrollTop();
  var docViewBottom = docViewTop + $(window).height();
  var elemTop = $(elem).offset().top;
  var elemBottom = elemTop + $(elem).height();
  return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}

scrollListener()

