import SwiftUI

struct ExplanationView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.8)
                VStack {
                    Spacer()
                    Image("Red Green")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10.0)
                        .frame(width: 540, height: 180)
                        .padding()
                    Text("Red-Green Test")
                        .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                        .font(.system(size: 50))
                        .bold()
                        .padding(.bottom, 12)
                    Text("Red and green light rays don’t fall in exactly the same place on the back of your eye (retina) due to something called chromatic aberration. Green rays should fall very slightly in front and red rays should fall very slightly behind the retina.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                        .font(.system(size: 24))
                        .padding([.trailing, .leading], 32)
                    Spacer()
                    HStack {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image("Back Small White")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350)
                        }
                        Spacer()
                        NavigationLink(destination: InstructionView()) {
                            Image("Next Small Black")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350)
                        }
                    }
                }
                .padding()
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}
