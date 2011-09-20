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

Rectangle { // Kann auch raus? Oder so und dafür "nur" im Stundentagebuch auftauchen?
        id: singleview_missing_homework
        width: 290
        height: 90
        radius: 15
        color: "white"
        border.width: 2
        border.color: "grey"

        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: singleview_homework.bottom
        anchors.topMargin: 5

    TextEdit {
        width: 280
        height: 85
        anchors.centerIn: parent
        wrapMode: TextEdit.WrapAtWordBoundaryOrAnywhere
        font.pointSize: 18
    }
    }

Rectangle {
    id: singleview_spacer
    objectName: "singleview_spacer"
    height: 1
    width: parent.width-20
    color: "grey"
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: singleview_missing_homework.bottom
    anchors.topMargin: 10
}

Rectangle {
        id: singleview_marks
        width: 450
        height: 410
        radius: 15
        color: "white"
        border.width: 2
        border.color: "grey"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: singleview_spacer.bottom
        anchors.topMargin: 20

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
