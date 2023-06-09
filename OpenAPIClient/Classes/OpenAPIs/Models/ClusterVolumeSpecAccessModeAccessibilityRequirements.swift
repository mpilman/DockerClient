//
// ClusterVolumeSpecAccessModeAccessibilityRequirements.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Requirements for the accessible topology of the volume. These fields are optional. For an in-depth description of what these fields mean, see the CSI specification.  */
public struct ClusterVolumeSpecAccessModeAccessibilityRequirements: Codable, JSONEncodable, Hashable {
    /** A list of required topologies, at least one of which the volume must be accessible from.  */
    public var requisite: [[String: String]]?
    /** A list of topologies that the volume should attempt to be provisioned in.  */
    public var preferred: [[String: String]]?

    public init(requisite: [[String: String]]? = nil, preferred: [[String: String]]? = nil) {
        self.requisite = requisite
        self.preferred = preferred
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requisite = "Requisite"
        case preferred = "Preferred"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(requisite, forKey: .requisite)
        try container.encodeIfPresent(preferred, forKey: .preferred)
    }
}
