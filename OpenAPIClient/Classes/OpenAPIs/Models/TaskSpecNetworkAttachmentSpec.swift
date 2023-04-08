//
// TaskSpecNetworkAttachmentSpec.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Read-only spec type for non-swarm containers attached to swarm overlay networks.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  &gt; **Note**: ContainerSpec, NetworkAttachmentSpec, and PluginSpec are &gt; mutually exclusive. PluginSpec is only used when the Runtime field &gt; is set to &#x60;plugin&#x60;. NetworkAttachmentSpec is used when the Runtime &gt; field is set to &#x60;attachment&#x60;.  */
public struct TaskSpecNetworkAttachmentSpec: Codable, JSONEncodable, Hashable {

    /** ID of the container represented by this task */
    public var containerID: String?

    public init(containerID: String? = nil) {
        self.containerID = containerID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case containerID = "ContainerID"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(containerID, forKey: .containerID)
    }
}
