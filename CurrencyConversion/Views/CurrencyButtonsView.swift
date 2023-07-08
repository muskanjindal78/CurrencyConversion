import SwiftUI

struct CurrencyButtonsView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
                HStack {
                    CurrencyButton()
                    CurrencyButton()
                        .padding(.trailing, 15)
                }
            }
            .padding(.top, 10)
        }
    }
}
