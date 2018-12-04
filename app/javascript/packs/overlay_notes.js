function clickToDisplayNote() {
    const overlay_display = document.getElementById("overlay")
    overlay_display.classList.remove('no-show')
}

function clickToCloseNote() {
  // close the window
    const overlay_display = document.getElementById("overlay")
    overlay_display.classList.add('no-show')
  // clean the textbox
    const message = document.getElementById("note_message")
    message.value = ""
}

function addEventListenersToDisplayNoteBtn() {
  const add_note_button = document.getElementById('display-overlay')
  add_note_button.addEventListener('click', clickToDisplayNote)
}

function addEventListenersToCloseNoteBtn() {
  const close_note_button = document.getElementById('btn-close')
  close_note_button.addEventListener('click', clickToCloseNote)
}

function addEventListenersToCreateNoteBtn() {
  const close_note_button = document.getElementById('btn-note')
  close_note_button.addEventListener('click', clickToCloseNote)
}

addEventListenersToDisplayNoteBtn();
addEventListenersToCloseNoteBtn();
addEventListenersToCreateNoteBtn();

