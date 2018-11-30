function togglingVisibilityListItems(tab) {
  const descriptionDiv = document.querySelector(".exhibitor-description")
  const notesDiv = document.querySelector(".exhibitor-notes")
   if (tab.classList.contains('right')) {
    descriptionDiv.classList.remove('no-show')
    notesDiv.classList.add('no-show')
   }else {
    descriptionDiv.classList.add('no-show')
    notesDiv.classList.remove('no-show')
   }
}

function addEventListenersToExhibitorTabs() {
  const tabs = document.querySelectorAll(".exhibitor-tab")
  tabs.forEach( function(tab) {
    tab.addEventListener('click', function(){
      tabs.forEach( function(item) {
        item.classList.remove('toggle-border')
      })
      tab.classList.add('toggle-border')
      togglingVisibilityListItems(tab)
    })
  })
}

export {addEventListenersToExhibitorTabs};
