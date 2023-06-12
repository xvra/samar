//
//  tanggal.swift
//  Pendasi
//
//  Created by Adinda Dwi on 09/06/23.
//

import SwiftUI

struct tanggal: View {
    let dateFormatter = DateFormatter()
    let calendar = Calendar.current

    @State private var selectedDate: Date = Date()

    var body: some View {
        VStack{
                VStack(spacing: 20) {
                    ForEach(2...8, id: \.self) { index in
                        let currentDate = getNextDayOfWeek(index: index)
                        let dayOfWeek = getLocalizedDayOfWeek(from: currentDate)
                        let dayOfMonth = getDayOfMonth(from: currentDate)
                        let monthAndYear = getMonthAndYear(from: currentDate)

                        VStack {
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 350, height: 500)
                                    .cornerRadius(25)

                            }
                            .overlay(alignment: .topLeading){
                                HStack {
                                    Text("\(dayOfWeek)")
                                    Text("\(dayOfMonth)")
                                    Text(monthAndYear)
                                }
                                .padding()
                            }
                        }
                        .foregroundColor(calendar.isDate(currentDate, inSameDayAs: selectedDate) ? .yellow : .black)
                        .onTapGesture {
                            selectedDate = currentDate
                        }
                    }
                }
//                .padding()
 

        }
    }

    func getNextDayOfWeek(index: Int) -> Date {
        _ = calendar.dateComponents([.weekday], from: Date()).weekday!

        guard let daysofTheWeek  = Date().dayNumberOfWeek() else { return Date() }
        let offset = daysofTheWeek - index

        return calendar.date(byAdding: .day, value: -offset, to: Date())!
    }

    func getLocalizedDayOfWeek(from date: Date) -> String {
        dateFormatter.locale = Locale(identifier: "id_ID")
        dateFormatter.dateFormat = "EEEE,"
        return dateFormatter.string(from: date)
    }

    func getDayOfMonth(from date: Date) -> String {
        dateFormatter.dateFormat = "d"
        return dateFormatter.string(from: date)
    }

    func getMonthAndYear(from date: Date) -> String {
        dateFormatter.dateFormat = "MMMM yyyy"
        return dateFormatter.string(from: date)
    }
}

struct tanggal_Previews: PreviewProvider {
    static var previews: some View {
        tanggal()
    }
}

extension Date {
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}

