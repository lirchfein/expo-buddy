const tabs = document.querySelectorAll(".expo-tab")


function togglingVisibilityListItems(tab) {
  const exhibitorDiv = document.querySelector(".exhibitor-list")
  const favoriteDiv = document.querySelector(".favorite-list")
   if (tab.classList.contains('right')) {
    exhibitorDiv.classList.remove('toggle-visibility')
    favoriteDiv.classList.add('toggle-visibility')
   }else {
    exhibitorDiv.classList.add('toggle-visibility')
    favoriteDiv.classList.remove('toggle-visibility')
   }
}

function addEventListenersToExpoTabs() {
  tabs.forEach( function(tab) {
    tab.addEventListener('click', function(){
        console.log('hello')
      tabs.forEach( function(item) {
        item.classList.remove('toggle-border')
      })
      tab.classList.add('toggle-border')
      togglingVisibilityListItems(tab)
    })
  })
}

export {addEventListenersToExpoTabs};
