import SwiftUI

struct ChooseEyeView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedEye: Int = 0
    @State var firstEye: Eye = Eye(name: "", correction: "", firstColor: "", secondColor: "")
    
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
                        Text("Choose Eye")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .font(.system(size: 50))
                            .bold()
                            .padding(.bottom, 12)
                    }
                    HStack {
                        Text("Choose the eye that you want to examine, then cover the other eye.")
                            .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .padding([.trailing, .leading], 32)
                    }
                    HStack {
                        Spacer()
                        VStack {
                            Button {
                                
                            } label: {
                                EyeTemplate(name: "Right", eye: 1, selectedEye: $selectedEye)
                                    .onTapGesture {
                                        if selectedEye == 1 {
                                            selectedEye = 0
                                            firstEye = Eye(name: "", correction: "", firstColor: "", secondColor: "")
                                            return
                                        }
                                        selectedEye = 1
                                        firstEye = Eye(name: "Right", correction: "", firstColor: "", secondColor: "")
                                    }
                            }
                            Text("Right Eye")
                                .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                .font(.system(size: 24))
                            Image("Cover Left Eye")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        VStack {
                            Button {
                                
                            } label: {
                                EyeTemplate(name: "Left", eye: 2, selectedEye: $selectedEye)
                                    .onTapGesture {
                                        if selectedEye == 2 {
                                            selectedEye = 0
                                            firstEye = Eye(name: "", correction: "", firstColor: "", secondColor: "")
                                            return
                                        }
                                        selectedEye = 2
                                        firstEye = Eye(name: "Left", correction: "", firstColor: "", secondColor: "")
                                    }
                            }
                            Text("Left Eye")
                                .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                .font(.system(size: 24))
                            Image("Cover Right Eye")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                        }
                        Spacer()
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
                        if (firstEye.name != "") {
                            NavigationLink(destination: FirstEyeFirstTestView(firstEye: $firstEye)) {
                                Image("Next Small Black")
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
