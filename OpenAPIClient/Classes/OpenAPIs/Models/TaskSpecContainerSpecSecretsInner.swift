//
// TaskSpecContainerSpecSecretsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TaskSpecContainerSpecSecretsInner: Codable, JSONEncodable, Hashable {

    public var file: TaskSpecContainerSpecSecretsInnerFile?
    /** SecretID represents the ID of the specific secret that we're referencing.  */
    public var secretID: String?
    /** SecretName is the name of the secret that this references, but this is just provided for lookup/display purposes. The secret in the reference will be identified by its ID.  */
    public var secretName: String?

    public init(file: TaskSpecContainerSpecSecretsInnerFile? = nil, secretID: String? = nil, secretName: String? = nil) {
        self.file = file
        self.secretID = secretID
        self.secretName = secretName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case file = "File"
        case secretID = "SecretID"
        case secretName = "SecretName"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(file, forKey: .file)
        try container.encodeIfPresent(secretID, forKey: .secretID)
        try container.encodeIfPresent(secretName, forKey: .secretName)
    }
}

