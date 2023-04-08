//
// SwarmInitRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SwarmInitRequest: Codable, JSONEncodable, Hashable {

    /** Listen address used for inter-manager communication, as well as determining the networking interface used for the VXLAN Tunnel Endpoint (VTEP). This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the default swarm listening port is used.  */
    public var listenAddr: String?
    /** Externally reachable address advertised to other nodes. This can either be an address/port combination in the form `192.168.1.1:4567`, or an interface followed by a port number, like `eth0:4567`. If the port number is omitted, the port number from the listen address is used. If `AdvertiseAddr` is not specified, it will be automatically detected when possible.  */
    public var advertiseAddr: String?
    /** Address or interface to use for data path traffic (format: `<ip|interface>`), for example,  `192.168.1.1`, or an interface, like `eth0`. If `DataPathAddr` is unspecified, the same address as `AdvertiseAddr` is used.  The `DataPathAddr` specifies the address that global scope network drivers will publish towards other  nodes in order to reach the containers running on this node. Using this parameter it is possible to separate the container data traffic from the management traffic of the cluster.  */
    public var dataPathAddr: String?
    /** DataPathPort specifies the data path port number for data traffic. Acceptable port range is 1024 to 49151. if no port is set or is set to 0, default port 4789 will be used.  */
    public var dataPathPort: Int?
    /** Default Address Pool specifies default subnet pools for global scope networks.  */
    public var defaultAddrPool: [String]?
    /** Force creation of a new swarm. */
    public var forceNewCluster: Bool?
    /** SubnetSize specifies the subnet size of the networks created from the default subnet pool.  */
    public var subnetSize: Int?
    public var spec: SwarmSpec?

    public init(listenAddr: String? = nil, advertiseAddr: String? = nil, dataPathAddr: String? = nil, dataPathPort: Int? = nil, defaultAddrPool: [String]? = nil, forceNewCluster: Bool? = nil, subnetSize: Int? = nil, spec: SwarmSpec? = nil) {
        self.listenAddr = listenAddr
        self.advertiseAddr = advertiseAddr
        self.dataPathAddr = dataPathAddr
        self.dataPathPort = dataPathPort
        self.defaultAddrPool = defaultAddrPool
        self.forceNewCluster = forceNewCluster
        self.subnetSize = subnetSize
        self.spec = spec
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case listenAddr = "ListenAddr"
        case advertiseAddr = "AdvertiseAddr"
        case dataPathAddr = "DataPathAddr"
        case dataPathPort = "DataPathPort"
        case defaultAddrPool = "DefaultAddrPool"
        case forceNewCluster = "ForceNewCluster"
        case subnetSize = "SubnetSize"
        case spec = "Spec"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(listenAddr, forKey: .listenAddr)
        try container.encodeIfPresent(advertiseAddr, forKey: .advertiseAddr)
        try container.encodeIfPresent(dataPathAddr, forKey: .dataPathAddr)
        try container.encodeIfPresent(dataPathPort, forKey: .dataPathPort)
        try container.encodeIfPresent(defaultAddrPool, forKey: .defaultAddrPool)
        try container.encodeIfPresent(forceNewCluster, forKey: .forceNewCluster)
        try container.encodeIfPresent(subnetSize, forKey: .subnetSize)
        try container.encodeIfPresent(spec, forKey: .spec)
    }
}

