//
// ContainerSummaryHostConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContainerSummaryHostConfig: Codable, JSONEncodable, Hashable {

    public var networkMode: String?

    public init(networkMode: String? = nil) {
        self.networkMode = networkMode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case networkMode = "NetworkMode"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(networkMode, forKey: .networkMode)
    }
}

