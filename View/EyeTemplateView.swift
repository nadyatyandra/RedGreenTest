import SwiftUI

struct EyeTemplate: View {
    var name: String
    var eye: Int
    @Binding var selectedEye: Int
    
    var body: some View {
        ZStack {
            if eye == 1 {
                Image("Right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)), lineWidth: 4)
                            .cornerRadius(10)
                            .frame(width: 140, height: 140)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)), lineWidth: 4)
                            .background(selectedEye == eye ? Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)) : Color.white)
                            .opacity(selectedEye == eye ? 1.0 : 0)
                            .cornerRadius(10)
                            .frame(width: 140, height: 140)
                    )
                    .padding()
            }
            if eye == 2 {
                Image("Left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)), lineWidth: 4)
                            .cornerRadius(10)
                            .frame(width: 140, height: 140)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)), lineWidth: 4)
                            .background(selectedEye == eye ? Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)) : Color.white)
                            .opacity(selectedEye == eye ? 1.0 : 0)
                            .cornerRadius(10)
                            .frame(width: 140, height: 140)
                    )
                    .padding()
            }
        }
    }
}
