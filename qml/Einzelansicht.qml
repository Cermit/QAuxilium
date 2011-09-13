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

Image {//picture of the student
    id: singleview_pic
    objectName: "singleview_pic"
    height: 225
    width: 150
    anchors.left: parent.left
    anchors.leftMargin: 20
    anchors.top: parent.top
    anchors.topMargin: 10
    source: "img/Niels_Bohr.jpg"
}


Text { //name of the student
    id: singleview_name
    objectName: "singleview_name"
    text: "Niels Bohr"
    font.family: "Nokia Pure Text"
    font.pointSize: 32
    color: "lightblue"
    anchors.right: parent.right
    anchors.rightMargin: 20
    anchors.top: parent.top
    anchors.topMargin: 10
}

Text { //informations about the class of the student
    id: singleview_class
    objectName: "singleview_class"
    text: "Klasse 9a: Informatik"
    font.family: "Nokia Pure Text"
    font.pointSize: 18
    color: "black"
    anchors.right: parent.right
    anchors.rightMargin: 20
    anchors.top: singleview_name.bottom
    anchors.topMargin: 5
}

Text {//title for missing homework
    id: singleview_homework
    objectName: "singleview_homework"
    text: "fehlende Hausaufgaben:"
    font.family: "Nokia Pure Text"
    font.pointSize: 18
    color: "black"
    anchors.right: parent.right
    anchors.rightMargin: 20
    anchors.top: singleview_class.bottom
    anchors.topMargin: 5
}

Rectangle {//background for flickbox with missing homework
    id: singleview_missing_homework_bg
    objectName: "singleview_missing_homework_bg"
    height: 90
    width: 290
    radius: 15
    border.color: "grey"
    color: "white"
    anchors.right: parent.right
    anchors.rightMargin: 10
    anchors.top: singleview_homework.bottom
    anchors.topMargin: 5
}

Flickable {
    id: singleview_homework_flick
    objectName: "singleview_homework_flick"
    height: 90
    width: 290
    clip: true  //so the text stays "in the box" - not sure why, but it's not in the doc!
    contentHeight: missing_homework.height
    contentWidth: missing_homework.width
    anchors.right: parent.right
    anchors.rightMargin: 10
    anchors.top: singleview_homework.bottom
    anchors.topMargin: 5


    Text { //AT THE MOMENT JUST TEXT - LATER IT SHOULD BE A LISTVIEW
            id: missing_homework
            objectName: "missing_homework"
            anchors.horizontalCenter: mark_box.horizontalCenter
            anchors.top: mark_box.top
            anchors.left: parent.left
            anchors.leftMargin: 5
            text: "09.09.11: Python Skript"
            font.pointSize: 18
            width: 290
        }
    }

Rectangle {
    id: singleview_spacer
    objectName: "singleview_spacer"
    height: 1
    width: parent.width-20
    color: "grey"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: singleview_missing_homework_bg.bottom
    anchors.topMargin: 10
}

Rectangle { //background of the box
    id: singleview_mark_box
    objectName: "singleview_mark_box"
    height: 410
    width: 450
    radius: 15
    color: "white"
    border.width: 2
    border.color: "grey"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: singleview_spacer.bottom
    anchors.topMargin: 20
}

Flickable {
    id: flick_mark_singleview
    objectName: "flick_mark_singleview"
    height: 410
    width: 450
    clip: true  //so the text stays "in the box" - not sure why, but it's not in the doc!
    contentHeight: student_marks_singleview.height
    contentWidth: student_marks_singleview.width
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: singleview_spacer.bottom
    anchors.topMargin: 20


    Text { //AT THE MOMENT JUST TEXT - LATER IT SHOULD BE A LISTVIEW
            id: student_marks_singleview
            objectName: "student_marks_singleview"
            anchors.horizontalCenter: mark_box_singleview.horizontalCenter
            anchors.top: mark_box_singleview.top
            anchors.left: parent.left
            anchors.leftMargin: 5
            text: "1. Klausur: 1+<p>2. Klausur: 2<p>Leistungskontrolle: 1-<p>Referat: 1"
            font.pointSize: 24
            width: 450
        }
    }


}
