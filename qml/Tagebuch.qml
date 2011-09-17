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

Text { //diary title
    id: diary_title
    objectName: "diary_title"
    text: "Tagebuch"
    font.family: "Nokia Pure Text"
    font.pointSize: 32
    color: "lightblue"
    anchors.left: parent.left
    anchors.leftMargin: 20
    anchors.top: parent.top
    anchors.topMargin: 10
}

Rectangle {
        id: diary_box
        width: 450
        height: 275
        radius: 15
        color: "white"
        border.width: 2
        border.color: "grey"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 80

    ListView {
        id: liste
        model: Diary_lessons_Model{}
        anchors.fill: parent
        clip: true
        interactive: true
        delegate: Delegater{
        model_text: model.lesson
        }
        }
    }

Text { //topic of the selcted lesson
    id: lesson_topic_diary
    objectName: "lesson_topic_diary"
    anchors.top: diary_box.bottom
    anchors.topMargin: 10
    anchors.left: parent.left
    anchors.leftMargin: 10
    text: "Thema: Einführung in Python"
    font.pointSize: 18
    width: 450
}

Text { // homework of the selected lesson
    id: homework_diary
    objectName: "homework_diary"
    anchors.top: lesson_topic_diary.bottom
    anchors.topMargin: 5
    anchors.left: parent.left
    anchors.leftMargin: 10
    text: "Hausaufgaben: LB. S. 25 / Nr. 2"
    font.pointSize: 18
    width: 450
}

Text { //not for changing - just a title for following text edit
    id: comments_diary_title
    objectName: "comments_diary_title"
    anchors.top: homework_diary.bottom
    anchors.topMargin: 5
    anchors.left: parent.left
    anchors.leftMargin: 10
    text: "Bemerkungen:"
    font.pointSize: 18
    width: 450
}

Rectangle {
    id: comments_diary_box
    objectName: "comments_diary_box"
    anchors.top: comments_diary_title.bottom
    anchors.topMargin: 5
    anchors.left: parent.left
    anchors.leftMargin: 10
    radius: 15
    color: "white"
    border.color: "grey"
    border.width: 2
    height: 220
    width: 450

TextEdit { // text edit for fast editing - not final - maybe this option will be realised with menu option
    id: comments_diary_text
    objectName: "comments_diary_text"
    text: "Lob für Gabriel!"
    anchors.fill: parent
    wrapMode: TextEdit.WrapAtWordBoundaryOrAnywhere
    font.pointSize: 18
}

}

}
