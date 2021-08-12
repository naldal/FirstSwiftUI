//
//  TableContentView.swift
//  FirstSwiftUI
//
//  Created by 송하민 on 2021/08/12.
//

import SwiftUI
struct TabContentView: View {
    var body: some View {
        TabView {
            Tab1SwiftUIView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }
            Tab2SwiftUIView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
                }
        }
    }
}

struct TabContentView_Preview: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
