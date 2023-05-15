import Foundation

struct Eye: Identifiable {
    var id = UUID()
    var name: String
    var correction: String

    var firstColor: String
    var secondColor: String
}
