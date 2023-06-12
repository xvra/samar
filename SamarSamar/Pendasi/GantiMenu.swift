import SwiftUI


struct GantiMenu: View {
    @State private var searchText = ""
    @State private var showActionSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Group {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 358.0, height: 58.0)
                                    .foregroundColor(.white)
                                HStack {
                                    Image("Daging")
                                        .resizable()
                                        .frame(width: 42.0, height: 42.0)
                                    Image("Kentang")
                                        .resizable()
                                        .frame(width: 42.0, height: 42.0)
                                    Text("Daging")
                                    Text("+")
                                    Text("Kentang")
                                        .padding(.trailing, 40)
                                    Button(action: {
                                        showActionSheet = true
                                    }) {
                                        Image(systemName: "plus.circle")
                                            .foregroundColor(.yellow)
                                    }
                                }
                            }
                        }
                        Spacer()
                    }
                    .padding(.all, 8.0)
                }
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }
            .navigationTitle("Ganti Menu")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, prompt: "Cari kata...")
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

struct GantiMenu_Previews: PreviewProvider {
    static var previews: some View {
        GantiMenu()
    }
}

