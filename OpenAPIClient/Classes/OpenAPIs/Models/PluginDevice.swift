//
// PluginDevice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PluginDevice: Codable, JSONEncodable, Hashable {

    public var name: String
    public var description: String
    public var settable: [String]
    public var path: String

    public init(name: String, description: String, settable: [String], path: String) {
        self.name = name
        self.description = description
        self.settable = settable
        self.path = path
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case description = "Description"
        case settable = "Settable"
        case path = "Path"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(settable, forKey: .settable)
        try container.encode(path, forKey: .path)
    }
}

