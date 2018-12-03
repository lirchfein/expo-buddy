function togglingVisibilityListItems(tab) {
  const descriptionDiv = document.querySelector(".exhibitor-description")
  const notesDiv = document.querySelector(".exhibitor-user-page")
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
        item.classList.remove('exhibitor-select')
      })
      tab.classList.add('exhibitor-select')
      togglingVisibilityListItems(tab)
    })
  })
}

export {addEventListenersToExhibitorTabs};

