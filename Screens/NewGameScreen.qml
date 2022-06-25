import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../Components"
import "../Styles"
Item {
    anchors.fill: parent
    Rectangle{
        color: Theme.backgroundColor
        anchors.fill: parent
        Rectangle{
            width: parent.width
            height: 30
            color:Theme.backgroundColor
            anchors{
                top: parent.top
            }

            Text{
                text: qsTr("NEW GAME SCREEN")
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
        /*Bottom Buttons*/
        Row{
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
}
