function magicButton() {
  const clicky = document.getElementById('clicky-button')
  if (clicky) {
    clicky.addEventListener('click', function() {
      const elems = Array.from(document.querySelectorAll('.options-button'));
      let counter = 0
      elems.reverse().forEach(function(elem) {
        setTimeout(function() {
        elem.classList.toggle('big-grow')
        }, counter)
        counter += 300
      });
    });
  }
}
export { magicButton };
