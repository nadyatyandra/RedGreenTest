import SwiftUI

struct SecondEyeFirstTestView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var firstEye: Eye
    @Binding var secondEye: Eye
    @State var selectedColor: Int = 0
    @State var firstColor: RedGreen = RedGreen(name: "")
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack {
                        Text("First Test for \(secondEye.name) Eye")
                            .foregroundColor(.white)
                            .font(.system(size: 50))
                            .bold()
                            .padding(.bottom, 12)
                    }
                    HStack {
                        Text("Cover your \(secondEye.name == "Left" ? "right" : "left") eye. Move backward and focus on the black dots. On which background do the dots seem sharper?")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                    }
                    Spacer()
                    HStack {
                        Button {
                        } label: {
                            RedGreenTemplateView(name: "Red", color: 1, selectedColor: $selectedColor)
                                .onTapGesture {
                                    if selectedColor == 1 {
                                        selectedColor = 0
                                        firstColor = RedGreen(name: "")
                                        secondEye.firstColor = ""
                                        return
                                    }
                                    selectedColor = 1
                                    firstColor = RedGreen(name: "Red")
                                    secondEye.firstColor = "Red"
                                }
                        }
                    }
                    HStack {
                        Button {
                        } label: {
                            RedGreenTemplateView(name: "Green", color: 2, selectedColor: $selectedColor)
                                .onTapGesture {
                                    if selectedColor == 2 {
                                        selectedColor = 0
                                        firstColor = RedGreen(name: "")
                                        secondEye.firstColor = ""
                                        return
                                    }
                                    selectedColor = 2
                                    firstColor = RedGreen(name: "Green")
                                    secondEye.firstColor = "Green"
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
                        if (firstColor.name != "") {
                            NavigationLink(destination: SecondEyeSecondTestView(firstEye: $firstEye, secondEye: $secondEye, firstColor: $firstColor)) {
                                Image("Next Small White")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350)
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
