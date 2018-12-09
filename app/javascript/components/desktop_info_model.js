function infoModalShow() {
  if (window.innerWidth > 600 && sessionStorage["DesktopInfoModalShown"] != 'yes') {
    const infoModalBtn = document.getElementById('modal-button-desktop-info')
    infoModalBtn.click()
    //sessionStorage["DesktopInfoModalShown"] = 'yes';
  }
}

function removeModal() {
  if (window.innerWidth < 401 && document.getElementById('modal-button-desktop-info')) {
    $('#infoModal').modal('hide')
  }
}

function addEventListenerToWindowResize() {
  window.addEventListener('resize', removeModal)
}

export {infoModalShow};

export {addEventListenerToWindowResize};
