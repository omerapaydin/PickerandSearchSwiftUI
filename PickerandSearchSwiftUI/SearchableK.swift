//
//  SearchableK.swift
//  PickerandSearchSwiftUI
//
//  Created by Ömer Apaydın on 15.07.2026.
//

import SwiftUI

struct SearchableK: View {
    
    @State private var aramaKelimesi = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
            }.navigationTitle("Ara")
        } .searchable(text: $aramaKelimesi,prompt: "Ara")
            .onChange(of: aramaKelimesi){ _,s in
                print("Arama Sonucu: \(s)")
            }
    }
}

#Preview {
    SearchableK()
}
