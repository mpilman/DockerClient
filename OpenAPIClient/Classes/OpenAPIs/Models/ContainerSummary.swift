//
// ContainerSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContainerSummary: Codable, JSONEncodable, Hashable {

    /** The ID of this container */
    public var id: String?
    /** The names that this container has been given */
    public var names: [String]?
    /** The name of the image used when creating this container */
    public var image: String?
    /** The ID of the image that this container was created from */
    public var imageID: String?
    /** Command to run when starting the container */
    public var command: String?
    /** When the container was created */
    public var created: Int64?
    /** The ports exposed by this container */
    public var ports: [Port]?
    /** The size of files that have been created or changed by this container */
    public var sizeRw: Int64?
    /** The total size of all the files in this container */
    public var sizeRootFs: Int64?
    /** User-defined key/value metadata. */
    public var labels: [String: String]?
    /** The state of this container (e.g. `Exited`) */
    public var state: String?
    /** Additional human-readable status of this container (e.g. `Exit 0`) */
    public var status: String?
    public var hostConfig: ContainerSummaryHostConfig?
    public var networkSettings: ContainerSummaryNetworkSettings?
    public var mounts: [MountPoint]?

    public init(id: String? = nil, names: [String]? = nil, image: String? = nil, imageID: String? = nil, command: String? = nil, created: Int64? = nil, ports: [Port]? = nil, sizeRw: Int64? = nil, sizeRootFs: Int64? = nil, labels: [String: String]? = nil, state: String? = nil, status: String? = nil, hostConfig: ContainerSummaryHostConfig? = nil, networkSettings: ContainerSummaryNetworkSettings? = nil, mounts: [MountPoint]? = nil) {
        self.id = id
        self.names = names
        self.image = image
        self.imageID = imageID
        self.command = command
        self.created = created
        self.ports = ports
        self.sizeRw = sizeRw
        self.sizeRootFs = sizeRootFs
        self.labels = labels
        self.state = state
        self.status = status
        self.hostConfig = hostConfig
        self.networkSettings = networkSettings
        self.mounts = mounts
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case names = "Names"
        case image = "Image"
        case imageID = "ImageID"
        case command = "Command"
        case created = "Created"
        case ports = "Ports"
        case sizeRw = "SizeRw"
        case sizeRootFs = "SizeRootFs"
        case labels = "Labels"
        case state = "State"
        case status = "Status"
        case hostConfig = "HostConfig"
        case networkSettings = "NetworkSettings"
        case mounts = "Mounts"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(imageID, forKey: .imageID)
        try container.encodeIfPresent(command, forKey: .command)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(ports, forKey: .ports)
        try container.encodeIfPresent(sizeRw, forKey: .sizeRw)
        try container.encodeIfPresent(sizeRootFs, forKey: .sizeRootFs)
        try container.encodeIfPresent(labels, forKey: .labels)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(hostConfig, forKey: .hostConfig)
        try container.encodeIfPresent(networkSettings, forKey: .networkSettings)
        try container.encodeIfPresent(mounts, forKey: .mounts)
    }
}
