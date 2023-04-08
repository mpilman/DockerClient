//
// ImageInspect.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Information about an image in the local image cache.  */
public struct ImageInspect: Codable, JSONEncodable, Hashable {

    /** ID is the content-addressable ID of an image.  This identifier is a content-addressable digest calculated from the image's configuration (which includes the digests of layers used by the image).  Note that this digest differs from the `RepoDigests` below, which holds digests of image manifests that reference the image.  */
    public var id: String?
    /** List of image names/tags in the local image cache that reference this image.  Multiple image tags can refer to the same image, and this list may be empty if no tags reference the image, in which case the image is \"untagged\", in which case it can still be referenced by its ID.  */
    public var repoTags: [String]?
    /** List of content-addressable digests of locally available image manifests that the image is referenced from. Multiple manifests can refer to the same image.  These digests are usually only available if the image was either pulled from a registry, or if the image was pushed to a registry, which is when the manifest is generated and its digest calculated.  */
    public var repoDigests: [String]?
    /** ID of the parent image.  Depending on how the image was created, this field may be empty and is only set for images that were built/created locally. This field is empty if the image was pulled from an image registry.  */
    public var parent: String?
    /** Optional message that was set when committing or importing the image.  */
    public var comment: String?
    /** Date and time at which the image was created, formatted in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  */
    public var created: String?
    /** The ID of the container that was used to create the image.  Depending on how the image was created, this field may be empty.  */
    public var container: String?
    public var containerConfig: ContainerConfig?
    /** The version of Docker that was used to build the image.  Depending on how the image was created, this field may be empty.  */
    public var dockerVersion: String?
    /** Name of the author that was specified when committing the image, or as specified through MAINTAINER (deprecated) in the Dockerfile.  */
    public var author: String?
    public var config: ContainerConfig?
    /** Hardware CPU architecture that the image runs on.  */
    public var architecture: String?
    /** CPU architecture variant (presently ARM-only).  */
    public var variant: String?
    /** Operating System the image is built to run on.  */
    public var os: String?
    /** Operating System version the image is built to run on (especially for Windows).  */
    public var osVersion: String?
    /** Total size of the image including all layers it is composed of.  */
    public var size: Int64?
    /** Total size of the image including all layers it is composed of.  In versions of Docker before v1.10, this field was calculated from the image itself and all of its parent images. Docker v1.10 and up store images self-contained, and no longer use a parent-chain, making this field an equivalent of the Size field.  This field is kept for backward compatibility, but may be removed in a future version of the API.  */
    public var virtualSize: Int64?
    public var graphDriver: GraphDriverData?
    public var rootFS: ImageInspectRootFS?
    public var metadata: ImageInspectMetadata?

    public init(id: String? = nil, repoTags: [String]? = nil, repoDigests: [String]? = nil, parent: String? = nil, comment: String? = nil, created: String? = nil, container: String? = nil, containerConfig: ContainerConfig? = nil, dockerVersion: String? = nil, author: String? = nil, config: ContainerConfig? = nil, architecture: String? = nil, variant: String? = nil, os: String? = nil, osVersion: String? = nil, size: Int64? = nil, virtualSize: Int64? = nil, graphDriver: GraphDriverData? = nil, rootFS: ImageInspectRootFS? = nil, metadata: ImageInspectMetadata? = nil) {
        self.id = id
        self.repoTags = repoTags
        self.repoDigests = repoDigests
        self.parent = parent
        self.comment = comment
        self.created = created
        self.container = container
        self.containerConfig = containerConfig
        self.dockerVersion = dockerVersion
        self.author = author
        self.config = config
        self.architecture = architecture
        self.variant = variant
        self.os = os
        self.osVersion = osVersion
        self.size = size
        self.virtualSize = virtualSize
        self.graphDriver = graphDriver
        self.rootFS = rootFS
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case repoTags = "RepoTags"
        case repoDigests = "RepoDigests"
        case parent = "Parent"
        case comment = "Comment"
        case created = "Created"
        case container = "Container"
        case containerConfig = "ContainerConfig"
        case dockerVersion = "DockerVersion"
        case author = "Author"
        case config = "Config"
        case architecture = "Architecture"
        case variant = "Variant"
        case os = "Os"
        case osVersion = "OsVersion"
        case size = "Size"
        case virtualSize = "VirtualSize"
        case graphDriver = "GraphDriver"
        case rootFS = "RootFS"
        case metadata = "Metadata"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(repoTags, forKey: .repoTags)
        try container.encodeIfPresent(repoDigests, forKey: .repoDigests)
        try container.encodeIfPresent(parent, forKey: .parent)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(created, forKey: .created)
        try container.encodeIfPresent(container, forKey: .container)
        try container.encodeIfPresent(containerConfig, forKey: .containerConfig)
        try container.encodeIfPresent(dockerVersion, forKey: .dockerVersion)
        try container.encodeIfPresent(author, forKey: .author)
        try container.encodeIfPresent(config, forKey: .config)
        try container.encodeIfPresent(architecture, forKey: .architecture)
        try container.encodeIfPresent(variant, forKey: .variant)
        try container.encodeIfPresent(os, forKey: .os)
        try container.encodeIfPresent(osVersion, forKey: .osVersion)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(virtualSize, forKey: .virtualSize)
        try container.encodeIfPresent(graphDriver, forKey: .graphDriver)
        try container.encodeIfPresent(rootFS, forKey: .rootFS)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}

