/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import "../../keys"

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ק"; shifted: ""; extended: ["1"]; extendedShifted: ["1"] }
            CharKey { label: "ר"; shifted: ""; extended: ["2"]; extendedShifted: ["2"] }
            CharKey { label: "א"; shifted: ""; extended: ["3"]; extendedShifted: ["3"] }
            CharKey { label: "ט"; shifted: ""; extended: ["4"]; extendedShifted: ["4"] }
            CharKey { label: "ו"; shifted: ""; extended: ["5"]; extendedShifted: ["5"] }
            CharKey { label: "ן"; shifted: ""; extended: ["6"]; extendedShifted: ["6"] }
            CharKey { label: "ם"; shifted: ""; extended: ["7"]; extendedShifted: ["7"] }
            CharKey { label: "פ"; shifted: ""; extended: ["8"]; extendedShifted: ["8"] }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ש"; shifted: ""; }
            CharKey { label: "ד"; shifted: ""; }
            CharKey { label: "ג"; shifted: ""; }
            CharKey { label: "כ"; shifted: ""; }
            CharKey { label: "ע"; shifted: ""; }
            CharKey { label: "י"; shifted: ""; }
            CharKey { label: "ח"; shifted: ""; }
            CharKey { label: "ל"; shifted: ""; }
            CharKey { label: "ך"; shifted: ""; extended: ["9"]; extendedShifted: ["9"] }
            CharKey { label: "ף"; shifted: ""; extended: ["0"]; extendedShifted: ["0"] }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ז"; shifted: ""; }
            CharKey { label: "ס"; shifted: ""; }
            CharKey { label: "ב"; shifted: ""; }
            CharKey { label: "ה"; shifted: ""; }
            CharKey { label: "נ"; shifted: ""; }
            CharKey { label: "מ"; shifted: ""; }
            CharKey { label: "צ"; shifted: ""; }
            CharKey { label: "ת"; shifted: ""; }
            CharKey { label: "ץ"; shifted: ""; }
            BackspaceKey { padding: 0 }
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight;

            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; }
            CharKey        { id: commaKey;    label: ","; shifted: "/"; extended: ["'", ";", ":"]; anchors.left: languageMenuButton.right; }
            SpaceKey       { id: spaceKey;                               anchors.left: commaKey.right; anchors.right: dotKey.left; noMagnifier: true }
            CharKey        { id: dotKey;      label: "."; shifted: "."; extended: ["?", "!"]; anchors.right: enterKey.left; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right }
        }
    } // column
}
