import SwiftUI

struct StoryView: View {

    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundImage")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.8)
                VStack {
                    Spacer()
                    Image("Shop")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 220)
                        .padding()
                    Text("The Beginning of Everything")
                        .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                        .font(.system(size: 50))
                        .bold()
                        .padding(.bottom, 12)
                    Text("Hey, there! I’m Nadya Tyandra, a great-granddaughter of the owner of an optical shop. My family-run business was inherited from my great-grandfather, my grandfather, and my father. It has been run for more than 50 years and has so many customers. To faster the examination process, I made this red-green test application as it acts as a pre-test to diagnose common refractive defects (myopia and hypermetropia).")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0.129, green: 0.141, blue: 0.153, alpha: 1)))
                        .font(.system(size: 24))
                        .padding([.trailing, .leading], 32)
                    Spacer()
                    NavigationLink(destination: ExplanationView()) {
                        Image("Next Big Black")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700)
                    }
                }
                .padding()
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
        .onAppear {
            MusicPlayer.shared.playBackgroundMusic()
        }
    }
}
