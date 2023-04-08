//
// PluginsInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Available plugins per type.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: Only unmanaged (V1) plugins are included in this list. &gt; V1 plugins are \&quot;lazily\&quot; loaded, and are not returned in this list &gt; if there is no resource using the plugin.  */
public struct PluginsInfo: Codable, JSONEncodable, Hashable {

    /** Names of available volume-drivers, and network-driver plugins. */
    public var volume: [String]?
    /** Names of available network-drivers, and network-driver plugins. */
    public var network: [String]?
    /** Names of available authorization plugins. */
    public var authorization: [String]?
    /** Names of available logging-drivers, and logging-driver plugins. */
    public var log: [String]?

    public init(volume: [String]? = nil, network: [String]? = nil, authorization: [String]? = nil, log: [String]? = nil) {
        self.volume = volume
        self.network = network
        self.authorization = authorization
        self.log = log
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case volume = "Volume"
        case network = "Network"
        case authorization = "Authorization"
        case log = "Log"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(volume, forKey: .volume)
        try container.encodeIfPresent(network, forKey: .network)
        try container.encodeIfPresent(authorization, forKey: .authorization)
        try container.encodeIfPresent(log, forKey: .log)
    }
}

