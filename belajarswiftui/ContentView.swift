//
//  ContentView.swift
//  belajarswiftui
//
//  Created by Fauzan Ghozi Mubarak on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            RectangtleTop()
            SearchView()
            TabView {
                      Text("SKPD View")
                
                          .tabItem {
                              Label("SKPD", systemImage: "briefcase")
                          }
                      
                      Text("Esptpd View")
                          .tabItem {
                              Label("Esptpd", systemImage: "dollarsign.square")
                          }
                  }
                  .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                  .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                  
            Spacer()
            
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RectangtleTop: View {
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
                
                Text("Verifikasi SKPD")
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .padding(EdgeInsets(top: 26, leading: 16, bottom: 20, trailing: 0))
                Spacer()
                
            }
          

               
        }
        .zIndex(1) // Mengatur zIndex menjadi 1 agar Rectangletop berada di atas parent view
        
    }
}
      

struct ViewSkpd : View {
    var body: some View {
        VStack{
            Text("hai SKPD")
        }
    }
}

struct ViewSptpd : View {
    var body: some View {
        VStack{
            Text("Hai Sptpd")
        }
    }
}

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            TextField("NPWPD / No SKPD", text: $searchText)
                .padding(.vertical, 18)
                .padding(.horizontal, 40)
                .background(Color.white)
                              .cornerRadius(10)
                              .overlay(
                                  RoundedRectangle(cornerRadius: 10)
                                      .stroke(Color.gray, lineWidth: 1)
                              )
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 16)
                        Spacer()
                    }
                )
                .padding(.horizontal, 16)
                .padding(.vertical, 16)

            // Konten lainnya di bawah SearchField
        }
    }
}


extension Color {
    init(hex: UInt32) {
        let red = Double((hex & 0xFF0000) >> 16) / 255.0
        let green = Double((hex & 0x00FF00) >> 8) / 255.0
        let blue = Double(hex & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

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
