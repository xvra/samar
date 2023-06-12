//
//  TabVIew.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 08/06/23.
//

import SwiftUI

struct TabVIew: View {
    init() {
//            UINavigationBar.appearance().backgroundColor = .red
           UITabBar.appearance().backgroundColor = .white
       }
    var body: some View {
        TabView {
            Group {
                RencanaMingguan()
                .tabItem {
                    Label("Rencana MPASI", systemImage: "square.and.pencil")
                }
                    Riwayat()
                    .tabItem {
                        Label("Riwayat", systemImage: "clock.arrow.2.circlepath")
                    }
                    .ignoresSafeArea()
            }
//            .toolbarColorScheme(.yellow, for: .tabBar)
        }
        .navigationBarBackButtonHidden(true)            .navigationBarTitle("", displayMode: .inline)
    }
}

struct TabVIew_Previews: PreviewProvider {
    static var previews: some View {
        TabVIew()
    }
}
