import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: topBtns
    width: 30
    height: 30

    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/minimizeBtn.png"
    property color btnColorDefault: "#444444"
    property color btnColorClicked: "#303030"
    property color btnMouseOver: "#5B5B5B"

    QtObject{
        id : internal
        property var dynamicColor: if(topBtns.down){
                                       topBtns.down ? btnColorClicked : btnColorDefault
                                   }else{
                                       topBtns.hovered ? btnMouseOver: btnColorDefault
                                   }
    }

    implicitWidth: 30
    implicitHeight: 30

    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 25
            width: 25
            fillMode: Image.PreserveAspectFit
        }
    }
}
