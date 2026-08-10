pragma Singleton
import Quickshell
import Quickshell.Services.Pipewire

Singleton {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink

    Pipewire.PwObjectTracker { objects: [ root.sink ] }

    readonly property int volume: sink ? sink.audio.volume : 0
    readonly property bool muted: sink ? sink.audio.muted : false
}
