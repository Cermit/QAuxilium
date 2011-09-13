import QtQuick 1.0

Item {
    id: app_window
    width: 480
    height: 800

Main_menu{
    id: main_menu
    opacity: 1
}

NotenbuchP1{
    id: noten_p1
    opacity: 0
}

NotenbuchP2{
    id: noten_p2
    opacity: 0
}

Tagebuch {
    id: diary
    opacity: 0
}

Einzelansicht{
    id: single
    opacity: 0
}

Photo {
    id: photo
    opacity: 0
}

states: [
    State {
    name: "main_menu"
    PropertyChanges {
        target: main_menu
        opacity: 1
    }
},

    State {
    name: "noten_p1"
    PropertyChanges {
        target: noten_p1
        opacity: 1
    }
},

    State {
    name: "noten_p2"
    PropertyChanges {
        target: noten_p2
        opacity: 1
    }
},

    State {
    name: "diary"
    PropertyChanges {
        target: diary
        opacity: 1
    }
},
    State {
    name: "single"
    PropertyChanges {
        target: single
        opacity: 1
    }
},

    State {
    name: "photo"
    PropertyChanges {
        target: photo
        opacity: 1
    }
}

]

}
