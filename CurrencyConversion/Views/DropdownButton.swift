import SwiftUI

struct DropdownButton: View {
    @Binding var openDropdown: Bool
    var body: some View {
        ZStack {
            VStack(alignment: .trailing) {
                HStack {
                    Text("AED")
                        .foregroundColor(.black)
                    Image(systemName: "chevron.down")
                }
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .border(.black)
            .onTapGesture {
                openDropdown.toggle()
            }
        }
    }
}
