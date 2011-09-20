import QtQuick 1.0

Rectangle {
    id: background
    width: 480
    height: 800
    z: 0
    color: "black"

    Rectangle {
        id: workspace
        width: parent.width
        height: parent.height
        color: "#eff0f1"
        radius: 15
   }
}

