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
    @State private var text: String = ""
    @State private var isApproved: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Color(hex: 0x264653)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 0)
                
                VStack {
                    RectangtleTop(tittle: "A-12345643", presentationMode: presentationMode)
                        .padding(.top, -20)
                    
                    ScrollView {
                        VStack {
                            CardDataSkpd()
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            
                            if(index == 0){
                                CardDetailObjekPajakReklame()
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            }else if(index == 1){
                                CardDetailPajakHoteldanParkir()
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            }else if(index == 2){
                                CardDetailObjekPajakAirTanah()
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            }else if(index == 3){
                                CardDetailObjekPajakResto()
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            }else {
                                CardDetailPajakHiburan()
                                    .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            }
                     
                            
                            CardEstimasiPerhitunganPajak()
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            
                            CardRiwayatSkpd()
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            
                            TextField("Keterangan", text: $text)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .disabled(true)
                                .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            
                            HStack(spacing: 16) {
                                Button(action: {
                                    // Implementasi aksi disetujui di sini
                                    isApproved = true
                                }) {
                                    Text("Disetujui")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.blue)
                                        .cornerRadius(16)
                                }
                                
                                Button(action: {
                                    // Implementasi aksi tolak di sini
                                    isApproved = false
                                }) {
                                    Text("Tolak")
                                        .foregroundColor(.blue)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(
                                            RoundedRectangle(cornerRadius: 16)
                                                .stroke(Color.blue, lineWidth: 2)
                                        )
                                        .background(Color.white)
                                        .cornerRadius(16)
                                }
                            }
                            .padding(EdgeInsets(top: 16, leading: 32, bottom: 0, trailing: 32))
                            
                            Spacer()
                        }
                    }
                }
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


//TAMPILAN DATA SKPD
struct CardDataSkpd: View {
    var body: some View{
        VStack {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .frame(height: 230)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    
                        HStack{
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Data SKPD")
                                    .bold()
                                    .font(.system(size: 12))
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                                Text("NPWPD")
                                    .font(.system(size: 12))
                                Text("Jenis Usaha")
                                    .font(.system(size: 12))
                                Text("Nama Usaha")
                                    .font(.system(size: 12))
                                Text("Alamat")
                                    .font(.system(size: 12))
                                Text("RT/RW")
                                    .font(.system(size: 12))
                                Text("Kelurahan")
                                    .font(.system(size: 12))
                                Text("Kecamatan")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                            Spacer()
                            VStack(alignment: .trailing, spacing: 8) {
                                Text("")
                                    .bold()
                                    .font(.system(size: 14))
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                                         Text("0001.3870.211")
                                             .font(.system(size: 12))
                                         Text("Pajak Air Tanah")
                                             .font(.system(size: 12))
                                         Text("Usaha Air Turbo")
                                             .font(.system(size: 12))
                                         Text("Jln Semeru No 18")
                                             .font(.system(size: 12))
                                         Text("003/001")
                                             .font(.system(size: 12))
                                         Text("Lowokwaru")
                                             .font(.system(size: 12))
                                         Text("Lowokwaru")
                                             .font(.system(size: 12))
                                     }
                            .foregroundColor(.black)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 16)
                        }
                    
                    
                    
                )
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
        }
    }
}


//TAMPILAN ESTIMASI PERHITUNGAN PAJAK
struct CardEstimasiPerhitunganPajak: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .frame(height: 300)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Estimasi Perhitungan Pajak")
                            .bold()
                            .font(.system(size: 12))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 8){
                                Text("Nomor SPT")
                                    .font(.system(size: 12))
                                Text("Potensi")
                                    .font(.system(size: 12))
                                Text("Tarif Pajak")
                                    .font(.system(size: 12))
                                Text("Jumlah")
                                    .font(.system(size: 12))
                                Text("Periode Awal")
                                    .font(.system(size: 12))
                                Text("Periode Akhir")
                                    .font(.system(size: 12))
                                Text("Jatuh Tempo")
                                    .font(.system(size: 12))
                                Text("Kode Biling")
                                    .font(.system(size: 12))
                                Text("Virtual Account")
                                    .font(.system(size: 12))
                            }
                            
                            Spacer() // Untuk menciptakan spasi antara dua VStack
                            
                            VStack(alignment: .trailing, spacing: 8) {
                                Text("A-12345643")
                                    .font(.system(size: 12))
                                Text("Rp.5.000.000")
                                    .font(.system(size: 12))
                                Text("10%")
                                    .font(.system(size: 12))
                                Text("Rp.500.000")
                                    .font(.system(size: 12))
                                Text("01 November 2022")
                                    .font(.system(size: 12))
                                Text("30 November 2022")
                                    .font(.system(size: 12))
                                Text("30 Desember 2022")
                                    .font(.system(size: 12))
                                Text("001893223")
                                    .font(.system(size: 12))
                                Text("0000000")
                                    .font(.system(size: 12))
                            }
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
                    .alignmentGuide(.leading) { d in
                        d[HorizontalAlignment.leading]
                    }
                )
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
        }
    }
}

