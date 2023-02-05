import QtQuick 2.7
import Lomiri.Components 1.3
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtQuick.Window 2.2

import "./notify"

MainView {
   id: root
   objectName: 'mainView'
   applicationName: 'radio.s710'
   automaticOrientation: false

   Notification {
      notificationId: "notification"
   }

   PageStack {
      id: pageStack
      anchors {
         fill: parent
      }
   }

   Component.onCompleted: pageStack.push(Qt.resolvedUrl("pages/MainPage.qml"))
}
