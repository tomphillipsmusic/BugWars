import Foundation

enum HttpError: Error {
    case badURL, badResponse, errorDecodingData, invalidURL, unableToComplete
}

/// Network Manager is a utility class that provides generic functionality for fetching data from an endpoint.
class NetworkManager {
    static let shared = NetworkManager()
    
    private init() {}
       
    
    /// The fetch method returns decoded data of any codable type from the given string
    /// - Parameter string: The url to fetch data from
    /// - Returns: The data that has been successfully decoded from the given url string
    func fetch<T: Codable>(from string: String) async throws -> T {
        guard let url = URL(string: string) else {
            throw HttpError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw HttpError.badResponse
        }
        
        guard let object = try? JSONDecoder().decode(T.self, from: data) else {
            throw HttpError.errorDecodingData
        }
        
        return object
    }
}
