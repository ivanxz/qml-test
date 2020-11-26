import QtQuick 2.9
import QtGraphicalEffects 1.0

Item {
    id: control
    property alias source: sourceImage.source
    property alias sourceSize: sourceImage.sourceSize
    property alias cache: sourceImage.cache
    property alias status: sourceImage.status

    width: 56
    height: 56

    Rectangle {
        id: msk
        radius: parent.width / 2
        smooth: true
        visible: false
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
    }

    OpacityMask {
        id: bd
        source: sourceImage
        maskSource: msk
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
    }

    Image {
        id: sourceImage
        anchors.centerIn: parent
        verticalAlignment: Image.AlignVCenter
        horizontalAlignment: Image.AlignHCenter
        cache: false
        visible: false
        mipmap: true
    }
}
