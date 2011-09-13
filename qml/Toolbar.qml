import QtQuick 1.0


Item {
    id: toolbar_item
    width: 480
    height: 800
    z: 1

Rectangle {
    id: toolbar_shadow
    width: parent.width
    height: 2
    color: "#dddede"
    anchors.bottom: toolbar.top
    anchors.bottomMargin: 2
}

    Rectangle {
    id: toolbar
    width: parent.width
    height: 85
    anchors.bottom: toolbar_item.bottom
    anchors.bottomMargin: 15
    gradient: Gradient {
        GradientStop {position: 0.0; color: "#e7e8e9"}
        GradientStop {position: 0.85; color: "#d0d2d2"}
            }
}

     Rectangle {
     id: toolbar_bottom_radius
     width: parent.width
     height: 30
     radius: 15
     anchors.verticalCenter: toolbar.bottom
     gradient: Gradient {
           GradientStop {position: 0.85; color: "#d0d2d2"}
           GradientStop {position: 1.0; color: "#d0d3d3"}
            }
        }
}
