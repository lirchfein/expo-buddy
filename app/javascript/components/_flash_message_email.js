function flashMessageEmail() {
  const button = document.querySelector('.confirm-button')
  button.addEventListener('click', function() {
    $('.flash-message').fadeIn(400);
    $('.flash-message').html('<p> Email sent! </p>');
    $('.flash-message').delay(1200).fadeOut(500);
  })
}

export {flashMessageEmail};
