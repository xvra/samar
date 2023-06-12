//
//  SplashScreen.swift
//  Pendasi
//
//  Created by Adinda Dwi on 08/06/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isSplashFinished = false
    
    var body: some View {
        Group {
            if isSplashFinished{
                ContentView()
            } else {
                ZStack{
                    Image("bg")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .ignoresSafeArea()
                        .frame(width: 400.0, height: 500.0)
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300, maxHeight: 400)
                        .padding(.all)
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation{
                            isSplashFinished = true
                        }
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
