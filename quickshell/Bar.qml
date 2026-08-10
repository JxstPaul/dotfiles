import Quickshell

Scope {
    PanelWindow {
        color: Qt.alpha("#1e1e2e", 0.77)

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 30

        ClockWidget {
            anchors.centerIn: parent
        }
    }
}
