//
// VolumeUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Volume configuration */
public struct VolumeUpdateRequest: Codable, JSONEncodable, Hashable {

    public var spec: ClusterVolumeSpec?

    public init(spec: ClusterVolumeSpec? = nil) {
        self.spec = spec
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case spec = "Spec"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(spec, forKey: .spec)
    }
}

