/****************************************************************************
**
** Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
** All rights reserved.
** Contact: Nokia Corporation (qt-info@nokia.com)
**
** This file is part of the QtDeclarative module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** No Commercial Usage
** This file contains pre-release code and may not be distributed.
** You may use this file in accordance with the terms and conditions
** contained in the Technology Preview License Agreement accompanying
** this package.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 as published by the Free Software
** Foundation and appearing in the file LICENSE.LGPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU Lesser General Public License version 2.1 requirements
** will be met: http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** In addition, as a special exception, Nokia gives you certain additional
** rights.  These rights are described in the Nokia Qt LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** If you have questions regarding the use of this file, please contact
** Nokia at qt-info@nokia.com.
**
**
**
**
**
**
**
**
** $QT_END_LICENSE$
**
****************************************************************************/
//![import]
import Qt 4.7
//![import]

Column {

//![0]
Item {
    id: container
    width: 300; height: 300

    Rectangle {
        id: rect
        width: 100; height: 100
        color: "red"

        MouseArea { 
           id: mouseArea
           anchors.fill: parent 
        }

        states: State {
           name: "resized"; when: mouseArea.pressed
           PropertyChanges { target: rect; color: "blue"; height: container.height }
        }
    }
}
//![0]

//![reset]
Rectangle {
    width: 300; height: 200

    Text {
        id: myText
        width: 50
        wrapMode: Text.WordWrap
        text: "a text string that is longer than 50 pixels"

        states: State {
            name: "widerText"
            PropertyChanges { target: myText; width: undefined }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: myText.state = "widerText"
    }
}
//![reset]
}