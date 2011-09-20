import QtQuick 1.0

Rectangle {
    id: toolbar_item
    width: 96
    height: 95
    z: 2
    x: 0
    y: 705
    color: toolbar_item_clicked.pressed ? "white" : "transparent"

    Text {
        id: toolbar_item_text
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "+"
        font.family: "Nokia Pure Text"
        color: "black"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 50

        MouseArea {
            id: toolbar_item_clicked
            anchors.fill: parent
            onClicked: {

            }

            }

            }

            }
