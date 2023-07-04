//
//  DetailSkpdView.swift
//  belajarswiftui
//
//  Created by Fauzan Ghozi Mubarak on 04/07/23.
//

import SwiftUI

struct DetailSkpdView: View {
    @Environment(\.presentationMode) var presentationMode
    let index: Int
    var body: some View {

        NavigationView {
            VStack{
                Color(hex: 0x264653)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
                VStack{
                    RectangtleTop(tittle: "A-12345643",presentationMode: presentationMode)
                    Text("Haii \(index)")
                    Spacer()
                }
                .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
      
    }
}

struct DetailSkpdView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSkpdView(index: 0)
    }
}



