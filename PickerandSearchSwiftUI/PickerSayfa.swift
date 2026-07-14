import SwiftUI

struct PickerSayfa: View {
    
    @State private var ulkelerListesi = [
        "Türkiye",
        "İtalya",
        "Japonya"
    ]
    
    @State private var secilenUlke = "Türkiye"
    
    var body: some View {
        VStack(spacing: 50) {
            
            Picker("Ülke seçiniz", selection: $secilenUlke) {
                ForEach(ulkelerListesi, id: \.self) { ulke in
                    Text(ulke)
                        .tag(ulke)
                }
            }
            .pickerStyle(.menu)
            
            Text("Seçilen ülke: \(secilenUlke)")
            
            Button("Göster") {
                print("Seçilen ülke: \(secilenUlke)")
            }
        }
        .padding()
    }
}

#Preview {
    PickerSayfa()
}
