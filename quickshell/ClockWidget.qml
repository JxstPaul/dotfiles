import QtQuick
import "./services"

Rectangle {
    id: widgetRoot

    property bool showDate: false

    implicitWidth: clockLabel.implicitWidth + 24
    implicitHeight: 30
    color: Qt.alpha("#ffffff", 0.33)

    Text {
        id: clockLabel
        anchors.centerIn: parent

        text: widgetRoot.showDate ? SystemClock.date : SystemClock.time
        color: "#cdd6f4"

        font.family: "Maple Mono NL NF"
        font.pixelSize: 14
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onClicked: widgetRoot.showDate = !widgetRoot.showDate
    }
}
