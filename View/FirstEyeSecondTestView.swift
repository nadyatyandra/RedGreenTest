import SwiftUI

struct FirstEyeSecondTestView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var firstEye: Eye
    @Binding var firstColor: RedGreen
    @State var selectedColor: Int = 0
    @State var secondColor: RedGreen = RedGreen(name: "")
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack {
                        Text("Second Test for \(firstEye.name) Eye")
                            .foregroundColor(.white)
                            .font(.system(size: 50))
                            .bold()
                            .padding(.bottom, 12)
                    }
                    HStack {
                        Text("Cover your \(firstEye.name == "Left" ? "right" : "left") eye. Move backward and focus on the black ring. On which background do the ring seems sharper?")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                    }
                    Spacer()
                    HStack {
                        VStack {
                            Button {
                            } label: {
                                RedGreenTemplateView(name: "Red", color: 3, selectedColor: $selectedColor)
                                    .onTapGesture {
                                        if selectedColor == 3 {
                                            selectedColor = 0
                                            secondColor = RedGreen(name: "")
                                            firstEye.secondColor = ""
                                            return
                                        }
                                        selectedColor = 3
                                        secondColor = RedGreen(name: "Red")
                                        firstEye.secondColor = "Red"
                                    }
                            }
                        }
                        VStack {
                            Button {
                            } label: {
                                RedGreenTemplateView(name: "Green", color: 4, selectedColor: $selectedColor)
                                    .onTapGesture {
                                        if selectedColor == 4 {
                                            selectedColor = 0
                                            secondColor = RedGreen(name: "")
                                            firstEye.secondColor = ""
                                            return
                                        }
                                        selectedColor = 4
                                        secondColor = RedGreen(name: "Green")
                                        firstEye.secondColor = "Green"
                                    }
                            }
                        }
                    }
                    Spacer()
                    HStack {
                        Text("Tap the image.")
                            .foregroundColor(.white)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                    }
                    Spacer()
                    HStack {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image("Back Small Black")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350)
                        }
                        Spacer()
                        if (secondColor.name != "") {
                            Button {
                            } label: {
                                NavigationLink(destination: FirstEyeResult(firstEye: $firstEye)){
                                    Image("Next Small White")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 350)
                                }
                            }
                        }
                        else {
                            Image("Next Small Gray")
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
