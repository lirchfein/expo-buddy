function clickPhotoSubmitButton() {
  const button_submit = document.querySelector(".button-submit")
  button_submit.click()
}

function addEventListenersToPhotoForm() {
  const photo_form = document.getElementById('new_picture')
  photo_form.addEventListener('change', clickPhotoSubmitButton)
}

export {addEventListenersToPhotoForm};
