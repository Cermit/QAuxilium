import QtQuick 1.0

Rectangle {
    id: main_menu
    width: parent.width
    height: parent.height
    y: +800
    color: "black"
    opacity: 0.85

    Rectangle {
        id: menu_background
        width: parent.width
        height: 120
        gradient: Gradient {
            GradientStop {position: 0.0; color: "#e7e8e9"}
            GradientStop {position: 0.85; color: "#d0d2d2"}
                }
        anchors.bottom: parent.bottom

    Rectangle {
            id: settings_button
            border.color: "#aaaaaa"
            border.width: 2
            width: 440
            height: 100
            radius: 15
            anchors.centerIn: menu_background
            gradient: Gradient {
                GradientStop {position: 0.0; color: "white"}
                GradientStop {position: 0.85; color: "#e7e8e9"}
            }
            MouseArea {
                id: menu_settings_clicked
                anchors.fill: parent
                onClicked: {
                }
            }

            Text {
                id: menu_settings_text
                text: "Settings"
                font.bold: true
                font.family: "Nokia Pure Text"
                font.pointSize: 24
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 20
                color: menu_settings_clicked.pressed ? "#aaaaaa" : "black"
            }
        }
    }

    MouseArea {
        x: 0
        y: 520
        anchors.fill: parent
        onClicked: {
            workspace.state = ""
        }
        }
}