//TAMPILAN RIWAYAT SKPD
struct CardRiwayatSkpd: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Riwayat SKPD / SKPDKB")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 16, leading: 26, bottom: 0, trailing: 0))
            
            ForEach(0..<3) { index in
                    contentRiwayatSkpd()
            }
            .padding(.vertical,16)
            
        }
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

struct contentRiwayatSkpd: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .frame(height: 100)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                .padding(.horizontal, 20)
                .overlay(
                    
                        HStack{
                            VStack(alignment: .leading, spacing: 8) {
                                Text("September 2022")
                                    .font(.system(size: 12))
                                Text("Rp.2.000.000")
                                    .font(.system(size: 12))
                                Text("04/10/12")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                            .padding(.leading, 32)
                            .padding(.vertical, 16)
                            Spacer()
                 
                                Text("A - 12345643")
                                    .bold()
                                    .font(.system(size: 14))
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                            .foregroundColor(.black)
                            .padding(.trailing,50)
                            .padding(.top, 18)
                        }
                        
                    
                    
                    
                )
        }
    }
}


// TAMPILAN PAJAK HOTEL DAN PARKIR
struct CardDetailPajakHoteldanParkir: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Detail Objek Pajak Hotel")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 16, leading: 26, bottom: 0, trailing: 0))
            
            ForEach(0..<3) { index in
                contentDetailPajakHoteldanParkir()
            }
            .padding(.vertical,16)
            
        }
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

struct contentDetailPajakHoteldanParkir: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .frame(height: 100)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                .padding(.horizontal, 20)
                .overlay(
                    
                        HStack{
                            VStack(alignment: .leading, spacing: 8) {
                                Text("5 Kamar")
                                    .font(.system(size: 12))
                                Text("Rp.2.000.000")
                                    .font(.system(size: 12))
                                Text("3 Kamar yang laku")
                                    .font(.system(size: 12))
                            }
                            .foregroundColor(.black)
                            .padding(.leading, 32)
                            .padding(.vertical, 16)
                            Spacer()
                 
                                Text("Deluxe")
                                    .bold()
                                    .font(.system(size: 14))
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                            .foregroundColor(.black)
                            .padding(.trailing,50)
                            .padding(.top, 18)
                        }
                        
                    
                    
                    
                )
        }
    }
}


// TAMPILAN PAJAK RESTO
struct CardDetailObjekPajakResto: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Detail Objek Pajak Resto")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0))
            
            Group {
    
                Text("Jumlah Kursi")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .foregroundColor(Color.black)
                
                TextField("10", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
                    .padding(.horizontal, 16)
                    .font(.system(size: 12))
                
                Text("Jumlah Meja")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("5", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Jumlah Pengunjung")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("5", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Harga Makanan")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Rp.12.000 - Rp.15.000", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Harga Minuman")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Rp.10.000 - Rp.20.000", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
            }
            
            
            Spacer()
                .padding(.bottom,16)


            
            
        }
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }

    
}


// TAMPILAN PAJAK AIR TANAH
struct CardDetailObjekPajakAirTanah: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Detail Objek Pajak Air Tanah")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0))
            
            Group {
    
                Text("Peruntukan")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .foregroundColor(Color.black)
                
                TextField("Niaga", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
                    .padding(.horizontal, 16)
                    .font(.system(size: 12))
                
                Text("Jenis")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("ABT", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Pengenaan")
                    .font(.system(size: 14))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("2%", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
            }
            
            
            Spacer()
                .padding(.bottom,16)


            
            
        }
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }

    
}

