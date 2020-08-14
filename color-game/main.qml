import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import Qt.labs.animation 1.0
import QtQuick.Templates 2.15
import QtQuick.Controls 2.1
import QtQuick.Controls.Styles 1.4
import QtMultimedia 5.15

Window {
    visible: true
    width: 640
    height: 480
    color: "#f0f6f6"
    opacity: 1
    title: qsTr("Color Game")


    RowLayout {
        id: rowLayout
        clip: false
        anchors.rightMargin: -37
        anchors.bottomMargin: 5
        anchors.leftMargin: 42
        anchors.topMargin: 5
        anchors.fill: parent
        spacing: 20

        //cores do primeiro rectangle (ret)
        property color colorRetEscuro: "#cdd220"
        property color colorRetClaro: "#f5fb07"

        //cores do segundo rectangle (ret2)
        property color colorRet2Claro: "#0c79f7"
        property color colorRet2Escuro: "#0a3f7c"

        //cores do terceiro rectangle (ret3)
        property color colorRet3Claro: "#fc0c1b"
        property color colorRet3Escuro: "#8f2228"


        signal clicked()

        Rectangle{
            id: ret
            color: "#cdd220"
            height: 100
            radius: 100
            width: 100



            MouseArea{
                id: area1
                anchors.fill: parent
                hoverEnabled: true

                onPressed: {
                    ret.color = rowLayout.colorRetClaro
                    rowLayout.clicked()
                }
                onReleased: {
                    ret.color = rowLayout.colorRetEscuro
                }

                onEntered: {
                    ret.color = rowLayout.colorRetClaro
                }

                onExited: {
                     ret.color = rowLayout.colorRetEscuro
                }

            }
        }

                Rectangle{
                    id: ret2
                    color: "#0a3f7c"
                    height: 100
                    radius: 100
                    width: 100

                    MouseArea{
                        id: area2
                        anchors.fill: parent
                        hoverEnabled: true

                        onPressed: {
                            ret2.color = rowLayout.colorRet2Claro
                            rowLayout.clicked()
                        }

                        onReleased: {
                            ret2.color = rowLayout.colorRet2Escuro
                        }

                        onEntered: {
                            ret2.color = rowLayout.colorRet2Claro
                        }

                        onExited: {
                             ret2.color = rowLayout.colorRet2Escuro
                        }

                    }
                }

                Rectangle{
                    id: ret3
                    color: "#8f2228"

                    height: 100
                    radius: 100
                    width: 100

                    MouseArea{
                        id: area3
                        anchors.fill: parent
                        hoverEnabled: true

                        onPressed: {
                            ret3.color = rowLayout.colorRet3Claro
                            rowLayout.clicked()
                        }

                        onReleased: {
                            ret3.color = rowLayout.colorRet3Escuro
                        }

                        onEntered: {
                            ret3.color = rowLayout.colorRet3Claro
                        }

                        onExited: {
                             ret3.color = rowLayout.colorRet3Escuro
                        }

                    }
                }




    }
}


