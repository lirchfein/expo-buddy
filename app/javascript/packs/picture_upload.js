function clickPhotoSubmitButton() {
  const button_submit = document.querySelector(".button-submit")
  button_submit.click()
}

function addEventListenersToPhotoForm() {
  const photo_form = document.getElementById('new_picture')
  photo_form.addEventListener('change', clickPhotoSubmitButton)
}

function clickPhotoUploadButton() {
  const form_button_photo_upload = document.getElementById("button-photo-upload")
  //console.log(form_button_photo_upload);
  form_button_photo_upload.click()
}

function addEventListenersToPhotoUploadBtn() {
  const add_icon_button = document.getElementById('add-icon')
  add_icon_button.addEventListener('click', clickPhotoUploadButton)
}

addEventListenersToPhotoForm();
addEventListenersToPhotoUploadBtn();