// TAMPILAN PAJAK HIBURAN

struct CardDetailPajakHiburan: View {
    @State private var text: String = ""
    @State private var selectedOption: Bool?
    var body: some View {
        VStack(alignment: .leading){
            Text("Detail Objek Pajak Hiburan")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 16, leading: 26, bottom: 0, trailing: 0))
            
            ForEach(0..<1) { index in
                contentDetailPajakHiburan()
            }
            .padding(.vertical,16)
            
            Group {
                
                Group{
                    Text("Jumlah Pengunjung rata-rata pada hari biasa")
                        .font(.system(size: 12))
                        .padding(.horizontal, 16)
                        .padding(.top, 16)
                        .foregroundColor(Color.black)
                    
                    TextField("Label", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disabled(true)
                        .padding(.horizontal, 16)
                        .font(.system(size: 12))
                    Text("(khusus untuk pertunjukan Film, Kesenian dan Sejenisnya, Pagelaran Musik dan Tari)")
                        .font(.system(size: 10))
                        .padding(.horizontal, 16)
                        .padding(.top, -8)
                        .foregroundColor(Color.black)
                    
                }

                Group{
                    Text("Jumlah pengunjung rata-rata pada hari libur/minggu")
                        .font(.system(size: 12))
                        .padding(.horizontal, 16)
                        .padding(.top,8)
                        .foregroundColor(Color.black)
                    
                    TextField("Label", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 16)
                        .disabled(true)
                        .font(.system(size: 12))
                    Text("(khusus untuk pertunjukan Film, Kesenian dan Sejenisnya, Pagelaran Musik dan Tari)")
                        .font(.system(size: 10))
                        .padding(.horizontal, 16)
                        .padding(.top, -8)
                        .foregroundColor(Color.black)
                }
  
                
                Group{
                    Text("Jumlah Meja/Mesin")
                        .font(.system(size: 12))
                        .padding(.horizontal, 16)
                        .padding(.top,8)
                        .foregroundColor(Color.black)
                    
                    TextField("Label", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 16)
                        .disabled(true)
                        .font(.system(size: 12))
                    Text("(Khusus untuk Billyar, Permainan Ketangkasan)")
                        .font(.system(size: 10))
                        .padding(.horizontal, 16)
                        .padding(.top, -8)
                        .foregroundColor(Color.black)
                }
        
                
                
                Group{
                    Text("Jumlah Kamar/Ruangan")
                        .font(.system(size: 12))
                        .padding(.horizontal, 16)
                        .padding(.top,8)
                        .foregroundColor(Color.black)
                    
                    TextField("Label", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 16)
                        .disabled(true)
                        .font(.system(size: 12))
                    Text("(khusus untuk Panti Pijat, Mandi Uap/Spa, Karaoke)")
                        .font(.system(size: 10))
                        .padding(.horizontal, 16)
                        .padding(.top, -8)
                        .foregroundColor(Color.black)
                }
            
            }
            Group{
                Text("Apakah perusahaan menyediakan karcis bebas (free) kepada orang-orang tertenu")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.top,8)
                    .foregroundColor(Color.black)
                HStack(alignment: .center){
                    RadioButton(text: "Ya", isSelected: selectedOption == true) {
                        selectedOption = true
                    }
                    RadioButton(text: "Tidak", isSelected: selectedOption == true) {
                        selectedOption = false
                    }
                }
                .padding(.horizontal,16)
            }
            

            Group{
                Text("Berapa jumlah yang beredar")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.top,8)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
            }
            
            Group{
                Text("Penjualan Karcis dengan mesin tiket")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.top,8)
                    .foregroundColor(Color.black)
                HStack(alignment: .center){
                    RadioButton(text: "Ya", isSelected: selectedOption == true) {
                        selectedOption = true
                    }
                    RadioButton(text: "Tidak", isSelected: selectedOption == true) {
                        selectedOption = false
                    }
                }
                .padding(.horizontal,16)
            }
            
            Group{
                Text("Melaksanakan Pembukuan/Pencatatan")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.top,8)
                    .foregroundColor(Color.black)
                HStack(alignment: .center){
                    RadioButton(text: "Ya", isSelected: selectedOption == true) {
                        selectedOption = true
                    }
                    RadioButton(text: "Tidak", isSelected: selectedOption == true) {
                        selectedOption = false
                    }
                }
                .padding(.horizontal,16)
            }
        
            
            
       
            Spacer()
                .padding(.bottom,16)
            
        }
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

