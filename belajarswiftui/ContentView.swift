//
//  ContentView.swift
//  belajarswiftui
//
//  Created by Fauzan Ghozi Mubarak on 30/06/23.
//

import SwiftUI
import SlidingTabView
struct ContentView: View {
    var body: some View {
        VStack{
            Color(hex: 0x264653).edgesIgnoringSafeArea(.top)
                .frame(height: 0)
            VStack{
                RectangtleTop()
                tabIndexSKPD()
                Spacer()
                
            }
            .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
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
      
struct tabIndexSKPD : View{
    @State private var tabIndex = 0
    var body: some View{
        VStack{
            SlidingTabView(selection: $tabIndex, tabs: ["SKPD","E-SPTPD"], animation: .easeInOut)
            if(tabIndex == 0){
                ViewSkpd()
            } else if tabIndex == 1 {
                ViewSptpd()
            }
        }
    }
}

struct ViewSkpd : View {
    var body: some View {
        VStack{
            SearchView()
            ScrollView {
                    VStack(spacing: 16) {
                        ForEach(0..<10) { index in
                            ContentBodyView()
                        }
                    }
                    .padding()
                }
        }
        .frame(height: .infinity)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
    }
}
struct ViewSptpd : View {
    var body: some View {
        VStack{
            SearchView()
            ScrollView {
                    VStack(spacing: 16) {
                        ForEach(0..<10) { index in
                            ContentBodyView()
                        }
                    }
                    .padding()
                }
        }
        .frame(height: .infinity)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
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


struct ContentBodyView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .frame(height: 150)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    HStack{
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("No SKPD: A-12345678")
                                .font(.system(size: 12))
                            Text("NPWPD: 1234.12.123")
                                .font(.system(size: 12))
                            Text("Nama Wajib Pajak: Hotel ABC")
                                .font(.system(size: 12))
                            Text("Masa Pajak: Desember 2022")
                                .font(.system(size: 12))
                            Text("Jumlah Pajak: Rp. 600.000")
                                .font(.system(size: 12))

                            }
                            .foregroundColor(.black)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                            
                        Spacer()
                    }
             
                      
                )
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    
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
