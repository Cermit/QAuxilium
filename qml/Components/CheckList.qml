import QtQuick 1.0

/*
  Hinweise:
  Die Höhe und Breite der Liste können über die unten aufgeführten
  Properties angesprochen werden. Auch das Model kann gewählt werden
  wie auch der Text.
*/

Rectangle {
    property alias height: check_list_box.width
    property alias width: check_list_box.width
    property alias model: ListView.model
    property alias textSize: text_delegate.font.pointSize

    id: check_list_box
    width: 200
    height: 200
    color: "white"

    Component {
        id: delegate

        Item {
            id: wrapper
            width: check_list_box.width
            height: 70

            Row {
                Image {
                    id: tickBox
                    source: isTicked ? "img/tick.png" : "img/notick.png"
                    width: 24
                    height: 24

                    MouseArea {
                        anchors.fill: parent;
                        onClicked: {
                            studentsModel.setProperty(index, "isTicked", ! studentsModel.get(index).isTicked);
                        }
                    }
                }
                Column {
                    x: 5; y: 5
                    Text {
                        id: text_delegate
                        font.pointSize: 18
                        text: '<b>Name:</b> ' + name }
                }
            }
        }
    }

    ListView {
        id: listView
        width: parent.width
        height: parent.height

        model: Students_Model{id: studentsModel}
        delegate: delegate
        focus: true
    }
}
