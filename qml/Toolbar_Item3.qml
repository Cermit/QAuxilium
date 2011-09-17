import QtQuick 1.0

Rectangle {
    id: toolbar_item
    width: 96
    height: 95
    z:2
    x: 192
    y: 705
    color: toolbar_item_clicked.pressed ? "white" : "transparent"

    Text {
        id: menu_item_img
        anchors.centerIn: parent
        text: ""
        font.family: "Nokia Pure Text"
        color: "black"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 24

        MouseArea {
            id: toolbar_item_clicked
            anchors.fill: parent
            onClicked: {

            }

            }

            }

            }

