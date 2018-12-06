function clickPhotoSubmitButton() {
  const button_submit = document.querySelector(".button-submit")
  button_submit.click();
  // show spinning circle
  const pic_loading = '<div class="picture-loader"><h3>PICTURES</h3><img src="https://res.cloudinary.com/dfcud6por/image/upload/v1543849474/ajax-loader.gif"/></div>'
  const pics_title_wrapper = document.querySelector('.picture-title');
  pics_title_wrapper.innerHTML = pic_loading
}

function addEventListenersToPhotoForm() {
  const photo_form = document.getElementById('new_picture')
  if (photo_form) {
    photo_form.addEventListener('change', clickPhotoSubmitButton)
  }
}

function clickPhotoUploadButton() {
  const form_button_photo_upload = document.getElementById("button-photo-upload")
  form_button_photo_upload.click()
}

function addEventListenersToPhotoUploadBtn() {
  const add_icon_button = document.getElementById('photo-upload')
  add_icon_button.addEventListener('click', clickPhotoUploadButton)
}

addEventListenersToPhotoForm();
addEventListenersToPhotoUploadBtn();

