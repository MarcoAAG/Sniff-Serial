import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 960
    height: 540
    visible: true
    title: qsTr("SniffPy")

    Rectangle {
        id: base
        color: "#00000000"
        anchors.fill: parent

        Rectangle {
            id: bg
            color: "#5b5b5b"
            anchors.fill: parent
        }

        Rectangle {
            id: topBar
            height: 60
            color: "#444444"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Rectangle {
                id: tittle
                x: 364
                width: 780
                color: "#00000000"
                anchors.right: topBtns.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0

                Label {
                    id: label
                    color: "#ffffff"
                    text: qsTr("SniffPy")
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 30
                }
            }

            Rectangle {
                id: topBtns
                x: 824
                width: 100
                color: "#00000000"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0
            }
        }

        Rectangle {
            id: appContainer
            color: "#00000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: topBar.bottom
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Rectangle {
                id: leftBar
                width: 80
                color: "#444444"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
            }

            Rectangle {
                id: belowBar
                y: 373
                height: 60
                color: "#666666"
                anchors.left: leftBar.right
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
            }
        }

    }
}


