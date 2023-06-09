//
// NetworkContainer.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NetworkContainer: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var endpointID: String?
    public var macAddress: String?
    public var iPv4Address: String?
    public var iPv6Address: String?

    public init(name: String? = nil, endpointID: String? = nil, macAddress: String? = nil, iPv4Address: String? = nil, iPv6Address: String? = nil) {
        self.name = name
        self.endpointID = endpointID
        self.macAddress = macAddress
        self.iPv4Address = iPv4Address
        self.iPv6Address = iPv6Address
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case endpointID = "EndpointID"
        case macAddress = "MacAddress"
        case iPv4Address = "IPv4Address"
        case iPv6Address = "IPv6Address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(endpointID, forKey: .endpointID)
        try container.encodeIfPresent(macAddress, forKey: .macAddress)
        try container.encodeIfPresent(iPv4Address, forKey: .iPv4Address)
        try container.encodeIfPresent(iPv6Address, forKey: .iPv6Address)
    }
}

