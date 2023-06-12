//
//  DetailRiwayat.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 11/06/23.
//

import SwiftUI

struct DetailRiwayat: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
      //  NavigationStack {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        Text ("23 MARET 23 : SARAPAN")
                            .font(.caption)
                            .fontWeight(.bold)
                            .padding(.trailing, 190.0)
                        Divider()
                        Group {
                            HStack {
                                Text("Serat")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Bayam")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                            HStack {
                                Text("Protein Nabati")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Tempe")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                            HStack {
                                Text("Lemak")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Minyak Zaitun")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                            HStack {
                                Text("Reaksi Anak")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Tidak Alergi dan Suka")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                            HStack {
                                Text("Serat")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Bayam")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                        }
                   
                    }
                   
                
                }
            }
         .padding(.all, 16.0)
         .background(Color("Abu"))
            
//            .navigationBarTitle(Text ("Daging + Kentang"), displayMode: .inline)
            
            //  .toolbarBackground(Color.white, for: .navigationBar)
            // .toolbarBackground(.visible, for: .navigationBar)
            //            .navigationBarTitle(Text ("Daging + Kentang"), displayMode: .inline)
            // .navigationTitle("Riwayat MPASI")
            //.navigationBarTitleDisplayMode(.inline)
       // }
        .navigationBarTitle(Text ("Daging + Kentang"), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
       
    }
    
    
    var backButton: some View {
            Button(action:  {
                presentationMode.wrappedValue.dismiss()
                // Handle back button action here
            }) {
                HStack {
                    Image(systemName: "arrow.left")
                    Text("Kembali")
                }
            }
        }
    
}

struct DetailRiwayat_Previews: PreviewProvider {
    static var previews: some View {
        DetailRiwayat()
    }
}

