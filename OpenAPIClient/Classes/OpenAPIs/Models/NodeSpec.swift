//
// NodeSpec.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NodeSpec: Codable, JSONEncodable, Hashable {

    public enum Role: String, Codable, CaseIterable {
        case worker = "worker"
        case manager = "manager"
    }
    public enum Availability: String, Codable, CaseIterable {
        case active = "active"
        case pause = "pause"
        case drain = "drain"
    }
    /** Name for the node. */
    public var name: String?
    /** User-defined key/value metadata. */
    public var labels: [String: String]?
    /** Role of the node. */
    public var role: Role?
    /** Availability of the node. */
    public var availability: Availability?

    public init(name: String? = nil, labels: [String: String]? = nil, role: Role? = nil, availability: Availability? = nil) {
        self.name = name
        self.labels = labels
        self.role = role
        self.availability = availability
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case labels = "Labels"
        case role = "Role"
        case availability = "Availability"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(labels, forKey: .labels)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(availability, forKey: .availability)
    }
}

