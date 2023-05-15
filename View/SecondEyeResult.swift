import SwiftUI

struct SecondEyeResult: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var firstEye: Eye
    @Binding var secondEye: Eye
    
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
                            if secondEye.firstColor == "Red" && secondEye.secondColor == "Red" {
                                secondEye.correction = "Minus"
                            }
                            else if secondEye.firstColor == "Green" && secondEye.secondColor == "Green" {
                                secondEye.correction = "Plus"
                            }
                            else if (secondEye.firstColor == "Green" && secondEye.secondColor == "Red") || (secondEye.firstColor == "Red" && secondEye.secondColor == "Green") {
                                secondEye.correction = "Normal"
                            }
                        }
                    Text("Result for \(secondEye.name) Eye")
                        .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                        .font(.system(size: 50))
                        .bold()
                        .padding(.bottom, 12)
                    if secondEye.correction == "Plus" {
                        Text("Hypermetropia (long-sightedness) is a vision condition in which distant objects are seen clearly, but near objects appear blurred. This blur is due to incoming light being focused behind, instead of on, the retina. A convex (positive) lens is used to correct hypermetropia as it converges the light rays so that the final image from the human eye lens is formed on the retina.")
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
                    else if secondEye.correction == "Minus" {
                        Text("You see sharper shapes on the red background, you may suffer from myopia. Myopia (nearsightedness) is a vision condition in which near objects appear clear, but objects farther away look blurry. Light rays that should be focused on nerve tissues at the back of the retina are focused in front of the retina. A concave (negative) lens is used to correct myopia as it pushes the rays of light further apart so that they arrive together in proper focus at the back of the retina.")
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
                    else if secondEye.correction == "Normal" {
                        Text("You can see the letters on both colors equally sharp, apparently you haven't got any refractive defects that require optical correction.")
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
                        NavigationLink(destination: FinalResult(firstEye: $firstEye, secondEye: $secondEye)) {
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
