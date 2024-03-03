import Lomiri.Components 1.3
import Lomiri.Components.ListItems 1.3
import QtQuick 2.7
import QtQuick.Layouts 1.3
import QtMultimedia 5.12
import Qt.labs.settings 1.0

import "../net"
import "../util"
import "../colors"

Rectangle {
   id: helpPage
   anchors.fill: parent

   color: Colors.backgroundColor

   ThemedHeader {
      id: header
      title: i18n.tr("Help")
   }
/*   Text {
      text: i18n.tr("Coming soon ...")
      font.pointSize: 25
      anchors.centerIn: parent
      color: Colors.mainText
   }*/
   Flickable {
      id: flick1
      contentHeight: image1.height + image2.height + text1.height
      contentWidth: image1.width
      anchors.topMargin: units.gu(3)
      anchors.top: header.bottom
      anchors.horizontalCenter: parent.horizontalCenter
      Image {
         id: image1
         anchors.topMargin: units.gu(3)
         anchors.top: flick1.top
         sourceSize.width: 1080
         sourceSize.height: 2340
         source: "../assets/1.png"
         height: 1755
         width: 810
         anchors.horizontalCenter: parent.horizontalCenter
      }
      Image {
         id: image2
         anchors.topMargin: units.gu(3)
         anchors.top: image1.bottom
         sourceSize.width: 1080
         sourceSize.height: 2340
         source: "../assets/2.png"
         height: 1755
         width: 810
         anchors.horizontalCenter: parent.horizontalCenter
      }
      Text {
         id: text1
         text: i18n.tr("Coming soon ...")
         font.pointSize: 25
//         anchors.centerIn: parent
         color: Colors.mainText
         anchors.topMargin: units.gu(3)
         anchors.top: image2.bottom
         anchors.horizontalCenter: parent.horizontalCenter
      }
   }
}
