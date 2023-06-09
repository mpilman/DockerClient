//
// ClusterVolume.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options and information specific to, and only present on, Swarm CSI cluster volumes.  */
public struct ClusterVolume: Codable, JSONEncodable, Hashable {

    /** The Swarm ID of this volume. Because cluster volumes are Swarm objects, they have an ID, unlike non-cluster volumes. This ID can be used to refer to the Volume instead of the name.  */
    public var ID: String?
    public var version: ObjectVersion?
    public var createdAt: String?
    public var updatedAt: String?
    public var spec: ClusterVolumeSpec?
    public var info: ClusterVolumeInfo?
    /** The status of the volume as it pertains to its publishing and use on specific nodes  */
    public var publishStatus: [ClusterVolumePublishStatusInner]?

    public init(ID: String? = nil, version: ObjectVersion? = nil, createdAt: String? = nil, updatedAt: String? = nil, spec: ClusterVolumeSpec? = nil, info: ClusterVolumeInfo? = nil, publishStatus: [ClusterVolumePublishStatusInner]? = nil) {
        self.ID = ID
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.spec = spec
        self.info = info
        self.publishStatus = publishStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ID
        case version = "Version"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case spec = "Spec"
        case info = "Info"
        case publishStatus = "PublishStatus"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ID, forKey: .ID)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(spec, forKey: .spec)
        try container.encodeIfPresent(info, forKey: .info)
        try container.encodeIfPresent(publishStatus, forKey: .publishStatus)
    }
}

