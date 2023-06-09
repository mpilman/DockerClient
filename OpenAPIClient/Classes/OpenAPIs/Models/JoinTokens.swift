//
// JoinTokens.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** JoinTokens contains the tokens workers and managers need to join the swarm.  */
public struct JoinTokens: Codable, JSONEncodable, Hashable {

    /** The token workers can use to join the swarm.  */
    public var worker: String?
    /** The token managers can use to join the swarm.  */
    public var manager: String?

    public init(worker: String? = nil, manager: String? = nil) {
        self.worker = worker
        self.manager = manager
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case worker = "Worker"
        case manager = "Manager"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(worker, forKey: .worker)
        try container.encodeIfPresent(manager, forKey: .manager)
    }
}

