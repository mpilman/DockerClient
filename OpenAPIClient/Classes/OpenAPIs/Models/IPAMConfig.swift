//
// IPAMConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IPAMConfig: Codable, JSONEncodable, Hashable {

    public var subnet: String?
    public var iPRange: String?
    public var gateway: String?
    public var auxiliaryAddresses: [String: String]?

    public init(subnet: String? = nil, iPRange: String? = nil, gateway: String? = nil, auxiliaryAddresses: [String: String]? = nil) {
        self.subnet = subnet
        self.iPRange = iPRange
        self.gateway = gateway
        self.auxiliaryAddresses = auxiliaryAddresses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subnet = "Subnet"
        case iPRange = "IPRange"
        case gateway = "Gateway"
        case auxiliaryAddresses = "AuxiliaryAddresses"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subnet, forKey: .subnet)
        try container.encodeIfPresent(iPRange, forKey: .iPRange)
        try container.encodeIfPresent(gateway, forKey: .gateway)
        try container.encodeIfPresent(auxiliaryAddresses, forKey: .auxiliaryAddresses)
    }
}

