pragma Singleton
import Quickshell
import Quickshell.Services.Pipewire
import QtQuick

Singleton {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink

    readonly property real rawVolume: sink && sink.audio
        ? sink.audio.volume
        : 0.0
    readonly property bool muted: sink && sink.audio
        ? sink.audio.muted
        : false

    property PwObjectTracker tracker: PwObjectTracker {}

    Binding {
        target: root.tracker
        property: "objects"
        value: root.sink ? [root.sink] : []
    }

    readonly property int volume: Math.round(rawVolume * 100)
    
    function toggleMuted() {
        if (sink?.audio) sink.audio.muted = !root.muted
    }

    function setVolume(value) {
        if (!sink?.audio) return

        let clamped = Math.max(0, Math.min(100, value))
        sink.audio.volume = clamped / 100.0
    }

    function incVolume(step = 5) {
        if (sink?.audio) setVolume(root.volume + 5)
    }

    function decVolume(step = 5) {
        if (sink?.audio) setVolume(root.volume - 5)
    }
}
