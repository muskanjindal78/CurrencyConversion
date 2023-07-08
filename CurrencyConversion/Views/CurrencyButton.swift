import SwiftUI

struct CurrencyButton: View {
    var body: some View {
        VStack {
            Button("AED") {
                
            }
            .foregroundColor(.black)
            Text("0.5656")
                .foregroundColor(.green)
        }
        .frame(width: (UIScreen.main.bounds.width / 3) - 20)
        .padding(.vertical, 5)
        .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous)
            .stroke(Color.black, lineWidth: 1))
        .padding(.leading, 15)
        
    }
}
