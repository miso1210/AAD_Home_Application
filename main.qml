import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import MenuItemList 1.0
import "./JS/Utility.js" as Utility

Window {
    width: 1920
    height: 1200
    visible: true
    title: qsTr("Home Application")
    Image {
        anchors.fill: parent
        id: bg
        source: "qrc:/Img/bg_full.png"
    }
    Header{
        id:header
        anchors.left: parent.left
        anchors.right: parent.right
    }
    StackView{
        id:appStackView
        width: 1920
        height:1096
        anchors.top: header.bottom
        initialItem: Item{
            WidgetArea{
                id:widgetArea
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
            }
            MenuArea{
                id:menuArea
                anchors.top: widgetArea.bottom
                anchors.left: parent.left
                anchors.right: parent.right
            }
        }
        pushExit: Transition {
            XAnimator {
                from: 0
                to: -1920
                duration: 200
                easing.type: Easing.OutCubic
            }
        }
    }


}
