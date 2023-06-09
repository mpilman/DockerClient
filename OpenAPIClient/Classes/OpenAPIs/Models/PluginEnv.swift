//
// PluginEnv.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PluginEnv: Codable, JSONEncodable, Hashable {

    public var name: String
    public var description: String
    public var settable: [String]
    public var value: String

    public init(name: String, description: String, settable: [String], value: String) {
        self.name = name
        self.description = description
        self.settable = settable
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case description = "Description"
        case settable = "Settable"
        case value = "Value"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(settable, forKey: .settable)
        try container.encode(value, forKey: .value)
    }
}

