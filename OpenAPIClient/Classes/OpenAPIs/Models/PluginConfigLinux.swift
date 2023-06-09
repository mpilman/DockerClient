//
// PluginConfigLinux.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PluginConfigLinux: Codable, JSONEncodable, Hashable {

    public var capabilities: [String]
    public var allowAllDevices: Bool
    public var devices: [PluginDevice]

    public init(capabilities: [String], allowAllDevices: Bool, devices: [PluginDevice]) {
        self.capabilities = capabilities
        self.allowAllDevices = allowAllDevices
        self.devices = devices
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case capabilities = "Capabilities"
        case allowAllDevices = "AllowAllDevices"
        case devices = "Devices"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(capabilities, forKey: .capabilities)
        try container.encode(allowAllDevices, forKey: .allowAllDevices)
        try container.encode(devices, forKey: .devices)
    }
}

