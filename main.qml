import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        color: "red"
        height: 100
        radius: 100
        width: 100
        Text {
            id: name
            text: qsTr("Olá")
            horizontalAlignment: Text.AlignVCenter
        }
    }
}
