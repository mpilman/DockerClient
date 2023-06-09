//
// TaskSpecPlacementPreferencesInnerSpread.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TaskSpecPlacementPreferencesInnerSpread: Codable, JSONEncodable, Hashable {

    /** label descriptor, such as `engine.labels.az`.  */
    public var spreadDescriptor: String?

    public init(spreadDescriptor: String? = nil) {
        self.spreadDescriptor = spreadDescriptor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case spreadDescriptor = "SpreadDescriptor"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(spreadDescriptor, forKey: .spreadDescriptor)
    }
}

