//
// Mount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Mount: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case bind = "bind"
        case volume = "volume"
        case tmpfs = "tmpfs"
        case npipe = "npipe"
        case cluster = "cluster"
    }
    /** Container path. */
    public var target: String?
    /** Mount source (e.g. a volume name, a host path). */
    public var source: String?
    /** The mount type. Available types:  - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container. - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed. - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs. - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container. - `cluster` a Swarm cluster volume  */
    public var type: ModelType?
    /** Whether the mount should be read-only. */
    public var readOnly: Bool?
    /** The consistency requirement for the mount: `default`, `consistent`, `cached`, or `delegated`. */
    public var consistency: String?
    public var bindOptions: MountBindOptions?
    public var volumeOptions: MountVolumeOptions?
    public var tmpfsOptions: MountTmpfsOptions?

    public init(target: String? = nil, source: String? = nil, type: ModelType? = nil, readOnly: Bool? = nil, consistency: String? = nil, bindOptions: MountBindOptions? = nil, volumeOptions: MountVolumeOptions? = nil, tmpfsOptions: MountTmpfsOptions? = nil) {
        self.target = target
        self.source = source
        self.type = type
        self.readOnly = readOnly
        self.consistency = consistency
        self.bindOptions = bindOptions
        self.volumeOptions = volumeOptions
        self.tmpfsOptions = tmpfsOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case target = "Target"
        case source = "Source"
        case type = "Type"
        case readOnly = "ReadOnly"
        case consistency = "Consistency"
        case bindOptions = "BindOptions"
        case volumeOptions = "VolumeOptions"
        case tmpfsOptions = "TmpfsOptions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(target, forKey: .target)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(readOnly, forKey: .readOnly)
        try container.encodeIfPresent(consistency, forKey: .consistency)
        try container.encodeIfPresent(bindOptions, forKey: .bindOptions)
        try container.encodeIfPresent(volumeOptions, forKey: .volumeOptions)
        try container.encodeIfPresent(tmpfsOptions, forKey: .tmpfsOptions)
    }
}

