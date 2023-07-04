//
//  AssetUi.swift
//  belajarswiftui
//
//  Created by Fauzan Ghozi Mubarak on 04/07/23.
//

import Foundation
import SwiftUI


struct CustomShape: Shape {
    let radius: CGFloat = 20
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - radius))
        path.addArc(center: CGPoint(x: rect.maxX - radius, y: rect.maxY - radius), radius: radius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
        path.addLine(to: CGPoint(x: rect.minX + radius, y: rect.maxY))
        path.addArc(center: CGPoint(x: rect.minX + radius, y: rect.maxY - radius), radius: radius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
        path.closeSubpath()
        
        return path
    }
}


struct RectangtleTop: View {
    let tittle : String
    @Binding var presentationMode: PresentationMode
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: .infinity, height: 70)
                .background(Color(hex: 0x264653))
                .foregroundColor(Color(hex: 0x264653))
                .clipShape(CustomShape())
            HStack(spacing: 8){
                Image(systemName: "arrow.left")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
                    .padding(EdgeInsets(top: 26, leading: 16, bottom: 20, trailing: 0))
                    .onTapGesture {
                        presentationMode.dismiss()
                      }
                
                Text("\(tittle)")
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .padding(EdgeInsets(top: 26, leading: 16, bottom: 20, trailing: 0))
                Spacer()
            }
        }
        .zIndex(1) // Mengatur zIndex menjadi 1 agar Rectangletop berada di atas parent view
    }
}
