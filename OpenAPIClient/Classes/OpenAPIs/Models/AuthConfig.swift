//
// AuthConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthConfig: Codable, JSONEncodable, Hashable {

    public var username: String?
    public var password: String?
    public var email: String?
    public var serveraddress: String?

    public init(username: String? = nil, password: String? = nil, email: String? = nil, serveraddress: String? = nil) {
        self.username = username
        self.password = password
        self.email = email
        self.serveraddress = serveraddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username
        case password
        case email
        case serveraddress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(serveraddress, forKey: .serveraddress)
    }
}

