//
// PluginMount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PluginMount: Codable, JSONEncodable, Hashable {

    public var name: String
    public var description: String
    public var settable: [String]
    public var source: String
    public var destination: String
    public var type: String
    public var options: [String]

    public init(name: String, description: String, settable: [String], source: String, destination: String, type: String, options: [String]) {
        self.name = name
        self.description = description
        self.settable = settable
        self.source = source
        self.destination = destination
        self.type = type
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case description = "Description"
        case settable = "Settable"
        case source = "Source"
        case destination = "Destination"
        case type = "Type"
        case options = "Options"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(settable, forKey: .settable)
        try container.encode(source, forKey: .source)
        try container.encode(destination, forKey: .destination)
        try container.encode(type, forKey: .type)
        try container.encode(options, forKey: .options)
    }
}

