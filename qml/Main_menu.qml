import QtQuick 1.0

//creates the main window of the app
Workspace {
    id: workspace
    objectName: "workspace"

//creates the toolbar
Toolbar {
    id: toolbar
    objectName: "toolbar"
}

//creates first item of the toolbar
Toolbar_Item1{
    id: toolbar_item1
    objectName: "toolbar_item1"
}

//creates the menu item at the toolbar
Toolbar_Menu {
    id: toolbar_menu
    objectName: "toolbar_menu"
}



//---------------------------------now first unique app elements-----------------------------------

//text box of the class you want to administrate

Text { //just the title
    id: admin_menu_title
    objectName: "admin_menu_title"
    text: "Klassen:"
    font.family: "Nokia Pure Text"
    font.pointSize: 32
    color: "lightblue"
    anchors.left: parent.left
    anchors.leftMargin: 15
    anchors.top: parent.top
    anchors.topMargin: 10
}

Rectangle { //background of the box
    id: class_box
    objectName: "class_box"
    height: 275
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
    id: flick_classes
    objectName: "flick_classes"
    height: 275
    width: 450
    clip: true  //so the text stays "in the box" - not sure why, but it's not in the doc!
    contentHeight: class_name.height
    contentWidth: class_name.width
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 80


    Text { //AT THE MOMENT JUST TEXT - LATER IT SHOULD BE A LISTVIEW
            id: class_name
            anchors.horizontalCenter: class_box.horizontalCenter
            anchors.top: class_box.top
            anchors.left: parent.left
            anchors.leftMargin: 5
            text: "Klasse 9a: Informatik<p>Klasse 12/2: Mathe<p>Klasse 7b: Geschichte<p>Klasse 6a: Geschichte<p>Kurs 11/2 Englisch<p>Klasse 5a Informatik"
            font.pointSize: 24
            width: 450
        }
    }

//start menu with buttons to all importent functions for administrate your students
    //first menu button - all marks
   Rectangle {
        id: notenbuch_admin_button
        objectName: "notenbuch_admin_button"
        height: 70
        width: 450
        color: notenbuch_clicked.pressed ? "lightblue" : "white"
        border.color: "grey"
        radius: 15
        anchors.top: class_box.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: notenbuch_clicked
            objectName: "notenbuch_clicked"
            anchors.fill: parent
            onClicked: {
                app_window.state = "noten_p1"
            }
        }

            Text {
                id: notenbuch_admin_button_text
                objectName: "notenbuch_admin_button_text"
                text: "Notenbuch"
                font.family: "Nokia Pure Text"
                font.pointSize: 24
                anchors.centerIn: parent
            }
    }

   //second button of admin menu - diary
   Rectangle {
        id: tagebuch_admin_button
        objectName: "tagebuch_admin_button"
        height: 70
        width: 450
        color: tagebuch_clicked.pressed ? "lightblue" : "white"
        border.color: "grey"
        radius: 15
        anchors.top: notenbuch_admin_button.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: tagebuch_clicked
            objectName: "tagebuch_clicked"
            anchors.fill: parent
            onClicked: {
                app_window.state = "diary"
            }
        }

            Text {
                id: tagebuch_admin_button_text
                objectName: "tagebuch_admin_button_text"
                text: "Tagebuch"
                font.family: "Nokia Pure Text"
                font.pointSize: 24
                anchors.centerIn: parent
            }
    }

   //third button of admin menu - singleview
   Rectangle {
        id: einzel_admin_button
        objectName: "einzel_admin_button"
        height: 70
        width: 450
        color: einzel_clicked.pressed ? "lightblue" : "white"
        border.color: "grey"
        radius: 15
        anchors.top: tagebuch_admin_button.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: einzel_clicked
            objectName: "einzel_clicked"
            anchors.fill: parent
            onClicked: {
                app_window.state = "single"
            }
        }

            Text {
                id: einzel_admin_button_text
                objectName: "einzel_admin_button_text"
                text: "Einzelansicht"
                font.family: "Nokia Pure Text"
                font.pointSize: 24
                anchors.centerIn: parent
            }
    }

   //fourth button of admin menu - photo
   Rectangle {
        id: photo_admin_button
        objectName: "photo_admin_button"
        height: 70
        width: 450
        color: photo_clicked.pressed ? "lightblue" : "white"
        border.color: "grey"
        radius: 15
        anchors.top: einzel_admin_button.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: photo_clicked
            objectName: "photo_clicked"
            anchors.fill: parent
            onClicked: {
                app_window.state = "photo"
            }
        }

            Text {
                id: photo_admin_button_text
                objectName: "photo_admin_button_text"
                text: "Photo"
                font.family: "Nokia Pure Text"
                font.pointSize: 24
                anchors.centerIn: parent
            }
    }
}

