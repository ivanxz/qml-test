import QtQuick 2.0

Item {
    width: 10
    height: 400
    anchors.right: parent.right
    anchors.rightMargin: 5
    anchors.verticalCenter: parent.verticalCenter

    Column {
        spacing: 2
        Repeater {
            model: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
            Rectangle {
                width: 12
                height: 12
                radius: 6
                color: modelData === listView.currentSection ? "green" : "transparent"

                Text {
                    text: modelData
                    anchors.centerIn: parent
                    font.pixelSize: 12
                }
            }
        }
    }
}
