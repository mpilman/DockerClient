//
// ClusterVolumePublishStatusInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ClusterVolumePublishStatusInner: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable {
        case pendingPublish = "pending-publish"
        case published = "published"
        case pendingNodeUnpublish = "pending-node-unpublish"
        case pendingControllerUnpublish = "pending-controller-unpublish"
    }
    /** The ID of the Swarm node the volume is published on.  */
    public var nodeID: String?
    /** The published state of the volume. * `pending-publish` The volume should be published to this node, but the call to the controller plugin to do so has not yet been successfully completed. * `published` The volume is published successfully to the node. * `pending-node-unpublish` The volume should be unpublished from the node, and the manager is awaiting confirmation from the worker that it has done so. * `pending-controller-unpublish` The volume is successfully unpublished from the node, but has not yet been successfully unpublished on the controller.  */
    public var state: State?
    /** A map of strings to strings returned by the CSI controller plugin when a volume is published.  */
    public var publishContext: [String: String]?

    public init(nodeID: String? = nil, state: State? = nil, publishContext: [String: String]? = nil) {
        self.nodeID = nodeID
        self.state = state
        self.publishContext = publishContext
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nodeID = "NodeID"
        case state = "State"
        case publishContext = "PublishContext"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nodeID, forKey: .nodeID)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(publishContext, forKey: .publishContext)
    }
}

