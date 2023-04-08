//
// ClusterVolumeSpecAccessMode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines how the volume is used by tasks.  */
public struct ClusterVolumeSpecAccessMode: Codable, JSONEncodable, Hashable {

    public enum Scope: String, Codable, CaseIterable {
        case single = "single"
        case multi = "multi"
    }
    public enum Sharing: String, Codable, CaseIterable {
        case _none = "none"
        case readonly = "readonly"
        case onewriter = "onewriter"
        case all = "all"
    }
    public enum Availability: String, Codable, CaseIterable {
        case active = "active"
        case pause = "pause"
        case drain = "drain"
    }
    /** The set of nodes this volume can be used on at one time. - `single` The volume may only be scheduled to one node at a time. - `multi` the volume may be scheduled to any supported number of nodes at a time.  */
    public var scope: Scope? = .single
    /** The number and way that different tasks can use this volume at one time. - `none` The volume may only be used by one task at a time. - `readonly` The volume may be used by any number of tasks, but they all must mount the volume as readonly - `onewriter` The volume may be used by any number of tasks, but only one may mount it as read/write. - `all` The volume may have any number of readers and writers.  */
    public var sharing: Sharing? = ._none
    /** Options for using this volume as a Mount-type volume.      Either MountVolume or BlockVolume, but not both, must be     present.   properties:     FsType:       type: \"string\"       description: |         Specifies the filesystem type for the mount volume.         Optional.     MountFlags:       type: \"array\"       description: |         Flags to pass when mounting the volume. Optional.       items:         type: \"string\" BlockVolume:   type: \"object\"   description: |     Options for using this volume as a Block-type volume.     Intentionally empty.  */
    public var mountVolume: AnyCodable?
    /** Swarm Secrets that are passed to the CSI storage plugin when operating on this volume.  */
    public var secrets: [ClusterVolumeSpecAccessModeSecretsInner]?
    public var accessibilityRequirements: ClusterVolumeSpecAccessModeAccessibilityRequirements?
    public var capacityRange: ClusterVolumeSpecAccessModeCapacityRange?
    /** The availability of the volume for use in tasks. - `active` The volume is fully available for scheduling on the cluster - `pause` No new workloads should use the volume, but existing workloads are not stopped. - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.  */
    public var availability: Availability? = .active

    public init(scope: Scope? = .single, sharing: Sharing? = ._none, mountVolume: AnyCodable? = nil, secrets: [ClusterVolumeSpecAccessModeSecretsInner]? = nil, accessibilityRequirements: ClusterVolumeSpecAccessModeAccessibilityRequirements? = nil, capacityRange: ClusterVolumeSpecAccessModeCapacityRange? = nil, availability: Availability? = .active) {
        self.scope = scope
        self.sharing = sharing
        self.mountVolume = mountVolume
        self.secrets = secrets
        self.accessibilityRequirements = accessibilityRequirements
        self.capacityRange = capacityRange
        self.availability = availability
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case scope = "Scope"
        case sharing = "Sharing"
        case mountVolume = "MountVolume"
        case secrets = "Secrets"
        case accessibilityRequirements = "AccessibilityRequirements"
        case capacityRange = "CapacityRange"
        case availability = "Availability"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(sharing, forKey: .sharing)
        try container.encodeIfPresent(mountVolume, forKey: .mountVolume)
        try container.encodeIfPresent(secrets, forKey: .secrets)
        try container.encodeIfPresent(accessibilityRequirements, forKey: .accessibilityRequirements)
        try container.encodeIfPresent(capacityRange, forKey: .capacityRange)
        try container.encodeIfPresent(availability, forKey: .availability)
    }
}

