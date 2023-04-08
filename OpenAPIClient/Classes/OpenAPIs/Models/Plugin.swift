//
// Plugin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A plugin for the Engine API */
public struct Plugin: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String
    /** True if the plugin is running. False if the plugin is not running, only installed. */
    public var enabled: Bool
    public var settings: PluginSettings
    /** plugin remote reference used to push/pull the plugin */
    public var pluginReference: String?
    public var config: PluginConfig

    public init(id: String? = nil, name: String, enabled: Bool, settings: PluginSettings, pluginReference: String? = nil, config: PluginConfig) {
        self.id = id
        self.name = name
        self.enabled = enabled
        self.settings = settings
        self.pluginReference = pluginReference
        self.config = config
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case name = "Name"
        case enabled = "Enabled"
        case settings = "Settings"
        case pluginReference = "PluginReference"
        case config = "Config"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(settings, forKey: .settings)
        try container.encodeIfPresent(pluginReference, forKey: .pluginReference)
        try container.encode(config, forKey: .config)
    }
}

