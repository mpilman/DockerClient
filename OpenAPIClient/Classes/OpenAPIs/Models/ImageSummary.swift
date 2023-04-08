//
// ImageSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImageSummary: Codable, JSONEncodable, Hashable {

    /** ID is the content-addressable ID of an image.  This identifier is a content-addressable digest calculated from the image's configuration (which includes the digests of layers used by the image).  Note that this digest differs from the `RepoDigests` below, which holds digests of image manifests that reference the image.  */
    public var id: String
    /** ID of the parent image.  Depending on how the image was created, this field may be empty and is only set for images that were built/created locally. This field is empty if the image was pulled from an image registry.  */
    public var parentId: String
    /** List of image names/tags in the local image cache that reference this image.  Multiple image tags can refer to the same image, and this list may be empty if no tags reference the image, in which case the image is \"untagged\", in which case it can still be referenced by its ID.  */
    public var repoTags: [String]
    /** List of content-addressable digests of locally available image manifests that the image is referenced from. Multiple manifests can refer to the same image.  These digests are usually only available if the image was either pulled from a registry, or if the image was pushed to a registry, which is when the manifest is generated and its digest calculated.  */
    public var repoDigests: [String]
    /** Date and time at which the image was created as a Unix timestamp (number of seconds sinds EPOCH).  */
    public var created: Int
    /** Total size of the image including all layers it is composed of.  */
    public var size: Int64
    /** Total size of image layers that are shared between this image and other images.  This size is not calculated by default. `-1` indicates that the value has not been set / calculated.  */
    public var sharedSize: Int64
    /** Total size of the image including all layers it is composed of.  In versions of Docker before v1.10, this field was calculated from the image itself and all of its parent images. Docker v1.10 and up store images self-contained, and no longer use a parent-chain, making this field an equivalent of the Size field.  This field is kept for backward compatibility, but may be removed in a future version of the API.  */
    public var virtualSize: Int64
    /** User-defined key/value metadata. */
    public var labels: [String: String]
    /** Number of containers using this image. Includes both stopped and running containers.  This size is not calculated by default, and depends on which API endpoint is used. `-1` indicates that the value has not been set / calculated.  */
    public var containers: Int

    public init(id: String, parentId: String, repoTags: [String], repoDigests: [String], created: Int, size: Int64, sharedSize: Int64, virtualSize: Int64, labels: [String: String], containers: Int) {
        self.id = id
        self.parentId = parentId
        self.repoTags = repoTags
        self.repoDigests = repoDigests
        self.created = created
        self.size = size
        self.sharedSize = sharedSize
        self.virtualSize = virtualSize
        self.labels = labels
        self.containers = containers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case parentId = "ParentId"
        case repoTags = "RepoTags"
        case repoDigests = "RepoDigests"
        case created = "Created"
        case size = "Size"
        case sharedSize = "SharedSize"
        case virtualSize = "VirtualSize"
        case labels = "Labels"
        case containers = "Containers"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(parentId, forKey: .parentId)
        try container.encode(repoTags, forKey: .repoTags)
        try container.encode(repoDigests, forKey: .repoDigests)
        try container.encode(created, forKey: .created)
        try container.encode(size, forKey: .size)
        try container.encode(sharedSize, forKey: .sharedSize)
        try container.encode(virtualSize, forKey: .virtualSize)
        try container.encode(labels, forKey: .labels)
        try container.encode(containers, forKey: .containers)
    }
}
