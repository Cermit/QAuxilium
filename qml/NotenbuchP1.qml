import QtQuick 1.0

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
    onBackClicked: app_window.state = "main_menu";
}

//creates the menu item at the toolbar
Toolbar_Menu {
    id: toolbar_menu
    objectName: "toolbar_menu"
}

//---------------------------------now first unique window elements-----------------------------------

Text { //just the title
    id: notenbuch_title
    objectName: "notenbuch_title"
    text: "Notenbuch:"
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
        model: Students_Model{}
        anchors.fill: parent
        clip: true
        interactive: true
        delegate: Delegater{
        model_text: model.name
        }
        }
    }
}
