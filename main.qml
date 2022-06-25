import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import "./Styles"
ApplicationWindow {
    width: 1280
    height: 700
    visible: true
    title: qsTr("Soccer Scoreboard")
    color: Theme.backgroundColor
   Loader{
       id:mainScreenLoader
       anchors.fill: parent
       source: "qrc:/Helpers/StackViewHelper.qml"
   }

}
