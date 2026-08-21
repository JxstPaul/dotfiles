import QtQuick
import "./services"

Rectangle {
    id: widgetRoot

    implicitWidth: volume.implicitWidth + 24
    implicitHeight: 30
    color: "transparent"

    Text {
        id: volume
        anchors.centerIn: parent

        text: SystemAudio.muted
            ? "MUTED"
            : SystemAudio.volume + "%"
        color: "#cdd6f4"

        font.family: "Maple Mono NL NF CN"
        font.pointSize: 11
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onClicked: SystemAudio.toggleMuted()
        onWheel: (wheel) => {
            if (wheel.angleDelta.y > 0) SystemAudio.incVolume()
            if (wheel.angleDelta.y < 0) SystemAudio.decVolume()
        }
    }
}
