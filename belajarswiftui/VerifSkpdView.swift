import SwiftUI
import SlidingTabView

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            VStack{
                Color(hex: 0x264653)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
                VStack{
                    RectangtleTop(tittle: "Verifikasi SKPD",presentationMode: presentationMode)
                    tabIndexSKPD()
                    Spacer()
                }
                .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct tabIndexSKPD : View {
    @State private var tabIndex = 0
    var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex, tabs: ["SKPD","E-SPTPD"], animation: .easeInOut)
            if(tabIndex == 0) {
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
                        NavigationLink(destination: DetailSkpdView(index: index)) {
                            ContentBodyView()
                        }
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
                        NavigationLink(destination: DetailSkpdView(index: index)) {
                            ContentBodyView()
                        }
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
                        
                        Image("imghotel")
                            .frame(width: 60,height: 60)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom:0, trailing: 16))
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
