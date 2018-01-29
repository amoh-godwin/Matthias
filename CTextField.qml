import QtQuick 2.6

FocusScope {
    id: fs
    x: rectangle.x
    y: rectangle.y
    width: contentWidth
    height: contentHeight

    property string content: ""
    property int contentWidth: 400
    property int contentHeight: 20
    property color foreground: "#000000"
    property color placeholdeColor: "#75ffffff"
    property color background: "#4d4d4d"
    property int fontSize: 16
    property color borderColor: "transparent"
    property int borderThickness: 0
    property int borderRadius: 0
    property string dummy: ""
    property string placeholder: "Text Here"

    Rectangle {

        focus: true
        id: rectangle

        /*property string content: ""
        property int contentWidth: 400
        property int contentHeight: 20
        property color foreground: "#000000"
        property color background: "#4d4d4d"
        property int fontSize: 16
        property color borderColor: "transparent"
        property int borderThickness: 0
        property int borderRadius: 0
        property string dummy: ""*/

        signal hoverClick()

        signal click()


        width: parent.width
        height: contentHeight
        color: background
        border.width: borderThickness
        border.color: borderColor
        radius: borderRadius
        clip: true

        Text {
            id: tArea
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width
            font.pixelSize: fontSize
            color: placeholdeColor
            text: placeholder
            elide: Text.ElideLeft
        }


        MouseArea {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            hoverEnabled: true
            onEntered: fs.focus = true
            onExited: fs.focus = false
            onClicked: onClick()
        }






        Keys.onPressed: {
            if(tArea.text == placeholder) {
                tArea.text = ''
                tArea.color = foreground
            }
            if(event.key == Qt.Key_Backspace) {
                dummy = tArea.text.slice(0, tArea.text.length - 1)
                tArea.text = dummy
                content = dummy
            } else {
                tArea.text += event.text
                content = tArea.text
            }
        }


    }


}
