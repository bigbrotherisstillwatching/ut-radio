import Lomiri.Components 1.3
import Lomiri.Components.ListItems 1.3
import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtMultimedia 5.12
import Qt.labs.settings 1.0
import QtQuick.Controls 2.7 as Qqc
import Process 1.0

import "../net"
import "../util"
import "../colors"

Rectangle {
    id: settingsPage
//    id: urlPage
    anchors.fill: parent
    signal stationChanged(var station)

    color: Colors.backgroundColor

    property var padding: units.gu(3)

    Process {
      id: process
//      onFinished: {
//         txt.text = readAll();
//      }
    }

    Settings {
       id: settings
       property bool darkMode: true
       property string equalizerControls: ""
    }

    ThemedHeader {
       id: header
       title: i18n.tr("Settings")
    }

    Flickable {
       anchors.top: header.bottom
       anchors.left: parent.left
       anchors.right: parent.right
       anchors.bottom: parent.bottom

       contentWidth: parent.width
       contentHeight: childrenRect.height

       clip: true

       Column {
          anchors.left: parent.left
          anchors.right: parent.right

          ListItem {
             height: l1.height + (divider.visible ? divider.height : 0)
             color: Colors.surfaceColor
             divider.colorFrom: Colors.borderColor
             divider.colorTo: Colors.borderColor
             highlightColor: Colors.highlightColor

             ListItemLayout {
                id: l1
                title.text: i18n.tr("Appearance")
                title.font.bold: true
                title.color: Colors.mainText
                subtitle.text: i18n.tr("Restart the app after changing dark mode option")
                subtitle.color: "red"
                subtitle.visible: false
             }
          }

          ListItem {
              anchors.left: parent.left
              anchors.right: parent.right
              color: Colors.surfaceColor
              divider.colorFrom: Colors.borderColor
              divider.colorTo: Colors.borderColor
              highlightColor: Colors.highlightColor

              height: l2.height + (divider.visible ? divider.height : 0)

              SlotsLayout {
                  id: l2
                  mainSlot: Text {
                     anchors.verticalCenter: parent.verticalCenter
                     text: i18n.tr("Dark mode")
                     color: Colors.mainText
                  }
                  Switch {
                     checked: settings.darkMode
                     SlotsLayout.position: SlotsLayout.Trailing

                     onClicked: {
                        settings.darkMode = checked
                        l1.subtitle.visible = true
                     }
                  }
              }
          }
          ListItem {
             height: l1.height + (divider.visible ? divider.height : 0)
             color: Colors.surfaceColor
             divider.colorFrom: Colors.borderColor
             divider.colorTo: Colors.borderColor
             highlightColor: Colors.highlightColor

             ListItemLayout {
                id: l3
                title.text: i18n.tr("Equalizer")
                title.font.bold: true
                title.color: Colors.mainText
//                subtitle.text: i18n.tr("Restart the app after changing dark mode option")
//                subtitle.color: "red"
//                subtitle.visible: false
             }
          }
/*          ListItem {
              anchors.left: parent.left
              anchors.right: parent.right
              color: Colors.surfaceColor
              divider.colorFrom: Colors.borderColor
              divider.colorTo: Colors.borderColor
              highlightColor: Colors.highlightColor

              height: l1.height + (divider.visible ? divider.height : 0)

              SlotsLayout {
                  id: l3
                  mainSlot: Text {
                     anchors.verticalCenter: parent.verticalCenter
                     text: i18n.tr("Equalizer")
                     color: Colors.mainText
                     font.bold: true
                  }
                  Switch {
//                     checked: settings.darkMode
                     SlotsLayout.position: SlotsLayout.Trailing

                     onClicked: {
//                        settings.darkMode = checked
//                        l1.subtitle.visible = true
                     }
                  }
              }
          }*/
          Row {
             anchors.horizontalCenter: parent.horizontalCenter
             spacing: 1
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide1.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide1
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "31Hz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide2.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide2
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "63Hz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide3.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide3
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "125Hz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide4.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide4
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "250Hz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide5.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide5
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "500Hz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide6.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide6
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "1kHz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide7.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide7
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "2kHz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide8.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide8
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "4kHz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide9.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide9
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "8kHz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
             Column {
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: slide10.value
                   color: Colors.mainText
                   font.pointSize: 20
                }
                Qqc.Slider {
                   id: slide10
                   from: -48.0
                   to: 24.0
                   live: true
                   orientation: Qt.Vertical
                   stepSize: 0.5
                }
                Label {
                   width: parent.width
                   horizontalAlignment: Text.AlignHCenter
                   text: "16kHz"
                   color: Colors.mainText
                   font.pointSize: 20
                }
             }
/*             Qqc.Slider {
//                id: slide2
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }
             Qqc.Slider {
                from: -48.0
                to: 24.0
                live: true
                orientation: Qt.Vertical
                stepSize: 0.1
             }*/
          }
/*          Row {
             anchors.horizontalCenter: parent.horizontalCenter
             spacing: 35
             Text {
                text: " 31Hz"
                color: Colors.mainText
                font.pointSize: 20
//                anchors.horizontalCenter: slide1.horizontalCenter
//                font.bold: true
             }
             Text {
                text: " 63Hz"
                color: Colors.mainText
                font.pointSize: 20
//                anchors.horizontalCenter: slide2.horizontalCenter
//                font.bold: true
             }
             Text {
                text: "125Hz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: "250Hz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: "500Hz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: "1kHz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: "  2kHz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: " 4kHz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: " 8kHz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
             Text {
                text: "16kHz"
                color: Colors.mainText
                font.pointSize: 20
//                font.bold: true
             }
          }*/
          Row {
             anchors.horizontalCenter: parent.horizontalCenter
             spacing: settingsPage.padding
             Button {
                id: eqaButton
//                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Activate")
                color: Colors.surfaceColor
//                onClicked: process.start("/bin/bash",["-c", "echo slide1.value >> /home/phablet/Downloads/equalizer/sink.txt"]);
                onClicked: settings.equalizerControls = slide1.value, slide2.value
             }
             Button {
                id: eqdButton
//                anchors.horizontalCenter: parent.horizontalCenter
                text: i18n.tr("Deactivate")
                color: Colors.surfaceColor
//                onClicked: process.start("/bin/bash",["-c", "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.MediaHub /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | sed -n '/xesam:title/{ n; p }' | grep -oP '(?<=\").*(?=\")'"]);
             }
          }
       }
    }
}
