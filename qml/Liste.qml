import QtQuick 1.0

//Externer Part der die "delegate" sowie "highlight" Funktion übernimmt,
//die entsprechenden Models werden per Property Alias ansgesprochen!

Rectangle {

        property alias listen_width: list_rec.width
        property alias listen_height: list_rec.height
        property alias listen_model: liste.model
        //property alias listen_text: listDelegateText.text

        id: list_rec
        width: 200
        height: 200
        radius: 15
        color: "white"
        border.width: 2
        border.color: "grey"

        Component {
                id: listDelegate
                Rectangle {
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
            }

    ListView {
        id: liste
        model: Classes_Model{}
        anchors.fill: parent
        clip: true
        interactive: true
        delegate: listDelegate
        }
    }
