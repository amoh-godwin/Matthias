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
    property color formerForeground: "white"
    property color background: "#3a3a3a"
    property color formerBackground: "white"
    property int borderRadius: 0
    property int formerBorderRadius: 0
    property int borderWidth: 0
    property int formerBorderWidth: 0
    property color borderColor: "transparent"
    property color formerBorderColor: "transparent"
    property int cursor: Qt.PointingHandCursor;
    signal hover()
    signal click()

    Rectangle {

        id: btn
        width: cWidth
        height: cHeight
        color: background
        radius: borderRadius
        border.width: borderWidth
        border.color: borderColor

        Component.onCompleted: {
            formerForeground = foreground
            formerBackground = background
            formerBorderRadius = borderRadius
            formerBorderWidth = borderWidth
            formerBorderColor = borderColor
        }


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
            cursorShape: cursor
            onEntered: hover()

            onExited: {
                foreground = formerForeground
                background = formerBackground
            }

            onClicked: click()
        }

    }
}
