//
// HistoryResponseItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** individual image layer information in response to ImageHistory operation */
public struct HistoryResponseItem: Codable, JSONEncodable, Hashable {

    public var id: String
    public var created: Int64
    public var createdBy: String
    public var tags: [String]
    public var size: Int64
    public var comment: String

    public init(id: String, created: Int64, createdBy: String, tags: [String], size: Int64, comment: String) {
        self.id = id
        self.created = created
        self.createdBy = createdBy
        self.tags = tags
        self.size = size
        self.comment = comment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case created = "Created"
        case createdBy = "CreatedBy"
        case tags = "Tags"
        case size = "Size"
        case comment = "Comment"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(created, forKey: .created)
        try container.encode(createdBy, forKey: .createdBy)
        try container.encode(tags, forKey: .tags)
        try container.encode(size, forKey: .size)
        try container.encode(comment, forKey: .comment)
    }
}

