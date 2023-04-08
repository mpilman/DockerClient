//
// NetworkCreateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NetworkCreateRequest: Codable, JSONEncodable, Hashable {

    /** The network's name. */
    public var name: String
    /** Check for networks with duplicate names. Since Network is primarily keyed based on a random ID and not on the name, and network name is strictly a user-friendly alias to the network which is uniquely identified using ID, there is no guaranteed way to check for duplicates. CheckDuplicate is there to provide a best effort checking of any networks which has the same name but it is not guaranteed to catch all name collisions.  */
    public var checkDuplicate: Bool?
    /** Name of the network driver plugin to use. */
    public var driver: String? = "bridge"
    /** Restrict external access to the network. */
    public var _internal: Bool?
    /** Globally scoped network is manually attachable by regular containers from workers in swarm mode.  */
    public var attachable: Bool?
    /** Ingress network is the network which provides the routing-mesh in swarm mode.  */
    public var ingress: Bool?
    public var IPAM: IPAM?
    /** Enable IPv6 on the network. */
    public var enableIPv6: Bool?
    /** Network specific options to be used by the drivers. */
    public var options: [String: String]?
    /** User-defined key/value metadata. */
    public var labels: [String: String]?

    public init(name: String, checkDuplicate: Bool? = nil, driver: String? = "bridge", _internal: Bool? = nil, attachable: Bool? = nil, ingress: Bool? = nil, IPAM: IPAM? = nil, enableIPv6: Bool? = nil, options: [String: String]? = nil, labels: [String: String]? = nil) {
        self.name = name
        self.checkDuplicate = checkDuplicate
        self.driver = driver
        self._internal = _internal
        self.attachable = attachable
        self.ingress = ingress
        self.IPAM = IPAM
        self.enableIPv6 = enableIPv6
        self.options = options
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case checkDuplicate = "CheckDuplicate"
        case driver = "Driver"
        case _internal = "Internal"
        case attachable = "Attachable"
        case ingress = "Ingress"
        case IPAM
        case enableIPv6 = "EnableIPv6"
        case options = "Options"
        case labels = "Labels"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(checkDuplicate, forKey: .checkDuplicate)
        try container.encodeIfPresent(driver, forKey: .driver)
        try container.encodeIfPresent(_internal, forKey: ._internal)
        try container.encodeIfPresent(attachable, forKey: .attachable)
        try container.encodeIfPresent(ingress, forKey: .ingress)
        try container.encodeIfPresent(IPAM, forKey: .IPAM)
        try container.encodeIfPresent(enableIPv6, forKey: .enableIPv6)
        try container.encodeIfPresent(options, forKey: .options)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

