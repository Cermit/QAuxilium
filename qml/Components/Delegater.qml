import QtQuick 1.0

Rectangle {
    property alias model_text: listDelegateText.text

    id: listDelegateRectangle
    height: listDelegateText.height * 1.5
    width: parent.width-6
    anchors.horizontalCenter: parent.horizontalCenter
    radius: 15
    color: ListView.isCurrentItem ? "#dfebf9" : "transparent"
    Text {
        id: listDelegateText
        font.pointSize: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 2
        text: model.inhalt
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {liste.currentIndex = index; console.log(index)}
    }
}
