//
// NetworkDisconnectRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NetworkDisconnectRequest: Codable, JSONEncodable, Hashable {

    /** The ID or name of the container to disconnect from the network.  */
    public var container: String?
    /** Force the container to disconnect from the network.  */
    public var force: Bool?

    public init(container: String? = nil, force: Bool? = nil) {
        self.container = container
        self.force = force
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case container = "Container"
        case force = "Force"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.container, forKey: .container)
        try container.encodeIfPresent(force, forKey: .force)
    }
}

