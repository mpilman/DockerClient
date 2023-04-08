//
// PushImageInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PushImageInfo: Codable, JSONEncodable, Hashable {

    public var error: String?
    public var status: String?
    public var progress: String?
    public var progressDetail: ProgressDetail?

    public init(error: String? = nil, status: String? = nil, progress: String? = nil, progressDetail: ProgressDetail? = nil) {
        self.error = error
        self.status = status
        self.progress = progress
        self.progressDetail = progressDetail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case status
        case progress
        case progressDetail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(progress, forKey: .progress)
        try container.encodeIfPresent(progressDetail, forKey: .progressDetail)
    }
}
