import SwiftUI

struct FinalResult: View {
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
                    HStack {
                        Text("Final Result")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .font(.system(size: 50))
                            .bold()
                            .padding(.bottom, 12)
                    }
                    if firstEye.correction == "Minus" {
                        Text("Your \(firstEye.name.lowercased()) eye needs a concave (negative) lens to correct myopia.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Myopia Correction")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
                    else if firstEye.correction == "Plus" {
                        Text("Your \(firstEye.name.lowercased()) eye needs a convex (positive) lens to correct hypermetropia.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Hypermetropia Correction")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
                    else if firstEye.correction == "Normal" {
                        Text("Your \(firstEye.name.lowercased()) eye haven't got any refractive defects that require optical correction.")
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
                    if secondEye.correction == "Minus" {
                        Text("Your \(secondEye.name.lowercased()) eye needs a concave (negative) lens to correct myopia.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Myopia Correction")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
                    else if secondEye.correction == "Plus" {
                        Text("Your \(secondEye.name.lowercased()) eye needs a convex (positive) lens to correct hypermetropia.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                        Image("Hypermetropia Correction")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10.0)
                            .frame(width: 540, height: 180)
                            .padding()
                    }
                    else if secondEye.correction == "Normal" {
                        Text("Your \(secondEye.name.lowercased()) eye haven't got any refractive defects that require optical correction.")
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
                        NavigationLink(destination: StoryView()) {
                            Image("Back to Home")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 700)
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
