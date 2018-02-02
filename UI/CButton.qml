import QtQuick 2.3

FocusScope {

    x: btn.x
    y: btn.y
    width: cWidth
    height: cHeight

    property int cWidth: 100
    property int cHeight: 100
    property string label: "Click"
    property color foreground: "white"
    property color background: "#3a3a3a"
    property int borderRadius: 0
    property int borderWidth: 0
    property color borderColor: "transparent"

    Rectangle {

        id: btn
        width: cWidth
        height: cHeight
        color: background
        radius: borderRadius
        border.width: borderWidth
        border.color: borderColor


        Text {
            anchors.centerIn: parent
            text: label
            color: foreground
            font.pixelSize: 16
        }

        MouseArea {
            id: mouseA
            anchors.fill: parent
            hoverEnabled: true
        }

    }
}
