//
//  ContentView.swift
//  PickerandSearchSwiftUI
//
//  Created by Ömer Apaydın on 14.07.2026.
//

import SwiftUI

struct DateAndTime: View {
    @State private var time = Date()
    @State private var date = Date()
    @State private var alinantarih = ""
    @State private var alinansaat = ""
    var body: some View {
        VStack (spacing:100){
            DatePicker("Saat",selection: $time, displayedComponents: [.hourAndMinute])
                .padding()
            DatePicker("Tarih",selection: $date, displayedComponents: [.date])
                .padding()
            
            Text(alinansaat)
            Text(alinantarih)
            
            Button("Göster"){
                let tf = DateFormatter()
                tf.dateFormat = "HH:mm"
                alinansaat = tf.string(from: time)
                
                
                let df = DateFormatter()
                tf.dateFormat = "HH:dd:yyyy"
                alinantarih = tf.string(from: date)
                
            }
            
        }
        .padding()
    }
}

#Preview {
    DateAndTime()
}
