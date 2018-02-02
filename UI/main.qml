import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.0

ApplicationWindow {
    id: window
    width: 1080
    height: 640
    visible: true
    title: qsTr('LoveGod #3b3438')
    color: "#3a3a3a"

    property string saveUrl: ""
    property string urlName: ""


    ColumnLayout{
        id:z_index0
        width: parent.width
        height: 640
        spacing: 0

        ColumnLayout{
            anchors.top: parent.top
            Layout.fillWidth: true
            height: 100
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                height: 98
                color: "Transparent"

                ColumnLayout {
                    width: 150
                    height: 92
                    spacing: 0
                    anchors.centerIn: parent

                    Image {
                        anchors.horizontalCenter: parent.horizontalCenter
                        id: logo
                        source: "icons/replay_white_18dp.png"
                    }

                    Text {
                        anchors.top: logo.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        text: "Convert"
                        color: "#fff"
                        font.pixelSize: 12
                        font.letterSpacing: 0.8
                    }

                }

            }

            Rectangle {
                Layout.fillWidth: true
                height: 2;
                color: "#7d47ab"
            }

        }

        Rectangle {
            width: window.width
            anchors.horizontalCenter: parent.horizontalCenter
            height: window.height - 100
            color: "Transparent"

            StackView {
                id: stack
                width: parent.width
                height: parent.height
                anchors.centerIn: parent
                initialItem: first
                focus: true


                Component {
                    id: first

                    Rectangle {
                        width: parent.width
                        height: parent.height
                        color: "Transparent"

                        Rectangle {
                            width: 1000
                            height: 460
                            color: "Transparent"
                            anchors.centerIn: parent



                            ColumnLayout {
                                anchors.centerIn: parent
                                width: parent.width
                                height: parent.height
                                spacing: 0

                                Rectangle {
                                    width: parent.width
                                    height: 1.02
                                    color: "#383838"
                                }

                                Rectangle {
                                    width: parent.width - 80
                                    height: parent.height
                                    anchors.centerIn: parent
                                    color: "Transparent"

                                    ColumnLayout {
                                        anchors.fill: parent
                                        width: parent.width
                                        height: parent.height

                                        Rectangle {
                                            id: textRect
                                            width: parent.width
                                            height: 80
                                            color: "Transparent"

                                            Text {
                                                anchors.verticalCenter: parent.verticalCenter
                                                color: "#ccc"
                                                text: qsTr("Functions")
                                                font.family: "Segeo UI"
                                                font.letterSpacing: 1
                                                font.pixelSize: 16
                                            }

                                        }

                                        GridLayout {

                                            anchors.top: textRect.bottom
                                            anchors.horizontalCenter: parent.horizontalCenter
                                            width: parent.width
                                            Layout.fillHeight: true
                                            columns: 3
                                            columnSpacing: 40
                                            rowSpacing: 40

                                            Rectangle {
                                                id: audio0
                                                width: 280
                                                height: 92
                                                color: "Transparent"
                                                border.width: 2
                                                border.color: "#343434"
                                                radius: 3

                                                MouseArea {
                                                    anchors.fill: parent

                                                    cursorShape: "PointingHandCursor"

                                                    hoverEnabled: true

                                                    onEntered: {
                                                        audio0.color = "#515151"
                                                    }

                                                    onExited: {
                                                        audio0.color = "Transparent"
                                                    }

                                                    onClicked: {
                                                        stack.push(second)
                                                    }


                                                }

                                                RowLayout {
                                                    width: parent.width
                                                    height: parent.height
                                                    anchors.centerIn: parent


                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width / 3
                                                        color: "Transparent"


                                                        Image {
                                                            anchors.centerIn: parent
                                                            id: image0
                                                            source: "icons/music_white_18dp.png"
                                                        }
                                                    }

                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width * 2 / 3
                                                        color: "Transparent"

                                                        ColumnLayout {

                                                            anchors.verticalCenter: parent.verticalCenter

                                                            Text {
                                                                text: qsTr("Copy Audio")
                                                                color: "#ccc"
                                                                font.pixelSize: 16
                                                            }

                                                            Text {
                                                                text: qsTr("Make an audio file out of \na video")
                                                                color: "#ccc"
                                                                font.pixelSize: 12
                                                            }

                                                        }

                                                    }

                                                }
                                            }

                                            Rectangle {
                                                id: audio1
                                                width: 280
                                                height: 92
                                                color: "Transparent"
                                                border.width: 2
                                                border.color: "#343434"
                                                radius: 3

                                                MouseArea {
                                                    anchors.fill: parent

                                                    cursorShape: "PointingHandCursor"

                                                    hoverEnabled: true

                                                    onEntered: {
                                                        audio1.color = "#515151"
                                                    }

                                                    onExited: {
                                                        audio1.color = "Transparent"
                                                    }

                                                    onClicked: {
                                                    }


                                                }

                                                RowLayout {
                                                    width: parent.width
                                                    height: parent.height
                                                    anchors.centerIn: parent


                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width / 3
                                                        color: "Transparent"


                                                        Image {
                                                            anchors.centerIn: parent
                                                            id: image1
                                                            source: "icons/music_white_18dp.png"
                                                        }
                                                    }

                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width * 2 / 3
                                                        color: "Transparent"

                                                        ColumnLayout {

                                                            anchors.verticalCenter: parent.verticalCenter

                                                            Text {
                                                                text: qsTr("Copy Audio")
                                                                color: "#ccc"
                                                                font.pixelSize: 16
                                                            }

                                                            Text {
                                                                text: qsTr("Make an audio file out of \na video")
                                                                color: "#ccc"
                                                                font.pixelSize: 12
                                                            }

                                                        }

                                                    }

                                                }
                                            }

                                            Rectangle {
                                                id: audio2
                                                width: 280
                                                height: 92
                                                color: "Transparent"
                                                border.width: 2
                                                border.color: "#343434"
                                                radius: 3

                                                MouseArea {
                                                    anchors.fill: parent

                                                    cursorShape: "PointingHandCursor"

                                                    hoverEnabled: true

                                                    onEntered: {
                                                        audio2.color = "#515151"
                                                    }

                                                    onExited: {
                                                        audio2.color = "Transparent"
                                                    }

                                                    onClicked: {
                                                    }


                                                }

                                                RowLayout {
                                                    width: parent.width
                                                    height: parent.height
                                                    anchors.centerIn: parent


                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width / 3
                                                        color: "Transparent"


                                                        Image {
                                                            anchors.centerIn: parent
                                                            id: image2
                                                            source: "icons/music_white_18dp.png"
                                                        }
                                                    }

                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width * 2 / 3
                                                        color: "Transparent"

                                                        ColumnLayout {

                                                            anchors.verticalCenter: parent.verticalCenter

                                                            Text {
                                                                text: qsTr("Copy Audio")
                                                                color: "#ccc"
                                                                font.pixelSize: 16
                                                            }

                                                            Text {
                                                                text: qsTr("Make an audio file out of \na video")
                                                                color: "#ccc"
                                                                font.pixelSize: 12
                                                            }

                                                        }

                                                    }

                                                }
                                            }

                                            Rectangle {
                                                id: audio3
                                                width: 280
                                                height: 92
                                                color: "Transparent"
                                                border.width: 2
                                                border.color: "#343434"
                                                radius: 3

                                                MouseArea {
                                                    anchors.fill: parent

                                                    cursorShape: "PointingHandCursor"

                                                    hoverEnabled: true

                                                    onEntered: {
                                                        audio3.color = "#515151"
                                                    }

                                                    onExited: {
                                                        audio3.color = "Transparent"
                                                    }

                                                    onClicked: {
                                                    }


                                                }

                                                RowLayout {
                                                    width: parent.width
                                                    height: parent.height
                                                    anchors.centerIn: parent


                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width / 3
                                                        color: "Transparent"


                                                        Image {
                                                            anchors.centerIn: parent
                                                            id: image3
                                                            source: "icons/music_white_18dp.png"
                                                        }
                                                    }

                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width * 2 / 3
                                                        color: "Transparent"

                                                        ColumnLayout {

                                                            anchors.verticalCenter: parent.verticalCenter

                                                            Text {
                                                                text: qsTr("Copy Audio")
                                                                color: "#ccc"
                                                                font.pixelSize: 16
                                                            }

                                                            Text {
                                                                text: qsTr("Make an audio file out of \na video")
                                                                color: "#ccc"
                                                                font.pixelSize: 12
                                                            }

                                                        }

                                                    }

                                                }
                                            }

                                            Rectangle {
                                                id: audio4
                                                width: 280
                                                height: 92
                                                color: "Transparent"
                                                border.width: 2
                                                border.color: "#343434"
                                                radius: 3

                                                MouseArea {
                                                    anchors.fill: parent

                                                    cursorShape: "PointingHandCursor"

                                                    hoverEnabled: true

                                                    onEntered: {
                                                        audio4.color = "#515151"
                                                    }

                                                    onExited: {
                                                        audio4.color = "Transparent"
                                                    }

                                                    onClicked: {
                                                    }


                                                }

                                                RowLayout {
                                                    width: parent.width
                                                    height: parent.height
                                                    anchors.centerIn: parent


                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width / 3
                                                        color: "Transparent"


                                                        Image {
                                                            anchors.centerIn: parent
                                                            id: image4
                                                            source: "icons/music_white_18dp.png"
                                                        }
                                                    }

                                                    Rectangle {
                                                        height: parent.height
                                                        width: parent.width * 2 / 3
                                                        color: "Transparent"

                                                        ColumnLayout {

                                                            anchors.verticalCenter: parent.verticalCenter

                                                            Text {
                                                                text: qsTr("Copy Audio")
                                                                color: "#ccc"
                                                                font.pixelSize: 16
                                                            }

                                                            Text {
                                                                text: qsTr("Make an audio file out of \na video")
                                                                color: "#ccc"
                                                                font.pixelSize: 12
                                                            }

                                                        }

                                                    }

                                                }
                                            }

                                        }

                                    }

                                }
                            }



                        } //Rect

                    }

                }

                Component {

                    id: second

                    FocusScope {
                        x: secondRect.x
                        y: secondRect.y
                        width: window.width
                        height: stack.height
                        focus: true


                        Rectangle {
                            id: secondRect
                            width: window.width
                            height: stack.height
                            color: "#2a2a2a"



                            Rectangle {
                                id: rdng
                                width: parent.width
                                height: parent.height
                                anchors.centerIn: parent
                                color: "transparent"





                                ColumnLayout {
                                    width: window.width
                                    height: parent.height


                                    spacing: 0

                                    Rectangle {
                                        Layout.fillWidth: true
                                        height: 32
                                        anchors.top: parent.top
                                        color: "#2e2e2e"

                                        Rectangle {
                                            id: closeBtn
                                            width: 36
                                            height: 28
                                            radius: 2
                                            color: "#2a2a2a"
                                            anchors.right: parent.right
                                            anchors.centerIn: parent

                                            Text {
                                                anchors.centerIn: parent
                                                text: "x"
                                                color: "#8a8a8a"
                                                font.pixelSize: 24
                                            }

                                            MouseArea {
                                                anchors.fill: parent
                                                onClicked: stack.pop()

                                                onEntered: {
                                                    closeBtn.color = "#1f1f1f"
                                                }

                                                onExited: {
                                                    closeBtn.color = "#2a2a2a"
                                                }
                                            }
                                        }

                                    }

                                    Rectangle {
                                        width: 1000
                                        height: 348
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        color: "Transparent"



                                        ColumnLayout {
                                            width: 1000
                                            height: 348

                                            RowLayout {
                                                Layout.fillWidth: true
                                                anchors.top: parent.top

                                                CTextField {
                                                    id: selectedFile
                                                    Layout.fillWidth: true
                                                    contentHeight: 24
                                                    foreground: "white"
                                                    placeholder: urlName
                                                }

                                                CButton {
                                                    cWidth: 24
                                                    cHeight: 24
                                                    background: "#4d4d4d"
                                                    foreground: "black"
                                                    label: "..."

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        hoverEnabled: true
                                                        onClicked: {
                                                            fileDialog.selectExisting = true
                                                            fileDialog.open()

                                                        }
                                                    }

                                                }

                                            }

                                            RowLayout {
                                                Layout.fillWidth: true
                                                anchors.bottom: parent.bottom

                                                CTextField {
                                                    id: saveUField
                                                    Layout.fillWidth: true
                                                    contentHeight: 24
                                                    placeholder: saveUrl
                                                    foreground: "white"
                                                }

                                                CButton {
                                                    cWidth: 24
                                                    cHeight: 24
                                                    label: "..."
                                                    foreground: "black"
                                                    background: "#4d4d4d"

                                                    MouseArea {
                                                        anchors.fill: parent
                                                        onClicked: {
                                                            fileDialog.nameFilters = ["MPEG-3 Files(*.mp3)"]
                                                            fileDialog.selectExisting = false
                                                            fileDialog.open()
                                                        }
                                                    }

                                                }

                                            }


                                        }

                                    }

                                    Rectangle {

                                        anchors.bottom: parent.bottom
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        Layout.fillWidth: true
                                        height: 80
                                        color: "#2a2a2a"

                                        Rectangle {
                                            width: 120
                                            height: 40
                                            anchors.centerIn: parent
                                            color: saveUField.placeholder == "" ? "#2f2f2f" : "#7d47ab"
                                            radius: 3

                                            MouseArea {
                                                anchors.fill: parent
                                                cursorShape: "PointingHandCursor"
                                                //hoverEnabled: true

                                                onClicked: {
                                                    if(cASBtn.text == "Cancel") {
                                                        stack.pop()
                                                    } else {
                                                        stack.push(third)
                                                    }


                                                }

                                                onEntered: {
                                                    parent.color = "#ccc"
                                                }

                                                onExited: {
                                                    parent.color = "#2f2f2f"
                                                }
                                            }

                                            Text {
                                                id: cASBtn
                                                anchors.centerIn: parent
                                                text: saveUField.placeholder == "" ? "Cancel" : "Save"
                                                color: saveUField.placeholder == "" ? "#5a5a5a" : "#1a1a1a"
                                                font.pixelSize: 24
                                            }

                                        }

                                    }

                                }


                            }


                        }


                    }

                }

                Component {
                    id: third

                    Rectangle {
                        width: parent.width
                        height: parent.height
                        color: "#2a2a2a"

                        Rectangle {
                            width: 400
                            height: parent.height - 160
                            anchors.centerIn: parent
                            color: "#2a2a2a"

                            ColumnLayout {
                                anchors.top: parent.top
                                spacing: 12

                                Text {
                                    text: "Converting"
                                    color: "#ffffff"
                                }

                                Rectangle {
                                    width: 200
                                    height: 4
                                    color: "#4d4d4d"

                                    Rectangle {
                                        id: progressSelf
                                        anchors.left: parent.left
                                        width: 80
                                        height: 4
                                        color: "dodgerblue"
                                    }

                                }

                                Text {
                                    text: "filename.mp3"
                                    color: "#ffffff"
                                }


                            }

                        }

                    }

                }

                Component {
                    id: last


                    Rectangle {

                        property int i;

                        width: parent.width
                        height: parent.height
                        color: "#2a2a2a"

                        ColumnLayout {
                            width: parent.width
                            //height: parent.height
                            anchors.centerIn: parent
                            spacing: 12

                            Rectangle {
                                width: 124
                                height: 124
                                color: "green"
                                radius: 64
                                border.width: 4
                                border.color: "black"
                                anchors.horizontalCenter: parent.horizontalCenter

                                Image {
                                    width: 124
                                    height: 124
                                    anchors.centerIn: parent
                                    source: "icons/check-circle.svg"
                                }

                            }

                            Rectangle {
                                width: parent.width / 2
                                height: 48
                                anchors.horizontalCenter: parent.horizontalCenter
                                color: 'Transparent'

                                Text {
                                    anchors.centerIn: parent
                                    text: "Complete"
                                    color: "#ffffff"
                                    font.pixelSize: 24
                                }
                            }

                            Rectangle {
                                width: processedFile.width + 28
                                height: 40
                                color: "Transparent"
                                anchors.horizontalCenter: parent.horizontalCenter
                                border.width: 2
                                border.color: "#25000000"

                                Text {
                                    id: processedFile
                                    anchors.centerIn: parent
                                    text: "Filename.mp3"
                                    color: '#ffffff'
                                    font.pixelSize: 20
                                }

                            }

                            CButton {
                                anchors.horizontalCenter: parent.horizontalCenter
                                cWidth: 200
                                cHeight: 48
                                label: "Open in Explorer"
                                background: "#45000000"
                                borderRadius: 4

                                MouseArea {
                                    anchors.fill: parent
                                    hoverEnabled: true

                                    onEntered: {
                                        cursorShape = Qt.PointingHandCursor
                                        parent.background = "#75000000"
                                    }

                                    onExited: {
                                        cursorShape = Qt.PointingHandCursor
                                        parent.background = "#45000000"
                                    }

                                    onClicked: {
                                        // Call explorer on
                                    }
                                }
                            }

                            Rectangle {
                                width: parent.width
                                anchors.horizontalCenter: parent.horizontalCenter
                                height: 120
                                color: "transparent"

                                CButton {
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    anchors.bottom: parent.bottom
                                    cWidth: 52
                                    cHeight: 48
                                    label: "Back"
                                    background: "Transparent"
                                    borderWidth: 1
                                    borderColor: "#45000000"

                                    MouseArea {
                                        anchors.fill: parent

                                        onClicked: {
                                            console.log(stack.depth)
                                            for(i=0; i<stack.depth; i++ ) {
                                                stack.pop()
                                            }
                                        }


                                    }
                                }

                            }

                        }


                    }



                }

            }
        }

    }

    FileDialog {
        id: fileDialog
        title: "Please Choose a File"
        folder: shortcuts.desktop

        onAccepted: {

            if(this.selectExisting == true) {
                urlName = "" + this.fileUrls + ""
            } else {
                saveUrl = "" + this.fileUrls + ""
            }


        }
    }

    Connections {
        target: convertor
    }

}
