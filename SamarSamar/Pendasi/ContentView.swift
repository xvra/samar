import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var birthdate: Date = Date()
    @State private var isDatePickerVisible = false
    @State private var isPlanStarted = false
    @State private var isSkipped = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                VStack {
                    VStack {
                        Image("OnBoarding")
                            .resizable()
                            .frame(width: 326.0, height: 314.0)
                            .padding(.top, 24)
                        VStack{
                            Text("PROFILE ANAK")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                            TextField("Nama", text: $name)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                               // .padding()
                            Button(action: {
                                isDatePickerVisible = true
                            }) {
                                TextField("Tanggal Lahir Anak Anda", text: .constant(dateToString(date: birthdate)), onEditingChanged: { _ in
                                    isDatePickerVisible = true
                                })
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                //.padding()
                                .multilineTextAlignment(.leading)
                                .disabled(true)
                            }
                        }
                        .frame(maxWidth: .infinity)
                                                    
                                                    Spacer()

                            if isDatePickerVisible {
                                DatePicker(
                                    selection: $birthdate,
                                    displayedComponents: [.date]
                                ) {
                                    Text("")
                                }
                                .datePickerStyle(WheelDatePickerStyle())
                                .padding()
                                .onChange(of: birthdate) { _ in
                                    isDatePickerVisible = false
                                }
                            }
                        
                        NavigationLink(destination: TabVIew(), isActive: $isPlanStarted) {
                            EmptyView()
                        }
                        .navigationBarBackButtonHidden(true)
                        Button {
                            isPlanStarted = true
                        } label: {
                            Text("Mulai Rencana")
                                .fontWeight(.bold)
                            // .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .frame(maxWidth: .infinity)
                                .padding(.top, 16)
                                .padding(.bottom, 16 )
                                .font(.title2)
                                .background(Color("AccentColor"))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                        }
                    }
                }
                .padding(.horizontal, 16.0)
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }
            
            .padding(.all, 16.0)
            .background(Color("Abu"))
            
            .navigationBarItems(trailing: Button(action: {
                isSkipped = true
            }) {
                NavigationLink(destination: TabVIew(), isActive: $isSkipped)
                {
                    Text("Lewati")
                        .foregroundColor(Color("Kuning"))
                }
            })
            .background(
                //                NavigationLink(destination: ProfilAnak(name: name, birthdate: birthdate), isActive: $isPlanStarted) {
                //                    EmptyView()
                //                }
            )
        }
    }
    
    func dateToString(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter.string(from: date)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

