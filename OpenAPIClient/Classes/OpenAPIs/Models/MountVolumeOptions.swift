//
// MountVolumeOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Optional configuration for the &#x60;volume&#x60; type. */
public struct MountVolumeOptions: Codable, JSONEncodable, Hashable {

    /** Populate volume with data from the target. */
    public var noCopy: Bool? = false
    /** User-defined key/value metadata. */
    public var labels: [String: String]?
    public var driverConfig: MountVolumeOptionsDriverConfig?

    public init(noCopy: Bool? = false, labels: [String: String]? = nil, driverConfig: MountVolumeOptionsDriverConfig? = nil) {
        self.noCopy = noCopy
        self.labels = labels
        self.driverConfig = driverConfig
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case noCopy = "NoCopy"
        case labels = "Labels"
        case driverConfig = "DriverConfig"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(noCopy, forKey: .noCopy)
        try container.encodeIfPresent(labels, forKey: .labels)
        try container.encodeIfPresent(driverConfig, forKey: .driverConfig)
    }
}
