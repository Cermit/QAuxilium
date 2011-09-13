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

Rectangle { //background of the box
    id: students_box
    objectName: "students_box"
    height: 605
    width: 450
    radius: 15
    color: "white"
    border.width: 2
    border.color: "grey"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 80
}

Flickable {
    id: flick_notenbuch
    objectName: "flick_notenbuch"
    height: 605
    width: 450
    clip: true  //so the text stays "in the box" - not sure why, but it's not in the doc!
    contentHeight: student_names.height
    contentWidth: student_names.width
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 80


    Text { //AT THE MOMENT JUST TEXT - LATER IT SHOULD BE A LISTVIEW
            id: student_names
            anchors.horizontalCenter: students_box.horizontalCenter
            anchors.top: students_box.top
            anchors.left: parent.left
            anchors.leftMargin: 5
            text: "Niels Bohr<p>Marie Curie<p>Albert Einstein<p>Andreas Schönfelder"
            font.pointSize: 24
            width: 450

            MouseArea {
                anchors.fill: parent
                onClicked: app_window.state = "noten_p2"
            }
        }
    }
}
