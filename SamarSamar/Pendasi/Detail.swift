//
//  Detail.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 08/06/23.
//

import SwiftUI

struct Detail: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        
                        //                Text("Daging + Kentang")
                        //                    .font(.callout)
                        //                    .fontWeight(.bold)
                        //                    .multilineTextAlignment(.leading)
                        //                    .padding(.trailing, 220.0)
                        Group {
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(width: 358.0, height: 120.0)
                                    .foregroundColor(Color("Biru1"))
                                HStack {
                                    Image ("Daging")
                                        .resizable()
                                        .frame(width: 100.0, height: 100.0)
                                    Image ("Kentang")
                                        .resizable()
                                        .frame(width: 100.0, height: 100.0)
                                }
                            }
                        }
                        Group {
                            Text("BAHAN UTAMA")
                                .font(.caption)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 270.0)
                                .padding(.top, 20)
                                .foregroundColor(Color("Abu1"))
                            Divider()
                            HStack {
                                Text("Protein")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Telur")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                                Text("-")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                                Text("1")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                                Text("Butir")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                            HStack {
                                Text("Karbohidrat")
                                    .font(.body)
                                    .fontWeight(.regular)
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Kentang")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                                Text("-")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                                Text("100")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                                Text("Gram")
                                    .font(.body)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .frame(width: 360, height: 20)
                            Divider()
                        }
                        Group {
                            Text("REKOMENDASI PENDAMPING (Opsional)")
                                .font(.caption)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Abu1"))
                                .padding(.trailing, 115.0)
                                .padding(.top, 20)
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
                        }
                        ZStack{
                            Group {
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(width: 358.0, height: 121.0)
                                    .foregroundColor(Color("Biru"))
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(width: 355.0, height: 118.0)
                                    .foregroundColor(.white)
                                Text("Wow Fakta")
                                    .font(.body)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color("Biru"))
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing, 252.0)
                                    .padding(.bottom, 70.0)
                                Text("Serius, telur Jangan dibolak-balik, nanti bakteri joget-joget dekat kamu. Telur setengah matang? No-no! Bayi bingung jadi chef bedah atau juru masak. Jaga telur, jaga bayi, hidup penuh kelucuan!")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 345.0, height: 70.0)
                                    .padding(.top, 20)
                            }
                        }
                        .toolbarBackground(Color.white, for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
//                        .padding(.bottom, 100)
                    }
                    .padding(.all, 8.0)
                }
                Spacer()
                    .navigationBarBackButtonHidden(true)
                    .navigationTitle("Daging + Kentang")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail()
    }
}

