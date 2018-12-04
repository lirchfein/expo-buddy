function myteston() {
    document.getElementById("overlay").style.display = "block";
}

function off() {
    document.getElementById("overlay").style.display = "none";
}

// function clickOverlayButton() {
//   const overlay_display = document.getElementById("button-photo-upload")
//   //console.log(form_button_photo_upload);
//   form_button_photo_upload.click()
// }

function addEventListenersToOverlayBtn() {
  const overlay_button = document.getElementById('display-overlay')
  overlay_button.addEventListener('click', myteston)
}

addEventListenersToOverlayBtn();
