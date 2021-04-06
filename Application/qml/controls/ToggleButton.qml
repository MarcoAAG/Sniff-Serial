import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: toggleBtn
    width: 50
    height: 50

    // CUSTOM PROPERTIES
    property url btnIconSource: "../../images/menuBtn.png"
    property color btnColorDefault: "#444444"
    property color btnColorClicked: "#303030"
    property color btnMouseOver: "#5B5B5B"

    QtObject{
        id : internal
        property var dynamicColor: if(toggleBtn.down){
                                       toggleBtn.down ? btnColorClicked : btnColorDefault
                                   }else{
                                       toggleBtn.hovered ? btnMouseOver: btnColorDefault
                                   }
    }

    implicitWidth: 35
    implicitHeight: 30

    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 23
            width: 30
            fillMode: Image.PreserveAspectFit
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:10}
}
##^##*/
