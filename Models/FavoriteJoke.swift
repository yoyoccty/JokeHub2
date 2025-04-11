import SwiftData

@Model
final class FavoriteJoke {
    var id: Int
    var type: String
    var setup: String
    var punchline: String
    var timestamp: Date
    
    init(id: Int, type: String, setup: String, punchline: String) {
        self.id = id
        self.type = type
        self.setup = setup
        self.punchline = punchline
        self.timestamp = Date()
    }
    
    func toJoke() -> Joke {
        Joke(id: id, type: type, setup: setup, punchline: punchline)
    }
}
