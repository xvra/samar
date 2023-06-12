//
//  RencanaMingguan.swift
//  Pendasi
//
//  Created by Adinda Dwi on 08/06/23.
//

import SwiftUI

struct RencanaMingguan: View {
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    @State var index = 0
    @State private var showModal = false
    
    var body: some View {
            NavigationView{
                ZStack{
                    
                    Color("Abu")
                        .ignoresSafeArea()
                   
                    VStack{
                        HStack{
                            //Rencana MPASI
                            Button(action: {
                                withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                                    self.index = 0
                                }
                            }) {
                                Text("Rencana MPASI")
                                    .foregroundColor(self.index == 0 ? .black : .black)
                                    .fontWeight(.semibold)
                                    .padding(.vertical, 10)
                                    .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                            }
                            
                            .background(self.index == 0 ? .white : .clear)
                            .clipShape(Capsule())
                            
                            //Bahan MPASI
                            Button(action: {
                                withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                                    self.index = 1
                                }
                            }) {
                                Text("Bahan MPASI")
                                    .foregroundColor(self.index == 1 ? .black : .black)
                                    .fontWeight(.semibold)
                                    .padding(.vertical, 10)
                                    .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                            }
                            
                            .background(self.index == 1 ? .white : .clear)
                            .clipShape(Capsule())
                            
                            
                        }
                        .background(Color("tertiary").opacity(0.12))
                        .clipShape(Capsule())
                        .padding(.top, 25)
//                        .offset(y: -290)
                        
                        
                        //Show different forms
                        if self.index == 0 {
                           
                            RencanaMPASI()
                            
                           

                        }else{
                            BahanMPASI()
                        }
                        
                        
                    }
                    
                    
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(Color.white, for: .navigationBar)
                    
                    .toolbarBackground(.visible, for: .navigationBar)
                    
                    ModalView(isShowing: $showModal)
                        .padding(.bottom, 2)
                    
                }
                .accentColor(Color("primary"))
                
                
                
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 20))
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Rencana MPASI").font(.headline)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showModal.toggle()
                        }) {
                            Label("Edit", systemImage: "slider.horizontal.3")
                        }
                        
                    }
                }
            }
    }
}

struct RencanaMPASI: View{
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack (spacing: 15){
                Text("Hari Ini: ")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("SFProText-Bold", size: 16))
                    .padding(.leading, 30)

                tanggal()
            }
        }
       
        
        
    }
}

struct BahanMPASI: View{
    var body: some View{
        VStack{
            Text("Bahan yang harus disiapkan minggu ini:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.custom("SFProText-Bold", size: 16))
            
            HStack(){
                Image("ayam")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                
                VStack(alignment: .leading, spacing: 3){
                    Text("Ayam")
                        .font(.system(size: 23))
                        .fontWeight(.medium)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    Text("0.5 kg")
                        .font(.system(size: 18))
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.top, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
         
            Divider()
                .background(.black)
                .padding(.leading, 60)
            
            HStack(){
                Image("ayam")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                
                
                VStack(alignment: .leading, spacing: 3){
                    Text("Ayam")
                        .font(.system(size: 23))
                        .fontWeight(.medium)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    Text("0.5 kg")
                        .font(.system(size: 18))
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.top, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
         
            Divider()
                .background(.black)
                .padding(.leading, 60)
        }
        .padding(.top, 12)
        .padding(.leading, 30)
        Spacer()
        
        
        
    }
}

struct RencanaMingguan_Previews: PreviewProvider {
    static var previews: some View {
        RencanaMingguan()
    }
}

