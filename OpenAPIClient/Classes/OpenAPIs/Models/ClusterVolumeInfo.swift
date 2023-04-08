//
// ClusterVolumeInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Information about the global status of the volume.  */
public struct ClusterVolumeInfo: Codable, JSONEncodable, Hashable {

    /** The capacity of the volume in bytes. A value of 0 indicates that the capacity is unknown.  */
    public var capacityBytes: Int64?
    /** A map of strings to strings returned from the storage plugin when the volume is created.  */
    public var volumeContext: [String: String]?
    /** The ID of the volume as returned by the CSI storage plugin. This is distinct from the volume's ID as provided by Docker. This ID is never used by the user when communicating with Docker to refer to this volume. If the ID is blank, then the Volume has not been successfully created in the plugin yet.  */
    public var volumeID: String?
    /** The topology this volume is actually accessible from.  */
    public var accessibleTopology: [Dictionary]?

    public init(capacityBytes: Int64? = nil, volumeContext: [String: String]? = nil, volumeID: String? = nil, accessibleTopology: [Dictionary]? = nil) {
        self.capacityBytes = capacityBytes
        self.volumeContext = volumeContext
        self.volumeID = volumeID
        self.accessibleTopology = accessibleTopology
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case capacityBytes = "CapacityBytes"
        case volumeContext = "VolumeContext"
        case volumeID = "VolumeID"
        case accessibleTopology = "AccessibleTopology"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(capacityBytes, forKey: .capacityBytes)
        try container.encodeIfPresent(volumeContext, forKey: .volumeContext)
        try container.encodeIfPresent(volumeID, forKey: .volumeID)
        try container.encodeIfPresent(accessibleTopology, forKey: .accessibleTopology)
    }
}
