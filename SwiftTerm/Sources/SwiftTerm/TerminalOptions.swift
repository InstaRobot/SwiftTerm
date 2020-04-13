//
//  TerminalOptions.swift
//  SwiftTerm
//
//  Created by Miguel de Icaza on 2/29/20.
//  Copyright © 2020 Miguel de Icaza. All rights reserved.
//

import Foundation

/// Configuration option for the desired cursor style, this style can also be overwritten by the application
/// inside the terminal, and the UI control can choose to honor this request.
public enum CursorStyle {
    case blinkBlock
    case steadyBlock
    case blinkUnderline
    case steadyUnderline
    case blinkingBar
    case steadyBar
}

/// Configuration options for the terminal at startup, these values are only read at startup
public struct TerminalOptions {
    /// Desired number of columns at startup (default 80)
    public var cols: Int
    /// Desired number of rows at startup (default 25)
    public var rows: Int
    /// Controls whether a Line-Feed character will also behave like a carriage return (true) or not (false).  defaults to true)
    public var convertEol: Bool
    /// Desired value for the terminal name, defaults to xterm-color
    public var termName: String
    /// The desired startup cursor style, this merely sets an internal variable, it is the view job to render it
    public var cursorStyle: CursorStyle
    /// Deprecated?   The new accessibility work will make this useless
    public var screenReaderMode: Bool
    /// Size of the scrollback buffer, defaults to 500 lines
    public var scrollback: Int
    /// Default size of the tabs, defaults to 8
    public var tabStopWidth: Int

    public init(cols: Int = 80, rows: Int = 25, convertEol: Bool = true, termName: String = "xterm-color", cursorStyle: CursorStyle = CursorStyle.blinkBlock, screenReaderMode: Bool = false, scrollback: Int = 500, tabStopWidth: Int = 8) {
        self.cols = cols
        self.rows = rows
        self.convertEol = convertEol
        self.termName = termName
        self.cursorStyle = cursorStyle
        self.screenReaderMode = screenReaderMode
        self.scrollback = scrollback
        self.tabStopWidth = tabStopWidth
    }
}
