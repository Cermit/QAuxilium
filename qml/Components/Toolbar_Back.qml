import QtQuick 1.0
import Qt 4.7

Rectangle {
    id: backbutton

    signal backClicked()

    width: 60
    height: 60
    radius: 25
    z: 2
    x: 30
    y: 720
    border.color: "#dddede"
    border.width: 3
    gradient: Gradient {
        GradientStop {position: 0.0; color: "#e7e8e9"}
        GradientStop {position: 0.8; color: "#d0d2d2"}
            }

    Text {
        id: backbutton_text
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "←"
        font.family: "Nokia Pure Text"
        color: back_clicked.pressed ? "#c2c2c2" : "black"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 40

        MouseArea {
            id: back_clicked
            anchors.fill: parent
            onClicked: {
              backClicked();
            }
        }

    }
}

