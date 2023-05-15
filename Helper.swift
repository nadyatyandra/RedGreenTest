import SwiftUI
import AVFoundation

struct AnimatableSystemFontModifier: ViewModifier, Animatable {
    var size: Double
    var weight: Font.Weight
    var design: Font.Design
    
    var animatableData: Double {
        get { size }
        set { size = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: design))
    }
}

extension View {
    func animatableSystemFont(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default) -> some View {
        self.modifier(AnimatableSystemFontModifier(size: size, weight: weight, design: design))
    }
}

class MusicPlayer {
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?
    
    func playBackgroundMusic() {
        if let bundle = Bundle.main.path(forResource: "backgroundMusic", ofType: "mp3") {
            let bgMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: bgMusic as URL)
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.numberOfLoops = -1
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }
            catch {
                print(error)
            }
        }
    }
}
