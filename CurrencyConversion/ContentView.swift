import SwiftUI

struct ContentView: View {
    @SwiftUI.State var openDropdown: Bool = false
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Currency Converter")
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width)
                .background(Color.gray.opacity(0.12))
                TextFieldView()
                HStack {
                    Spacer()
                    DropdownButton(openDropdown: $openDropdown)
                        .padding(.trailing, 15)
                }
                Spacer()
                    .frame(height: 20)
                CurrencyButtonsView()
            }
            if openDropdown {
                Color.black.opacity(0.1)
                    .ignoresSafeArea()
                    .onTapGesture {
                        openDropdown.toggle()
                    }
                DropdownView()
            }
        }
    }
}
