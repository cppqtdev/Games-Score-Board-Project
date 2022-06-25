import QtQuick 2.0
import QtQuick.Controls 2.5
import "../Components"
import "../Styles"
import "../Screens"
Item {
    anchors.fill: parent
   TitleBar{
       id:gtitleBar
       titleBarHeight: 50
       titleBarWidth: parent.width
       anchors{
           top: parent.top
           left: parent.left
           right: parent.right
       }
   }
   StackView{
         id:gstack
         width: parent.width
         height: parent.height-gtitleBar.height
         anchors{
             top: gtitleBar.bottom
        }
         initialItem: "qrc:/Screens/LoginView.qml"
    }
}
