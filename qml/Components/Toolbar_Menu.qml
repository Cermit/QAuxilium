import QtQuick 1.0

Rectangle {
    id: menu_item
    width: 96
    height: 95
    z: 2
    x: 384
    y: 705
    color: menu_item_clicked.pressed ? "white" : "transparent"

    Image {
        id: menu_item_img
        anchors.centerIn: parent
        source: "img/menu.png"
    }
}

