import QtQuick 1.0

Rectangle {

    property alias picture: item_icon.source
    property alias text: item_text.text

    id: toolbar_item
    width: 96
    height: 95
    z:2
    x: 192
    y: 705
    color: toolbar_item_clicked.pressed ? "white" : "transparent"

    MouseArea {
        id: toolbar_item_clicked
        anchors.fill: parent
        onClicked: {

        }

        }

    Text {
        id: item_text
        anchors.centerIn: parent
        text: ""
        font.family: "Nokia Pure Text"
        color: "black"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 24
}

    Image {
        id: item_icon
        width: 56
        height: 48
        source: ""
        anchors.centerIn: parent
            }
}
