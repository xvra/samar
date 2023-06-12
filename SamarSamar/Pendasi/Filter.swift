//
//  Filter.swift
//  Pendasi
//
//  Created by Adinda Dwi on 11/06/23.
//

import SwiftUI


struct Filter: View {
    @State private var showActionSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.white, for: .navigationBar)
            
            .toolbarBackground(.visible, for: .navigationBar)
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Rencana MPASI").font(.headline)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showActionSheet = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    
                }
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Tambahkan Menu ke Rencana MPASI")
                    .foregroundColor(.yellow),
                            message: Text("Pilih Waktu Untuk Memberikan Menu")
                    .foregroundColor(.yellow),
                            buttons: [
                    .default(Text("Sarapan")
                                .foregroundColor(.yellow)),
                    .default(Text("Makan Siang")
                                .foregroundColor(.yellow)),
                    .default(Text("Makan Malam")
                                .foregroundColor(.yellow)),
                    .cancel()
                ])
            }
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
    }
}

