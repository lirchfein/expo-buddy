const tabs = document.querySelectorAll(".expo-tab")

function addEventListenersToExpoTabs() {
  tabs.forEach( function(tab) {
    tab.addEventListener('click', function(){
      tabs.forEach( function(item) {
        item.classList.remove('toggle-border')
      })
      tab.classList.add('toggle-border')
    })
  })
}

export {addEventListenersToExpoTabs};
