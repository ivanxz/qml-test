import QtQuick 2.0

Rectangle {
    width: parent.width
    height: childrenRect.height
    color: "grey"

    property alias title: txt.text

    Text {
        id: txt
        font.bold: true
        font.pixelSize: 20
    }
}
