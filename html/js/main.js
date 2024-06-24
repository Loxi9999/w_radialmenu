'use strict';

var RadialMenuV = null;
let scale = 1.0;
let opened = false;

$(document).ready(function(){

    window.addEventListener('message', function(event){
        var eventData = event.data;

        if (eventData.action == "ui") {
            if (eventData.radial && !opened) {
                opened = true
                createMenu(eventData.items)
                RadialMenuV.open();
            } else {
                opened = false
                RadialMenuV.close();
            }
        }

        if (eventData.action == "setPlayers") {
            createMenu(eventData.items)
        }

        if(eventData.action == "setScale") {
            scale = eventData.scale;
        }
    });
});

function createMenu(items) {
    RadialMenuV = new RadialMenu({
        parent: document.body,
        size: 350 * scale,
        menuItems: items,
        onClick: function(item) {
            if (item.closeMenu) {
                RadialMenuV.close();
            }

            if (item.event !== null) {
                if (item.data !== null) {
                    $.post(`http://${GetParentResourceName()}/selectItem`, JSON.stringify({
                        itemData: item,
                        data: item.data
                    }))
                } else {
                    $.post(`http://${GetParentResourceName()}/selectItem`, JSON.stringify({
                        itemData: item
                    }))
                }
            }
        }
    });
}

// $(document).on('keydown', function() {
//     switch(event.keyCode) {
//         case 27: // ESC
//             RadialMenuV.close();
//             break;
//     }
// });