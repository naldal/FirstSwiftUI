//
//  AlertSwiftUIView.swift
//  FirstSwiftUI
//
//  Created by 송하민 on 2021/08/12.
//

import SwiftUI

struct AlertSwiftUIView: View {
    @State private var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }, label: {
            Text("Show Alert")
        })
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("Title"), message: Text("Message"), primaryButton: .destructive(Text("go Away")), secondaryButton: .cancel(Text("OK")))
        })
    }
}

struct AlertSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AlertSwiftUIView()
    }
}
