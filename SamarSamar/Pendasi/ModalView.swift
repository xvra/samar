//
//  ModalView.swift
//  Pendasi
//
//  Created by Adinda Dwi on 09/06/23.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var isShowing: Bool
    
    @State private var curHeight: CGFloat = 400
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    
    //seleceted category....
    @State var selectedCategory : Category = categories.first!
    
    
    //Grid Items Layout
    let gridItemsLayout = [GridItem(), GridItem(), GridItem()]
    
    var body: some View {
        ZStack (alignment: .bottom){
            if isShowing{
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                mainView
                .transition(.move(edge: .bottom))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    
    var mainView: some View{
        VStack{
            
            Text("Filter")
                .font(.custom("SFProText-Bold", size: 25))
            
            Divider()
            .background(Color.black)
            
            VStack(alignment: .leading, spacing: 10,
                   content: {
                Text("Pengecualian Bahan MPASI")
                    .font(.custom("SFProText-Bold", size: 20))
                    .padding(.horizontal, 30)
                Text("Alergi, ketidaksukaan, dan aksesibilitan bahan")
                    .font(.custom("SFProText-Regular", size: 15))
                    .padding(.horizontal, 30)
                
                VStack{
                    LazyVGrid(columns: gridItemsLayout, spacing: 25){
                        ForEach(categories){ category in
                            HStack {
                                Text(category.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(selectedCategory.id == category.id ?  .white : Color("Kuning1"))
                                
                                
                            }
                            .padding(.vertical,12)
        //                    .padding(.horizontal,14)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(20)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color("Kuning1") , lineWidth: 3))
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(selectedCategory.id == category.id ? Color("Kuning1") : Color.clear)
                            )
                            .onTapGesture {
                                withAnimation(.spring()){
                                    selectedCategory = category
                                }
                            }
                        }
                    }
                    .animation(.easeInOut)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    
                    
                    Button {
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 358.0, height: 58.0)
                                .foregroundColor(Color("Kuning"))
                                .shadow(radius: 5)
                            Text("Simpan")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                        }
                    }
                }
                
            })
        }
        .padding(.bottom, 30)
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            // HACK FOR ROUNDEDCORNERS ONLY ON TOP
            ZStack{
                RoundedRectangle(cornerSize: .zero)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                Rectangle()
                    .frame(height: curHeight / 2)
            }
                .foregroundColor(.white)
        )
        
        
    }
    
//    @State private var prevDragTranslation = CGSize.zero
//
//    var dragGesture: some Gesture{
//        DragGesture(minimumDistance: 0, coordinateSpace: .global)
//            .onChanged { val in
//
//                let dragAmount = val.translation.height - prevDragTranslation.height
//                if  curHeight >  maxHeight || curHeight < minHeight {
//                    curHeight -= dragAmount / 6
//                } else {
//                    curHeight -= dragAmount
//                }
//
//                prevDragTranslation = val.translation
//
//            }
//            .onEnded { val in
//                prevDragTranslation = .zero
//            }
//    }
    
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        RencanaMingguan()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
