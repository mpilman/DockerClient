//
// Service.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Service: Codable, JSONEncodable, Hashable {

    public var ID: String?
    public var version: ObjectVersion?
    public var createdAt: String?
    public var updatedAt: String?
    public var spec: ServiceSpec?
    public var endpoint: ServiceEndpoint?
    public var updateStatus: ServiceUpdateStatus?
    public var serviceStatus: ServiceServiceStatus?
    public var jobStatus: ServiceJobStatus?

    public init(ID: String? = nil, version: ObjectVersion? = nil, createdAt: String? = nil, updatedAt: String? = nil, spec: ServiceSpec? = nil, endpoint: ServiceEndpoint? = nil, updateStatus: ServiceUpdateStatus? = nil, serviceStatus: ServiceServiceStatus? = nil, jobStatus: ServiceJobStatus? = nil) {
        self.ID = ID
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.spec = spec
        self.endpoint = endpoint
        self.updateStatus = updateStatus
        self.serviceStatus = serviceStatus
        self.jobStatus = jobStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ID
        case version = "Version"
        case createdAt = "CreatedAt"
        case updatedAt = "UpdatedAt"
        case spec = "Spec"
        case endpoint = "Endpoint"
        case updateStatus = "UpdateStatus"
        case serviceStatus = "ServiceStatus"
        case jobStatus = "JobStatus"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ID, forKey: .ID)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(spec, forKey: .spec)
        try container.encodeIfPresent(endpoint, forKey: .endpoint)
        try container.encodeIfPresent(updateStatus, forKey: .updateStatus)
        try container.encodeIfPresent(serviceStatus, forKey: .serviceStatus)
        try container.encodeIfPresent(jobStatus, forKey: .jobStatus)
    }
}
