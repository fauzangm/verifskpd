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

