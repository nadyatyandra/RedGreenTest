import SwiftUI

struct FirstEyeResult: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var firstEye: Eye
    @State var secondEye: Eye = Eye(name: "", correction: "", firstColor: "", secondColor: "")
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.8)
                VStack {
                    Spacer()
                    CorrectionTemplateView()
                        .onAppear {
                            if firstEye.firstColor == "Red" && firstEye.secondColor == "Red" {
                                firstEye.correction = "Minus"
                            }
                            else if firstEye.firstColor == "Green" && firstEye.secondColor == "Green" {
                                firstEye.correction = "Plus"
                            }
                            else if (firstEye.firstColor == "Green" && firstEye.secondColor == "Red") || (firstEye.firstColor == "Red" && firstEye.secondColor == "Green") {
                                firstEye.correction = "Normal"
                            }
                            if firstEye.name == "Left" {
                                secondEye = Eye(name: "Right", correction: "", firstColor: "", secondColor: "")
                            }
                            else if firstEye.name == "Right" {
                                secondEye = Eye(name: "Left", correction: "", firstColor: "", secondColor: "")
                            }
                        }
                    Text("Result for \(firstEye.name) Eye")
                        .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                        .font(.system(size: 50))
                        .bold()
                        .padding(.bottom, 12)
                    if firstEye.correction == "Plus" {
                        Text("You see sharper shapes on the green background. Green rays focused closer to the retina (seems more clear) in long sight. You may suffer from hypermetropia. Hypermetropia (long-sightedness) is a vision condition in which distant objects are seen clearly, but near objects appear blurred. This blur is due to incoming light being focused behind, instead of on, the retina. A convex (positive) lens is used to correct hypermetropia as it converges the light rays so that the final image from the human eye lens is formed on the retina.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Hypermetropia")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                        Image("Hypermetropia Correction")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
                    else if firstEye.correction == "Minus" {
                        Text("You see sharper shapes on the red background. Red rays focused closer to the retina (seems more clear) in short sight. You may suffer from myopia. Myopia (nearsightedness) is a vision condition in which near objects appear clear, but objects farther away look blurry. Light rays that should be focused on nerve tissues at the back of the retina are focused in front of the retina. A concave (negative) lens is used to correct myopia as it pushes the rays of light further apart so that they arrive together in proper focus at the back of the retina.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Myopia")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                        Image("Myopia Correction")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
                    else if firstEye.correction == "Normal" {
                        Text("You can see the shapes on both colors equally sharp, apparently you haven't got any refractive defects that require optical correction.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Normal")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
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
                        NavigationLink(destination: SecondEyeFirstTestView(firstEye: $firstEye, secondEye: $secondEye)) {
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
