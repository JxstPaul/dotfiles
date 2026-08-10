import QtQuick

Rectangle {
    id: widgetRoot

    implicitWidth: 24
    implicitHeight: 30
    color: "transparent"

    Text {
        id: volume
        anchors.centerIn: parent

        text: A
        color: "#cdd6f4"

        font.family: "Maple Mono NL NF CN"
        font.pointSize: 11
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
    }
}
