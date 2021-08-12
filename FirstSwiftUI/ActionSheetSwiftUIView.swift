//
//  ActionSheetSwiftUIView.swift
//  FirstSwiftUI
//
//  Created by 송하민 on 2021/08/12.
//

import SwiftUI

struct ActionSheetSwiftUIView: View {
    @State var showingSheet = false
    var body: some View {
        Button(action: {
            self.showingSheet = true
        }, label: {
            Text("Show Action Sheet")
        }).actionSheet(isPresented: $showingSheet, content: {
            ActionSheet(title: Text("Title"), message: Text("message"), buttons: [.default(Text("Dismiss")), .cancel(Text("Cancel"))])
        })
    }
}

struct ActionSheetSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActionSheetSwiftUIView()
                .environment(\.colorScheme, .dark)
            
            ActionSheetSwiftUIView()
                .environment(\.colorScheme, .light)
        }
    }
}
