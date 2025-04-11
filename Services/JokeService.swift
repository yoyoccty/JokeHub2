import Foundation

enum JokeError: Error {
    case invalidURL, invalidResponse, invalidData
}

class JokeService {
    static let shared = JokeService()
    private let baseURL = "https://official-joke-api.appspot.com"
    
    func fetchRandomJoke() async throws -> Joke {
        guard let url = URL(string: "\(baseURL)/random_joke") else {
            throw JokeError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(Joke.self, from: data)
    }
    
    func fetchJokesByCategory(_ category: String) async throws -> [Joke] {
        guard let url = URL(string: "\(baseURL)/jokes/\(category)/ten") else {
            throw JokeError.invalidURL
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Joke].self, from: data)
    }
}
