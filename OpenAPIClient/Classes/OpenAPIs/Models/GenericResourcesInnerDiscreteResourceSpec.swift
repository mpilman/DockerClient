//
// GenericResourcesInnerDiscreteResourceSpec.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GenericResourcesInnerDiscreteResourceSpec: Codable, JSONEncodable, Hashable {

    public var kind: String?
    public var value: Int64?

    public init(kind: String? = nil, value: Int64? = nil) {
        self.kind = kind
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case kind = "Kind"
        case value = "Value"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(kind, forKey: .kind)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

