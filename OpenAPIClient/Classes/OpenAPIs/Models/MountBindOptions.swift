//
// MountBindOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Optional configuration for the &#x60;bind&#x60; type. */
public struct MountBindOptions: Codable, JSONEncodable, Hashable {

    public enum Propagation: String, Codable, CaseIterable {
        case _private = "private"
        case rprivate = "rprivate"
        case shared = "shared"
        case rshared = "rshared"
        case slave = "slave"
        case rslave = "rslave"
    }
    /** A propagation mode with the value `[r]private`, `[r]shared`, or `[r]slave`. */
    public var propagation: Propagation?
    /** Disable recursive bind mount. */
    public var nonRecursive: Bool? = false
    /** Create mount point on host if missing */
    public var createMountpoint: Bool? = false

    public init(propagation: Propagation? = nil, nonRecursive: Bool? = false, createMountpoint: Bool? = false) {
        self.propagation = propagation
        self.nonRecursive = nonRecursive
        self.createMountpoint = createMountpoint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case propagation = "Propagation"
        case nonRecursive = "NonRecursive"
        case createMountpoint = "CreateMountpoint"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(propagation, forKey: .propagation)
        try container.encodeIfPresent(nonRecursive, forKey: .nonRecursive)
        try container.encodeIfPresent(createMountpoint, forKey: .createMountpoint)
    }
}
