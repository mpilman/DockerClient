//
// MountPoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** MountPoint represents a mount point configuration inside the container. This is used for reporting the mountpoints in use by a container.  */
public struct MountPoint: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case bind = "bind"
        case volume = "volume"
        case tmpfs = "tmpfs"
        case npipe = "npipe"
        case cluster = "cluster"
    }
    /** The mount type:  - `bind` a mount of a file or directory from the host into the container. - `volume` a docker volume with the given `Name`. - `tmpfs` a `tmpfs`. - `npipe` a named pipe from the host into the container. - `cluster` a Swarm cluster volume  */
    public var type: ModelType?
    /** Name is the name reference to the underlying data defined by `Source` e.g., the volume name.  */
    public var name: String?
    /** Source location of the mount.  For volumes, this contains the storage location of the volume (within `/var/lib/docker/volumes/`). For bind-mounts, and `npipe`, this contains the source (host) part of the bind-mount. For `tmpfs` mount points, this field is empty.  */
    public var source: String?
    /** Destination is the path relative to the container root (`/`) where the `Source` is mounted inside the container.  */
    public var destination: String?
    /** Driver is the volume driver used to create the volume (if it is a volume).  */
    public var driver: String?
    /** Mode is a comma separated list of options supplied by the user when creating the bind/volume mount.  The default is platform-specific (`\"z\"` on Linux, empty on Windows).  */
    public var mode: String?
    /** Whether the mount is mounted writable (read-write).  */
    public var RW: Bool?
    /** Propagation describes how mounts are propagated from the host into the mount point, and vice-versa. Refer to the [Linux kernel documentation](https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt) for details. This field is not used on Windows.  */
    public var propagation: String?

    public init(type: ModelType? = nil, name: String? = nil, source: String? = nil, destination: String? = nil, driver: String? = nil, mode: String? = nil, RW: Bool? = nil, propagation: String? = nil) {
        self.type = type
        self.name = name
        self.source = source
        self.destination = destination
        self.driver = driver
        self.mode = mode
        self.RW = RW
        self.propagation = propagation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "Type"
        case name = "Name"
        case source = "Source"
        case destination = "Destination"
        case driver = "Driver"
        case mode = "Mode"
        case RW
        case propagation = "Propagation"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(source, forKey: .source)
        try container.encodeIfPresent(destination, forKey: .destination)
        try container.encodeIfPresent(driver, forKey: .driver)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(RW, forKey: .RW)
        try container.encodeIfPresent(propagation, forKey: .propagation)
    }
}

