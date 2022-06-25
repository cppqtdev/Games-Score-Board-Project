import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../Components"
import "../Styles"
Item {
    Rectangle{
        color: Theme.backgroundColor
        anchors.fill: parent
        /*Back Menu Item Pushed By the satck*/
        Rectangle{
            id:menuItemBack
            width: parent.width
            height: 30
            color:Theme.backgroundColor
            anchors{
                top: parent.top
            }

            Text{
                text: qsTr("PLAY SCREEN")
                color:Theme.textColor
                font.pixelSize: 18
                font.bold:true
                anchors{
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                    leftMargin: 30
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        gstack.pop()
                    }
                }
            }
        }
        /*Main Screen Code Start Here */

        Rectangle{
            color: Theme.playScreenBackgroundColor
            border.width: 5
            radius: 3
            border.color: Theme.borderColor
              anchors{
                  top: menuItemBack.bottom
                  left: parent.left
                  right: parent.right
                  bottom: parent.bottom
              }

              Image{
                  source: "qrc:/Resources/Icons/title/fingerprint-solid.svg"
                  sourceSize: Qt.size(150,150)
                  anchors{
                      left: parent.left
                      topMargin: 30
                      leftMargin: 30
                      verticalCenter: gameTimerRect.verticalCenter
                  }
              }


              Image{
                  source: "qrc:/Resources/Icons/title/fingerprint-solid.svg"
                  sourceSize: Qt.size(150,150)
                  anchors{
                      right: parent.right
                      topMargin: 30
                      rightMargin: 30
                      verticalCenter: gameTimerRect.verticalCenter
                  }
              }



              /*Small Rectangle Game Timer */
              Rectangle{
                  id:gameTimerRect
                   width: parent.width/2
                   height: parent.height*0.3
                   color: Theme.backgroundColor
                   border.width: 5
                   border.color: Theme.borderColor
                   radius: 12
                   anchors{
                       horizontalCenter: parent.horizontalCenter
                       top: parent.top
                   }
                   Column{
                       spacing: 20
                       anchors{
                           left: parent.left
                           leftMargin: 30
                           verticalCenter: gameTimer.verticalCenter
                       }

                       SButton{
                           buttonWidth: 100
                           buttonHeight: 40
                           buttonText:"Game Timer"
                       }

                       SButton{
                           buttonWidth: 100
                           buttonHeight: 40
                           buttonText:"Time Outs"
                        }
                   }
                   Column{
                       spacing: 20
                       anchors{
                           right: parent.right
                           rightMargin: 30
                           verticalCenter: gameTimer.verticalCenter
                       }

                       SButton{
                           buttonWidth: 100
                           buttonHeight: 40
                           buttonText:"Start/Stop"
                       }

                       SButton{
                           buttonWidth: 100
                           buttonHeight: 40
                           buttonText:"Reset"
                        }
                   }

                   STextField {
                       id:gameTimer
                        y:10
                        enabled: true
                        checkedColor: "#F9375E"
                        placeholderText: qsTr("00")
                        text: qsTr("00:00")
                        backwidth: 200
                        backHeight: 100
                        pixelSize:50
                        anchors{
                            topMargin: 10
                            horizontalCenter: parent.horizontalCenter
                        }
                   }
              }

              /*Small Rectangle Game Period */
              Rectangle{
                   width: parent.width/2
                   height: parent.height*0.3
                   color: Theme.backgroundColor
                   border.width: 5
                   border.color: Theme.borderColor
                   radius: 12
                   anchors{
                       horizontalCenter: gameTimerRect.horizontalCenter
                       topMargin: 20
                       top: gameTimerRect.bottom
                   }
                   Image{
                       source: "qrc:/Resources/Icons/title/fingerprint-solid.svg"
                       sourceSize: Qt.size(100,100)
                       anchors{
                           left: parent.left
                           verticalCenter: parent.verticalCenter
                           leftMargin: 30
                       }
                   }

                   GlobalLable{
                       anchors.centerIn: parent
                       textColor: Theme.textColor
                       lableText: "Soccer Under 22"
                       lableBold: false
                       font.pixelSize: 30
                   }



                   Column{
                       spacing: 20
                       anchors{
                           right: period.left
                           rightMargin: 10
                           verticalCenter: period.verticalCenter
                       }

                       SButton{
                           buttonWidth: 40
                           buttonHeight: 40
                           buttonRadius:buttonHeight/2
                           buttonText:"+1"
                       }

                       SButton{
                           buttonWidth: 40
                           buttonHeight: 40
                           buttonRadius:buttonHeight/2
                           buttonText:"-1"
                        }

                   }
                   GlobalLable{
                       anchors{
                           bottom: period.top
                           bottomMargin: 10
                           horizontalCenter: period.horizontalCenter
                       }

                       textColor: Theme.textColor
                       lableText: "Period"
                       lableBold: false
                       font.pixelSize: 24
                   }

                   STextField {
                       id:period
                        enabled: true
                        checkedColor: "#F9375E"
                        placeholderText: qsTr("00")
                        text: qsTr("00")
                        backwidth: 110
                        backHeight: 100
                        pixelSize:50
                        anchors{
                            right: parent.right
                            rightMargin: 30
                            verticalCenter: parent.verticalCenter
                        }
                   }
              }

                  /*: ["#727CF5", "#0ACF97", "#F9375E",

                    "#FFBC00", "#2B99B9", "#5A6268",

                    "#EEF2F7", "#212730"]*/

              /*Bottom Button Row Home and Guest*/
              GlobalLable{
                  anchors{
                      bottom: homeScore.top
                      bottomMargin: 10
                      horizontalCenter: homeScore.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "Guest Team"
                  lableBold: false
                  font.pixelSize: 24
              }

              STextField {
                  id:homeScore
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       bottom: homeShortsLable.top
                       horizontalCenter: homeShortsLable.horizontalCenter
                       bottomMargin: 20
                   }
              }
              Column{
                  id:homeScoreColumn
                  spacing: 20
                  anchors{
                      left: homeScore.right
                      leftMargin: 10
                      verticalCenter: homeScore.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }
              }
              Column{
                  id:guestScoreColumn
                  spacing: 20
                  anchors{
                      right: guestScore.left
                      rightMargin: 10
                      verticalCenter: guestScore.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }

              }
              GlobalLable{
                  anchors{
                      bottom: guestScore.top
                      bottomMargin: 10
                      horizontalCenter: guestScore.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "Guest Team"
                  lableBold: false
                  font.pixelSize: 24
              }

              STextField {
                  id:guestScore
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       bottom: savesGuestTeamLable.top
                       horizontalCenter: savesGuestTeamLable.horizontalCenter
                       bottomMargin: 20
                   }
              }

              GlobalLable{
                  id:homeShortsLable
                  anchors{
                      bottom: shotsField.top
                      bottomMargin: 10
                      horizontalCenter: shotsField.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "Shots"
                  lableBold: false
                  font.pixelSize: 24
              }

              STextField {
                  id:shotsField
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       bottom: bottomLeft.top
                       left: parent.left
                       leftMargin: 20
                       bottomMargin: 20
                   }
              }
              Column{
                  id:shotsFieldColumn
                  spacing: 20
                  anchors{
                      left: shotsField.right
                      leftMargin: 10
                      verticalCenter: shotsField.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }
              }
              GlobalLable{
                  anchors{
                      bottom: ckHome.top
                      bottomMargin: 10
                      horizontalCenter: ckHome.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "C/K"
                  lableBold: false
                  font.pixelSize: 24
              }
              STextField {
                  id:ckHome
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       left: shotsFieldColumn.right
                       leftMargin: 10
                       verticalCenter: shotsFieldColumn.verticalCenter
                   }
              }
              Column{
                  id:ckHomeColumn
                  spacing: 20
                  anchors{
                      left: ckHome.right
                      leftMargin: 10
                      verticalCenter: ckHome.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }
              }
              GlobalLable{
                  anchors{
                      bottom: savesHome.top
                      bottomMargin: 10
                      horizontalCenter: savesHome.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "Saves"
                  lableBold: false
                  font.pixelSize: 24
              }
              STextField {
                  id:savesHome
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       left: ckHomeColumn.right
                       leftMargin: 10
                       verticalCenter: ckHomeColumn.verticalCenter
                   }
              }
              Column{
                  spacing: 20
                  anchors{
                      left: savesHome.right
                      leftMargin: 10
                      verticalCenter: savesHome.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }
              }
              Column{
                  spacing: 20
                  anchors{
                      right: shotsGuest.left
                      rightMargin: 10
                      verticalCenter: shotsGuest.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }

              }
              GlobalLable{
                  anchors{
                      bottom: shotsGuest.top
                      bottomMargin: 10
                      horizontalCenter: shotsGuest.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "Shots"
                  lableBold: false
                  font.pixelSize: 24
              }
              STextField {
                  id:shotsGuest
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       right: ckGuestColumn.left
                       rightMargin: 10
                       verticalCenter: ckGuestColumn.verticalCenter
                   }
              }
              Column{
                  id:ckGuestColumn
                  spacing: 20
                  anchors{
                      right: ckGuest.left
                      rightMargin: 10
                      verticalCenter: ckGuest.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }

              }
              GlobalLable{
                  anchors{
                      bottom: ckGuest.top
                      bottomMargin: 10
                      horizontalCenter: ckGuest.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "C/K"
                  lableBold: false
                  font.pixelSize: 24
              }
              STextField {
                  id:ckGuest
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       right: savedFieldColumn.left
                       rightMargin: 10
                       verticalCenter: savedFieldColumn.verticalCenter
                   }
              }
              Column{
                  id:savedFieldColumn
                  spacing: 20
                  anchors{
                      right: savedField.left
                      rightMargin: 10
                      verticalCenter: savedField.verticalCenter
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"+1"
                  }

                  SButton{
                      buttonWidth: 40
                      buttonHeight: 40
                      buttonRadius:buttonHeight/2
                      buttonText:"-1"
                   }

              }
              GlobalLable{
                  id:savesGuestTeamLable
                  anchors{
                      bottom: savedField.top
                      bottomMargin: 10
                      horizontalCenter: savedField.horizontalCenter
                  }

                  textColor: Theme.textColor
                  lableText: "Saves"
                  lableBold: false
                  font.pixelSize: 24
              }

              STextField {
                  id:savedField
                   enabled: true
                   checkedColor: "#F9375E"
                   placeholderText: qsTr("00")
                   text: qsTr("00")
                   backwidth: 110
                   backHeight: 100
                   pixelSize:50
                   anchors{
                       bottom: bottomRight.top
                       right: parent.right
                       rightMargin: 20
                       bottomMargin: 20
                   }
              }



              /*Left Bottom Buttons*/
              Row{
                  id:bottomLeft
                  spacing: 10
                  anchors{
                      bottom: parent.bottom
                      left: parent.left
                      leftMargin: 30
                      bottomMargin: 20
                  }

              SButton{
                  buttonText:"Help"
                  onClicked: {
                  }
              }

              SButton{
                  buttonText:"Options"
                  onClicked: {
                         console.log("Item Saved")
                  }

               }

              }

              /*Middle Bottom Button*/
              SButton{
                  buttonText:"Buzzer"
                  anchors{
                      bottom: parent.bottom
                      horizontalCenter: parent.horizontalCenter
                      bottomMargin: 20
                  }

                  onClicked: {
                         console.log("Item Saved")
                  }

               }


              /*Right Bottom Buttons*/
              Row{
                  id:bottomRight
                  spacing: 10
                  anchors{
                      bottom: parent.bottom
                      right: parent.right
                      rightMargin: 30
                      bottomMargin: 20
                  }

              SButton{
                  buttonText:"Back"
                  onClicked: {
                     gstack.pop()
                  }
              }

              SButton{
                  buttonText:"Save"
                  onClicked: {
                         console.log("Item Saved")
                  }

              }

              }
        }

        /*Main Screen Code End Here */

    }
}
