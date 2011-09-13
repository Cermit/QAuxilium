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
    text: "Niels Bohr"
    font.family: "Nokia Pure Text"
    font.pointSize: 32
    color: "lightblue"
    anchors.left: parent.left
    anchors.leftMargin: 15
    anchors.top: parent.top
    anchors.topMargin: 10
}

Rectangle { //background of the box
    id: mark_box
    objectName: "mark_box"
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
    id: flick_mark
    objectName: "flick_mark"
    height: 605
    width: 450
    clip: true  //so the text stays "in the box" - not sure why, but it's not in the doc!
    contentHeight: student_marks.height
    contentWidth: student_marks.width
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 80


    Text { //AT THE MOMENT JUST TEXT - LATER IT SHOULD BE A LISTVIEW
            id: student_marks
            anchors.horizontalCenter: mark_box.horizontalCenter
            anchors.top: mark_box.top
            anchors.left: parent.left
            anchors.leftMargin: 5
            text: "1. Klausur: 1+<p>2. Klausur: 2<p>Leistungskontrolle: 1-<p>Referat: 1"
            font.pointSize: 24
            width: 450
        }
    }
}
