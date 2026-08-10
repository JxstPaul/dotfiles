import QtQuick
import "./services"

Rectangle {
    id: widgetRoot

    implicitWidth: volume.implicitWidth + 24
    implicitHeight: 30
    color: Qt.alpha("#ffffff", 0.2)

    Text {
        id: volume
        anchors.centerIn: parent

        text: SystemAudio.volume
        color: "#cdd6f4"

        font.family: "Maple Mono NL NF CN"
        font.pointSize: 11
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
    }
}
