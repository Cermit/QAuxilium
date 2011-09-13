import QtQuick 1.0

Rectangle {
    id: menu_item
    width: 96
    height: 95
    z: 2
    x: 384
    y: 705
    color: toolbar_item_clicked.pressed ? "white" : "transparent"

    Image {
        id: menu_item_img
        anchors.centerIn: parent
        source: "menu.png"

        MouseArea {
            id: toolbar_item_clicked
            anchors.fill: parent
            onClicked: {
                workspace.state = "menu"
            }
        }

    }
}

