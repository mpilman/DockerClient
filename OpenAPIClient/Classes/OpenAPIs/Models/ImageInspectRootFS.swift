//
// ImageInspectRootFS.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Information about the image&#39;s RootFS, including the layer IDs.  */
public struct ImageInspectRootFS: Codable, JSONEncodable, Hashable {

    public var type: String
    public var layers: [String]?

    public init(type: String, layers: [String]? = nil) {
        self.type = type
        self.layers = layers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "Type"
        case layers = "Layers"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(layers, forKey: .layers)
    }
}

