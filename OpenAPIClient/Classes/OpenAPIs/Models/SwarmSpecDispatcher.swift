//
// SwarmSpecDispatcher.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Dispatcher configuration. */
public struct SwarmSpecDispatcher: Codable, JSONEncodable, Hashable {

    /** The delay for an agent to send a heartbeat to the dispatcher.  */
    public var heartbeatPeriod: Int64?

    public init(heartbeatPeriod: Int64? = nil) {
        self.heartbeatPeriod = heartbeatPeriod
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case heartbeatPeriod = "HeartbeatPeriod"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(heartbeatPeriod, forKey: .heartbeatPeriod)
    }
}

