import SwiftUI

struct RedGreenTemplateView: View {
    var name: String
    var color: Int
    @Binding var selectedColor: Int
    
    var body: some View {
        ZStack {
            if color == 1 {
                Image("First Test Red")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .frame(width: 700, height: 180)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 4)
                            .opacity(selectedColor == color ? 1.0 : 0)
                            .cornerRadius(10.0)
                            .frame(width: 680, height: 180)
                    )
            }
            if color == 2 {
                Image("First Test Green")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .frame(width: 700, height: 180)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 4)
                            .opacity(selectedColor == color ? 1.0 : 0)
                            .cornerRadius(10.0)
                            .frame(width: 680, height: 180)
                    )
            }
            if color == 3 {
                Image("Second Test Red")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .frame(width: 160, height: 355)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 4)
                            .opacity(selectedColor == color ? 1.0 : 0)
                            .cornerRadius(10)
                            .frame(width: 170, height: 340)
                    )
            }
            if color == 4 {
                Image("Second Test Green")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10.0)
                    .frame(width: 160, height: 355)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.white, lineWidth: 4)
                            .opacity(selectedColor == color ? 1.0 : 0)
                            .cornerRadius(10)
                            .frame(width: 170, height: 340)
                    )
            }
        }
    }
}
