import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../Components"
import "../Styles"
Item {
    Rectangle{
        color: Theme.backgroundColor
        anchors.fill: parent
        ColumnLayout{
            spacing: 50
            anchors.centerIn: parent
            RowLayout{
                spacing: 50
               SButton{
                   buttonWidth: 150
                   buttonHeight: 100
                   buttonRadius:12
                   buttonText:"Home"
                   onClicked: {
                       gstack.push("qrc:/Screens/HomeSettings.qml",{"gTitle":"Home Settings"})
                   }

               }
               SButton{
                   buttonWidth: 150
                   buttonHeight: 100
                   buttonRadius:12
                   buttonText:"Settings"
                   onClicked: {
                       gstack.push("qrc:/Screens/SettingsScreen.qml",{"gTitle":"Home Settings"})
                   }

               }
               SButton{
                   buttonWidth: 150
                   buttonHeight: 100
                   buttonRadius:12
                   buttonText:"New Game"
                   onClicked: {
                       gstack.push("qrc:/Screens/NewGameScreen.qml",{"gTitle":"Home Settings"})
                   }

               }
               SButton{
                   buttonWidth: 150
                   buttonHeight: 100
                   buttonRadius:12
                   buttonText:"Saved Game"
                   onClicked: {
                       gstack.push("qrc:/Screens/SavedGame.qml",{"gTitle":"Home Settings"})
                   }

               }
               SButton{
                   buttonWidth: 150
                   buttonHeight: 100
                   buttonRadius:12
                   buttonText:"Support"
                   onClicked: {
                       gstack.push("qrc:/Screens/SupportScreen.qml",{"gTitle":"Home Settings"})
                   }

               }
               SButton{
                   buttonWidth: 150
                   buttonHeight: 100
                   buttonRadius:12
                   buttonText:"About"
                   onClicked: {
                       gstack.push("qrc:/Screens/AboutScreen.qml",{"gTitle":"Home Settings"})
                   }

               }
            }
            RowLayout{
                spacing: 50
                SButton{
                    buttonWidth: 150
                    buttonHeight: 100
                    buttonRadius:12
                    buttonText:"Game Settings"
                    onClicked: {
                        gstack.push("qrc:/Screens/GameSettings.qml",{"gTitle":"Home Settings"})
                    }

                }
                SButton{
                    buttonWidth: 150
                    buttonHeight: 100
                    buttonRadius:12
                    buttonText:"Theme Settings"
                    onClicked: {
                        gstack.push("qrc:/Screens/ThemeSettings.qml",{"gTitle":"Home Settings"})
                    }

                }
                SButton{
                    buttonWidth: 150
                    buttonHeight: 100
                    buttonRadius:12
                    buttonText:"Brightness Settings"
                    onClicked: {
                        gstack.push("qrc:/Screens/BrightnessSettings.qml",{"gTitle":"Home Settings"})
                    }

                }
                SButton{
                    buttonWidth: 150
                    buttonHeight: 100
                    buttonRadius:12
                    buttonText:"User Settings"
                    onClicked: {
                        gstack.push("qrc:/Screens/UserSettings.qml",{"gTitle":"Home Settings"})
                    }

                }
                SButton{
                    buttonWidth: 150
                    buttonHeight: 100
                    buttonRadius:12
                    buttonText:"Home"
                    onClicked: {
                        gstack.push("qrc:/Screens/HomeSettings.qml",{"gTitle":"Home Settings"})
                    }

                }
                SButton{
                    buttonWidth: 150
                    buttonHeight: 100
                    buttonRadius:12
                    buttonText:"Home"
                    onClicked: {
                        gstack.push("qrc:/Screens/HomeSettings.qml",{"gTitle":"Home Settings"})
                    }

                }
            }
        }
    }

}
