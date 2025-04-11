import Foundation

struct Joke: Codable, Identifiable, Hashable {
    let id: Int
    let type: String
    let setup: String
    let punchline: String
}
