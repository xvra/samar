//
//  EditProfilAnak.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 09/06/23.
//

import SwiftUI

struct EditProfilAnak: View {
    @State private var name: String = ""
    @State private var birthdate: Date = Date()
    @State private var isDatePickerVisible = false
    @State private var isSaved = false
    @Environment(\.presentationMode) var presentationMode

    var isFormFilled: Bool {
        return !name.isEmpty && !birthdate.description.isEmpty
    }

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        return formatter
    }

    var formattedBirthdate: String {
        return dateFormatter.string(from: birthdate)
    }

    var body: some View {
//        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                VStack {
                    TextField("Nama", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Button(action: {
                        isDatePickerVisible = true
                    }) {
                        TextField("Tanggal Lahir", text: .constant(formattedBirthdate), onEditingChanged: { _ in
                            isDatePickerVisible = true
                        })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .multilineTextAlignment(.leading)
                        .disabled(true)
                    }

                    if isDatePickerVisible {
                        DatePicker(
                            selection: $birthdate,
                            displayedComponents: [.date]
                        ) {
                            Text("")
                        }
                        .datePickerStyle(WheelDatePickerStyle())
                        .padding()
                    }

                    Spacer()

                    Button(action: {
                        isSaved = true
                    }) {
                        Text("Simpan")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 358, height: 58)
                            .background(isFormFilled ? Color("Kuning") : Color.gray)
                            .cornerRadius(5)
                            .shadow(radius: 5)
                    }
                    .disabled(!isFormFilled)
                    .padding(.bottom, 16)
                }
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarTitle(Text ("Pemberitahuan"), displayMode: .inline)
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: backButton)
                
//                .navigationTitle("Edit Profil Anak")
//                .navigationBarTitleDisplayMode(.inline)
            }
            .fullScreenCover(isPresented: $isSaved) {
                ProfilAnak(name: name, birthdate: birthdate)
            }
//        }
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

struct EditProfilAnak_Previews: PreviewProvider {
    static var previews: some View {
        EditProfilAnak()
    }
}
