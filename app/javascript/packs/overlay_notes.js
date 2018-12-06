function clickToDisplayNote() {
    const message = document.getElementById("note_message")
    message.value = ""
    const overlay_display = document.getElementById("overlay")
    overlay_display.classList.remove('no-show')
}

function clickToCloseNote() {
    const overlay_display = document.getElementById("overlay")
    overlay_display.classList.add('no-show')
}

function addEventListenersToDisplayNoteBtn() {
  const add_note_button = document.getElementById('add-notey')
  add_note_button.addEventListener('click', clickToDisplayNote)
}

function addEventListenersToCloseNoteBtn() {
  const close_note_button = document.getElementById('btn-close')
  if (close_note_button) {
    close_note_button.addEventListener('click', clickToCloseNote)
  }
}

function addEventListenersToCreateNoteBtn() {
  const create_note_button = document.getElementById('btn-note')
  if (create_note_button) {
  create_note_button.addEventListener('click', clickToCloseNote)
  }
}

addEventListenersToDisplayNoteBtn();
addEventListenersToCloseNoteBtn();
addEventListenersToCreateNoteBtn();

