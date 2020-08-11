import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Color Game")

    RowLayout {
            anchors.fill: parent
            spacing: 20
                Rectangle{
                    id: ret1
                    color: "red"
                    height: 100
                    radius: 100
                    width: 100
                }

                Rectangle{
                    id: ret
                    color: "cyan"
                    height: 100
                    radius: 100
                    width: 100
                }
        }
}
