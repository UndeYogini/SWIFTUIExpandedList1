//
//  HttpClient.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 21/05/24.
//

import Foundation

// MARK: - Error Handling

enum HttpError: Error {
    case badURL, badResponse, errorDecodingData, invalidURL, unknown
}

// MARK: - Networking Protocol

protocol HttpClientProtocol {
    func fetch<T:Codable>() async throws -> T
}

// MARK: - HTTP Client Implementation

class HttpClient: HttpClientProtocol {

    
    func fetch<T: Codable>() async throws -> T {

        let urlString = Constants.filepathUrl
        
        guard let urlString else {
            throw HttpError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: urlString)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw HttpError.badResponse
        }
        
        guard let object = try? JSONDecoder().decode(T.self, from: data) else {
            throw HttpError.errorDecodingData
        }
        return object
    }
}
