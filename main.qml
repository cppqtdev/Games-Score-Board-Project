import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import "./Styles"
import "./Drawer"
ApplicationWindow {
    width: 1280
    height: 700
    visible: true
    title: qsTr("Soccer Scoreboard")
    color: Theme.backgroundColor
    Image {
        source: "qrc:/Resources/Icons/Background/dashboard.jpg"
        anchors.fill: parent
    }
   Loader{
       id:mainScreenLoader
       anchors.fill: parent
       source: "qrc:/Helpers/StackViewHelper.qml"
   }
   PageDrawer {
       id: drawer

       //
       // Icon properties
       //
       iconTitle: "Qt Drawer App"
       iconSource: "qrc:/Resources/Icons/Logo/appicon.jpg"
       iconSubtitle: qsTr ("Version 1.0 Beta")

       //
       // Define the actions to take for each drawer item
       // Drawers 5 and 6 are ignored, because they are used for
       // displaying a spacer and a separator
       //
       actions: {
           0: function() { console.log ("Item 1 clicked!") },
           1: function() { console.log ("Item 2 clicked!") },
           2: function() { console.log ("Item 3 clicked!") },
           3: function() { console.log ("Item 4 clicked!") },
           4: function() { console.log ("Item 5 clicked!") },
           7: function() { console.log ("Item 6 clicked!") },
           8: function() { console.log ("Item 7 clicked!") }
       }

       //
       // Define the drawer items
       //
       items: ListModel {
           id: pagesModel

           ListElement {
               pageTitle: qsTr ("Home")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/house-user-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Scores Table")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/mobile-screen-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Charts")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/chart-line-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Leaderboard")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/cash-register-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Settings")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/sliders-solid.svg"
           }
           ListElement {
               pageTitle: qsTr ("Scores Table")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/mobile-screen-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Charts")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/chart-line-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Leaderboard")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/cash-register-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Settings")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/sliders-solid.svg"
           }

//           ListElement {
//               spacer: true
//           }

//           ListElement {
//               separator: true
//           }
           ListElement {
               pageTitle: qsTr ("Leaderboard")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/cash-register-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Settings")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/sliders-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Learn Romanian Whist")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/star-half-stroke-solid.svg"
           }

           ListElement {
               pageTitle: qsTr ("Feature Requests / Bugs")
               pageIcon: "qrc:/Resources/Icons/DrawerIcons/bug-solid.svg"
           }

       }
   }

}
