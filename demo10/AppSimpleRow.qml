import QtQuick 2.9

Item {
    id: control
    width: parent ? parent.width : 0
    height: 64
    anchors.horizontalCenter: parent.horizontalCenter
    opacity: mouseArea.pressed ? 0.6 : 1.0

    default property alias content: pData.data

    signal clicked

    Rectangle {
        anchors.fill: parent
        color: "#F2F3FA"
    }

    FocusScope {
        id: pData
        anchors.fill: parent
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            control.clicked()
        }
    }
}
