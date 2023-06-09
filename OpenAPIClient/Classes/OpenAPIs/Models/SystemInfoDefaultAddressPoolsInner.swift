//
// SystemInfoDefaultAddressPoolsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SystemInfoDefaultAddressPoolsInner: Codable, JSONEncodable, Hashable {

    /** The network address in CIDR format */
    public var base: String?
    /** The network pool size */
    public var size: Int?

    public init(base: String? = nil, size: Int? = nil) {
        self.base = base
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case base = "Base"
        case size = "Size"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(base, forKey: .base)
        try container.encodeIfPresent(size, forKey: .size)
    }
}

