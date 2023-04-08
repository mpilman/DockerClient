//
// TaskSpecLogDriver.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Specifies the log driver to use for tasks created from this spec. If not present, the default one for the swarm will be used, finally falling back to the engine default if not specified.  */
public struct TaskSpecLogDriver: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var options: [String: String]?

    public init(name: String? = nil, options: [String: String]? = nil) {
        self.name = name
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case options = "Options"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(options, forKey: .options)
    }
}
