//
// DeviceMapping.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A device mapping between the host and container */
public struct DeviceMapping: Codable, JSONEncodable, Hashable {

    public var pathOnHost: String?
    public var pathInContainer: String?
    public var cgroupPermissions: String?

    public init(pathOnHost: String? = nil, pathInContainer: String? = nil, cgroupPermissions: String? = nil) {
        self.pathOnHost = pathOnHost
        self.pathInContainer = pathInContainer
        self.cgroupPermissions = cgroupPermissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pathOnHost = "PathOnHost"
        case pathInContainer = "PathInContainer"
        case cgroupPermissions = "CgroupPermissions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pathOnHost, forKey: .pathOnHost)
        try container.encodeIfPresent(pathInContainer, forKey: .pathInContainer)
        try container.encodeIfPresent(cgroupPermissions, forKey: .cgroupPermissions)
    }
}

