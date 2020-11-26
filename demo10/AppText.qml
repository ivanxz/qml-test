import QtQuick 2.9

Text {
    id: oText
    color: "#F2F3FA"
    elide: Text.ElideRight
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignTop

    property int textWidth: textMetrics.advanceWidth
    readonly property alias textHeight: oText.paintedHeight
    readonly property QtObject metricsItem: textMetrics

    TextMetrics {
        id: textMetrics
        font: oText.font
        text: oText.text
        elide: oText.elide
    }
}
