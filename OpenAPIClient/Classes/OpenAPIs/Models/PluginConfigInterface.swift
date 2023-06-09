//
// PluginConfigInterface.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The interface between Docker and the plugin */
public struct PluginConfigInterface: Codable, JSONEncodable, Hashable {

    public enum ProtocolScheme: String, Codable, CaseIterable {
        case empty = ""
        case mobyPeriodPluginsPeriodHttpSlashV1 = "moby.plugins.http/v1"
    }
    public var types: [PluginInterfaceType]
    public var socket: String
    /** Protocol to use for clients connecting to the plugin. */
    public var protocolScheme: ProtocolScheme?

    public init(types: [PluginInterfaceType], socket: String, protocolScheme: ProtocolScheme? = nil) {
        self.types = types
        self.socket = socket
        self.protocolScheme = protocolScheme
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case types = "Types"
        case socket = "Socket"
        case protocolScheme = "ProtocolScheme"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(types, forKey: .types)
        try container.encode(socket, forKey: .socket)
        try container.encodeIfPresent(protocolScheme, forKey: .protocolScheme)
    }
}

