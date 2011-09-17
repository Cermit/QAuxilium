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
Toolbar_Back{
    onBackClicked: app_window.state = "main_menu";
}

Toolbar_Item3{
    id: toolbar_item3
    objectName: "toolbar_item3"

    Image {
        width: 56
        height: 48
        source: "photo.png"
        anchors.centerIn: parent
    }
}

//---------------------------------now first unique app elements-----------------------------------

//text box of the class you want to administrate

Text { //just the title
    id: photo_menu_title
    objectName: "admin_menu_title"
    text: "Photo"
    font.family: "Nokia Pure Text"
    font.pointSize: 32
    color: "lightblue"
    anchors.left: parent.left
    anchors.leftMargin: 15
    anchors.top: parent.top
    anchors.topMargin: 10
}

Image {
    id: photo_window
    objectName: "photo_window"

    width: 450
    height: 605
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 80
    source: "img/photo.jpg"
}


}

