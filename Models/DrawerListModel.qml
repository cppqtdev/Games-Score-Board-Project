import QtQuick 2.0
import QtQuick.Controls 2.0
item
{
    ListModel {
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
