import QtQuick 2.9
import QtQuick.Controls 2.0

ApplicationWindow {
    visible: true
    width: 320
    height: 480

    ListModel {
        id: parentModel
        ListElement {
            name: "Amble Smith"
            image: "qrc:/images/portrait0.jpg"
        }
        ListElement {
            name: "Avril Ramona Lavigne"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "Bill Smith"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "Clion Brown"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "David Wise"
            image: "qrc:/images/portrait0.jpg"
        }
        ListElement {
            name: "Ivan Wise"
            image: "qrc:/images/portrait0.jpg"
        }
        ListElement {
            name: "John Brown"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "Jackie Chan"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "Klion Brown"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "Sam Wise"
            image: "qrc:/images/portrait0.jpg"
        }
        ListElement {
            name: "Tom Brown"
            image: "qrc:/images/portrait1.jpg"
        }
        ListElement {
            name: "William Chan"
            image: "qrc:/images/portrait0.jpg"
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        model: parentModel
        delegate: SimpleRow {
            width: parent.width
            title: name
            iconSource: image
            iconSourceSize: Qt.size(48, 48)
        }

        section.property: "name"
        section.labelPositioning: ViewSection.InlineLabels | ViewSection.CurrentLabelAtStart
        section.criteria: ViewSection.FirstCharacter
        section.delegate: AppSection {
            title: section
        }

        RightSideBar {}
    }
}
