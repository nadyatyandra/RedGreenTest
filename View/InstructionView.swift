import SwiftUI

struct InstructionView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var fontSmall = 24.0
    @State private var fontLarge = 34.0
    @State private var count = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.8)
                if count == 0 {
                    VStack {
                        Spacer()
                        HStack {
                            Text("Instruction")
                                .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                .font(.system(size: 50))
                                .bold()
                                .padding(.bottom, 12)
                        }
                        HStack {
                            VStack {
                                Text("1.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontSmall))
                                    .padding(.leading, 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontSmall = 34
                                        }
                                    }
                            }
                            VStack {
                                Text("Move to the area with good lighting.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontSmall))
                                    .padding([.trailing, .leading], 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontSmall = 34
                                        }
                                    }
                            }
                            Spacer()
                        }
                        HStack {
                            LottieView(name:"Light", loopMode: .loop)
                                .frame(width: 410, height: 200)
                                .scaledToFit()
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)), lineWidth: 8)
                                    .cornerRadius(10)
                                    .frame(width: 410, height: 200)
                            )
                        }
                        HStack {
                            VStack {
                                Text("2.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontLarge))
                                    .padding(.leading, 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontLarge = 24
                                        }
                                    }
                            }
                            VStack {
                                Text("Find an area where you can place your device and move backward until you can’t see the screen clearly.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontLarge))
                                    .padding([.trailing, .leading], 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontLarge = 24
                                        }
                                    }
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
                            Button {
                                
                            } label: {
                                Image("Next Small Black")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350)
                                    .animatableSystemFont(size: 24)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontSmall = 24
                                            fontLarge = 34
                                            count += 1
                                        }
                                    }
                            }
                        }
                    }
                    .padding()
                }
                else if count == 1 {
                    VStack {
                        Spacer()
                        HStack {
                            Text("Instruction")
                                .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                .font(.system(size: 50))
                                .bold()
                                .padding(.bottom, 12)
                        }
                        HStack {
                            VStack {
                                Text("1.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontLarge))
                                    .padding(.leading, 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontLarge = 24
                                        }
                                    }
                            }
                            VStack {
                                Text("Move to the area with good lighting.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontLarge))
                                    .padding([.trailing, .leading], 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontLarge = 24
                                        }
                                    }
                            }
                            Spacer()
                        }
                        HStack {
                            VStack {
                                Text("2.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontSmall))
                                    .padding(.leading, 32)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontSmall = 34
                                        }
                                    }
                            }
                            VStack {
                                Text("Find an area where you can place your device and move backward until you can’t see the screen clearly.")
                                    .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                                    .font(.system(size: fontSmall))
                                    .padding(.leading, 20)
                                    .onAppear {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontSmall = 34
                                        }
                                    }
                            }
                            Spacer()
                        }
                        HStack {
                            Image("Backward")
                                .resizable()
                                .frame(width: 410, height: 200)
                                .scaledToFit()
                                .cornerRadius(10.0)
                                .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(#colorLiteral(red: 0.557, green: 0.557, blue: 0.557, alpha: 1)), lineWidth: 8)
                                    .cornerRadius(10)
                                    .frame(width: 410, height: 200)
                            )
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
                                    .animatableSystemFont(size: 24)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1)) {
                                            fontSmall = 24
                                            fontLarge = 34
                                            count -= 1
                                        }
                                    }
                            }
                            Spacer()
                            NavigationLink(destination: ChooseEyeView()) {
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
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }
}
