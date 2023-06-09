//
// TaskSpecContainerSpecDNSConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Specification for DNS related configurations in resolver configuration file (&#x60;resolv.conf&#x60;).  */
public struct TaskSpecContainerSpecDNSConfig: Codable, JSONEncodable, Hashable {

    /** The IP addresses of the name servers. */
    public var nameservers: [String]?
    /** A search list for host-name lookup. */
    public var search: [String]?
    /** A list of internal resolver variables to be modified (e.g., `debug`, `ndots:3`, etc.).  */
    public var options: [String]?

    public init(nameservers: [String]? = nil, search: [String]? = nil, options: [String]? = nil) {
        self.nameservers = nameservers
        self.search = search
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nameservers = "Nameservers"
        case search = "Search"
        case options = "Options"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nameservers, forKey: .nameservers)
        try container.encodeIfPresent(search, forKey: .search)
        try container.encodeIfPresent(options, forKey: .options)
    }
}

