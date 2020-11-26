import QtQuick 2.0

AppSimpleRow {
    property alias title: textTitle.text
    property alias iconSource: icon.source
    property alias iconSourceSize: icon.sourceSize
    property alias iconVisable: icon.visible
    property alias maxWidth: textTitle.width

    AppRoundImage {
        id: icon
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.verticalCenter: parent.verticalCenter
    }

    AppText {
        id: textTitle
        anchors.left: parent.left
        anchors.leftMargin: icon.visible ? 80 : 16
        anchors.verticalCenter: parent.verticalCenter
        width: 200
        font.pixelSize: 20
        font.weight: Font.DemiBold
        elide: Text.ElideRight
        maximumLineCount: 1
        horizontalAlignment: Text.AlignLeft
        color: "#23242E"
    }
}
