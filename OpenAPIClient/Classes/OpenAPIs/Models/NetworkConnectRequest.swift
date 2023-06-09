//
// NetworkConnectRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NetworkConnectRequest: Codable, JSONEncodable, Hashable {
    /** The ID or name of the container to connect to the network. */
    public var container: String?
    public var endpointConfig: EndpointSettings?

    public init(container: String? = nil, endpointConfig: EndpointSettings? = nil) {
        self.container = container
        self.endpointConfig = endpointConfig
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case container = "Container"
        case endpointConfig = "EndpointConfig"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.container, forKey: .container)
        try container.encodeIfPresent(endpointConfig, forKey: .endpointConfig)
    }
}
