import SwiftUI

struct TextFieldView: View {
    @SwiftUI.State var currencyValue: String = ""
    var body: some View {
        VStack {
            TextField("# ### ###.##", text: $currencyValue)
                .keyboardType(.decimalPad)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .border(.black)
        }
        .padding()
    }
}
