//
//  ContentView.swift
//  AttributedStringMarkdown
//
//  Created by Ryan Grier on 6/18/21.
//

import SwiftUI

struct ContentView: View {
    let attributedString = try! AttributedString(markdown:
    """

    Hello **World** 👋🏻

    [This is a test](www.google.com)
    """, options: .fb9190672)

    var body: some View {
        VStack(alignment: .leading) {
            Text(attributedString)
            Text("Hello **World** 👋🏻\n[This is a test](www.google.com)")
        }
    }
}

extension AttributedString.MarkdownParsingOptions {
    static var fb9190672: AttributedString.MarkdownParsingOptions = AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
