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
   Image {
      source: "assets/1.png"
}