struct contentDetailPajakHiburan: View {
    var body: some View {
        VStack {
                    
                    VStack(alignment: .leading, spacing: 16) {
                        HStack (alignment:.firstTextBaseline){
                            Text("Semua Kelas")
                                .font(.system(size: 12))
                                .padding(.leading,30)
                                       
                            Text("Rp.2.000.000")
                                .font(.system(size: 12))
                                .padding(.leading,100)
                            
                        }
                        Divider()
                            .background(Color.gray)
                            .padding(.horizontal,30)
                    }
                    .foregroundColor(.black)
        }
    }
}

struct RadioButton: View {
    var text: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Circle()
                    .fill(isSelected ? Color.blue : Color.gray)
                    .frame(width: 20, height: 20)
                
                Text(text)
                    .font(.system(size: 12))
            }
            .padding(8)
        }
        .foregroundColor(.black)
    }
}


// TAMPILAN PAJAK REKLAME
struct CardDetailObjekPajakReklame: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Detail Objek Pajak Reklame")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0))
            
            Group {
    
                Text("Judul Reklame")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
                    .padding(.horizontal, 16)
                    .font(.system(size: 12))
                
                Text("Nama Produk Reklame")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Nama Penyewa")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Alamat Penyewa")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Masa Pajak")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
            
            }
            
            Group {
    
                Text("Jumlah Tahun")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
                    .padding(.horizontal, 16)
                    .font(.system(size: 12))
                
                Text("Jumlah Bulan")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Jumlah Minggu")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Jumlah Hari")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
                Text("Dimensi Reklame")
                    .font(.system(size: 12))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color.black)
                
                TextField("Label", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 16)
                    .disabled(true)
                    .font(.system(size: 12))
                
            
            }
            
            ForEach(0..<3) { index in
                contentDetailPajakReklame()
                    .padding(.horizontal,16)
            }
            .padding(.vertical,16)
            Spacer()
                .padding(.bottom,16)
            
        }
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }

    
}

struct contentDetailPajakReklame: View {
    @State private var isShowingBottomSheet = false
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Reklame Bilboard")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                .alignmentGuide(.leading) { d in d[HorizontalAlignment.leading] }// Mengatur alignment menjadi leading (kiri)
            
            Group {
                Text("5 Kamar")
                    .font(.system(size: 12))
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                
                Text("Rp.2.000.000")
                    .font(.system(size: 12))
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                
                Text("3 Kamar yang laku")
                    .font(.system(size: 12))
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
            }
            .padding(.horizontal,16)
        }
        .onTapGesture {
             isShowingBottomSheet = true
         }
         .sheet(isPresented: $isShowingBottomSheet) {
             BottomSheetView()
                 .presentationDetents([.height(400)])
                 .presentationDragIndicator(.visible)
         }
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .frame(maxWidth: .infinity)
        .padding(.vertical,16)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}


struct BottomSheetView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 8){
            Text("Reklame Bilboard")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
                .frame(maxWidth: .infinity, alignment: .leading)// Mengatur alignment menjadi leading (kiri)
            HStack{
                VStack(spacing: 8){
                    Group {
                        Text("Jumlah Reklame")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Lokasi")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Klasifikasi")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("No persil")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        Text("Jumlah Sisi")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Panjang")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Lebar")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Diameter")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                    }
                    Group{
                        
                        Text("Luas")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Tarif Pajak")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Jumlah Pajak")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                    }
                }
                VStack(spacing: 8){
                    Group {
                        Text("5")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Jln Ijen")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("A")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("-")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("5")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("1")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("3")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("-")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                    }
                    Group{
                        Text("2 m2")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Rp.2.000.000")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                        Text("Rp.2.000.000")
                            .font(.system(size: 12))
                            .foregroundColor(Color.black)
                            .frame(maxWidth: .infinity, alignment: .leading) // Mengatur alignment menjadi leading (kiri)
                        
                    }
                }
            }
      
            .padding(.horizontal,16)

        }
 
    }
}
