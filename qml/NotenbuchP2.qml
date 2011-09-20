import QtQuick 1.0
import "Components"
import "Models"

//creates the main window
Workspace {
    id: workspace
    objectName: "workspace"

//creates the toolbar
Toolbar {
    id: toolbar
    objectName: "toolbar"
}

//creates first item of the toolbar
Toolbar_Back {
    onBackClicked: app_window.state = "noten_p1";
}

//creates the menu item at the toolbar
Toolbar_Menu {
    id: toolbar_menu
    objectName: "toolbar_menu"
}

//---------------------------------now first unique window elements-----------------------------------

Text { //just the title
    id: noten_name_title
    objectName: "noten_name_title"
    text: "Niels Bohr"                       //Änderungen nötig um Namen anzupassen an geklickten Namen
    font.family: "Nokia Pure Text"
    font.pointSize: 32
    color: "lightblue"
    anchors.left: parent.left
    anchors.leftMargin: 15
    anchors.top: parent.top
    anchors.topMargin: 10
}

Rectangle {
        id: class_list
        width: 450
        height: 605
        radius: 15
        color: "white"
        border.width: 2
        border.color: "grey"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 80

    ListView {
        id: liste
        model: Marks_Model{}
        anchors.fill: parent
        clip: true
        interactive: true
        delegate: Delegater{
        model_text: model.note
            }
        }
    }
}
