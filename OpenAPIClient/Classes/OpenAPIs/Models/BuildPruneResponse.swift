//
// BuildPruneResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BuildPruneResponse: Codable, JSONEncodable, Hashable {

    public var cachesDeleted: [String]?
    /** Disk space reclaimed in bytes */
    public var spaceReclaimed: Int64?

    public init(cachesDeleted: [String]? = nil, spaceReclaimed: Int64? = nil) {
        self.cachesDeleted = cachesDeleted
        self.spaceReclaimed = spaceReclaimed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cachesDeleted = "CachesDeleted"
        case spaceReclaimed = "SpaceReclaimed"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cachesDeleted, forKey: .cachesDeleted)
        try container.encodeIfPresent(spaceReclaimed, forKey: .spaceReclaimed)
    }
}
