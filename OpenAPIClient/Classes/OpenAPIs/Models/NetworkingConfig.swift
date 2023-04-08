//
// NetworkingConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** NetworkingConfig represents the container&#39;s networking configuration for each of its interfaces. It is used for the networking configs specified in the &#x60;docker create&#x60; and &#x60;docker network connect&#x60; commands.  */
public struct NetworkingConfig: Codable, JSONEncodable, Hashable {

    /** A mapping of network name to endpoint configuration for that network.  */
    public var endpointsConfig: [String: EndpointSettings]?

    public init(endpointsConfig: [String: EndpointSettings]? = nil) {
        self.endpointsConfig = endpointsConfig
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case endpointsConfig = "EndpointsConfig"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(endpointsConfig, forKey: .endpointsConfig)
    }
}

