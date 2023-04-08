//
// NetworkPruneResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NetworkPruneResponse: Codable, JSONEncodable, Hashable {

    /** Networks that were deleted */
    public var networksDeleted: [String]?

    public init(networksDeleted: [String]? = nil) {
        self.networksDeleted = networksDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case networksDeleted = "NetworksDeleted"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(networksDeleted, forKey: .networksDeleted)
    }
}

