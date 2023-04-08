//
// SystemVersionPlatform.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SystemVersionPlatform: Codable, JSONEncodable, Hashable {

    public var name: String

    public init(name: String) {
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}
