//
// Secret.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Secret: Codable, JSONEncodable, Hashable {

    public var ID: String?
    public var version: ObjectVersion?
    public var createdAt: String?
    public var updatedAt: String?
    public var spec: SecretSpec?

    public init(ID: String? = nil, version: ObjectVersion? = nil, createdAt: String? = nil, updatedAt: String? = nil, spec: SecretSpec? = nil) {
        self.ID = ID
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.spec = spec
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ID
        case version = "Version"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case spec = "Spec"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ID, forKey: .ID)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(spec, forKey: .spec)
    }
}

