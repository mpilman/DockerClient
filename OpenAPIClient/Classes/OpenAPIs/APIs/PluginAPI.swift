//
// PluginAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PluginAPI {

    /**
     Get plugin privileges
     
     - parameter remote: (query) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getPluginPrivileges(remote: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [PluginPrivilege]?, _ error: Error?) -> Void)) -> RequestTask {
        return getPluginPrivilegesWithRequestBuilder(remote: remote).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get plugin privileges
     - GET /plugins/privileges
     - parameter remote: (query) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - returns: RequestBuilder<[PluginPrivilege]> 
     */
    open class func getPluginPrivilegesWithRequestBuilder(remote: String) -> RequestBuilder<[PluginPrivilege]> {
        let localVariablePath = "/plugins/privileges"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "remote": (wrappedValue: remote.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[PluginPrivilege]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Create a plugin
     
     - parameter name: (query) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter tarContext: (body) Path to tar containing plugin rootfs and manifest (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginCreate(name: String, tarContext: URL? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginCreateWithRequestBuilder(name: name, tarContext: tarContext).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a plugin
     - POST /plugins/create
     - parameter name: (query) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter tarContext: (body) Path to tar containing plugin rootfs and manifest (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func pluginCreateWithRequestBuilder(name: String, tarContext: URL? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/plugins/create"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tarContext)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": (wrappedValue: name.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Remove a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter force: (query) Disable the plugin before removing. This may result in issues if the plugin is in use by a container.  (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginDelete(name: String, force: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Plugin?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginDeleteWithRequestBuilder(name: name, force: force).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove a plugin
     - DELETE /plugins/{name}
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter force: (query) Disable the plugin before removing. This may result in issues if the plugin is in use by a container.  (optional, default to false)
     - returns: RequestBuilder<Plugin> 
     */
    open class func pluginDeleteWithRequestBuilder(name: String, force: Bool? = nil) -> RequestBuilder<Plugin> {
        var localVariablePath = "/plugins/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "force": (wrappedValue: force?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Plugin>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Disable a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginDisable(name: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginDisableWithRequestBuilder(name: name).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Disable a plugin
     - POST /plugins/{name}/disable
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - returns: RequestBuilder<Void> 
     */
    open class func pluginDisableWithRequestBuilder(name: String) -> RequestBuilder<Void> {
        var localVariablePath = "/plugins/{name}/disable"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Enable a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter timeout: (query) Set the HTTP client timeout (in seconds) (optional, default to 0)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginEnable(name: String, timeout: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginEnableWithRequestBuilder(name: name, timeout: timeout).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Enable a plugin
     - POST /plugins/{name}/enable
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter timeout: (query) Set the HTTP client timeout (in seconds) (optional, default to 0)
     - returns: RequestBuilder<Void> 
     */
    open class func pluginEnableWithRequestBuilder(name: String, timeout: Int? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/plugins/{name}/enable"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "timeout": (wrappedValue: timeout?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Inspect a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginInspect(name: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Plugin?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginInspectWithRequestBuilder(name: name).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Inspect a plugin
     - GET /plugins/{name}/json
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - returns: RequestBuilder<Plugin> 
     */
    open class func pluginInspectWithRequestBuilder(name: String) -> RequestBuilder<Plugin> {
        var localVariablePath = "/plugins/{name}/json"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Plugin>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     List plugins
     
     - parameter filters: (query) A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the plugin list.  Available filters:  - &#x60;capability&#x3D;&lt;capability name&gt;&#x60; - &#x60;enable&#x3D;&lt;true&gt;|&lt;false&gt;&#x60;  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginList(filters: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Plugin]?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginListWithRequestBuilder(filters: filters).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List plugins
     - GET /plugins
     - Returns information about installed plugins.
     - parameter filters: (query) A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the plugin list.  Available filters:  - &#x60;capability&#x3D;&lt;capability name&gt;&#x60; - &#x60;enable&#x3D;&lt;true&gt;|&lt;false&gt;&#x60;  (optional)
     - returns: RequestBuilder<[Plugin]> 
     */
    open class func pluginListWithRequestBuilder(filters: String? = nil) -> RequestBuilder<[Plugin]> {
        let localVariablePath = "/plugins"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filters": (wrappedValue: filters?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Plugin]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Install a plugin
     
     - parameter remote: (query) Remote reference for plugin to install.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  
     - parameter name: (query) Local name for the pulled plugin.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  (optional)
     - parameter xRegistryAuth: (header) A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginPull(remote: String, name: String? = nil, xRegistryAuth: String? = nil, body: [PluginPrivilege]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginPullWithRequestBuilder(remote: remote, name: name, xRegistryAuth: xRegistryAuth, body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Install a plugin
     - POST /plugins/pull
     - Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [`POST /plugins/{name}/enable` endpoint](#operation/PostPluginsEnable). 
     - parameter remote: (query) Remote reference for plugin to install.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  
     - parameter name: (query) Local name for the pulled plugin.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  (optional)
     - parameter xRegistryAuth: (header) A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func pluginPullWithRequestBuilder(remote: String, name: String? = nil, xRegistryAuth: String? = nil, body: [PluginPrivilege]? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/plugins/pull"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "remote": (wrappedValue: remote.encodeToJSON(), isExplode: false),
            "name": (wrappedValue: name?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Registry-Auth": xRegistryAuth?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Push a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginPush(name: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginPushWithRequestBuilder(name: name).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Push a plugin
     - POST /plugins/{name}/push
     - Push a plugin to the registry. 
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - returns: RequestBuilder<Void> 
     */
    open class func pluginPushWithRequestBuilder(name: String) -> RequestBuilder<Void> {
        var localVariablePath = "/plugins/{name}/push"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Configure a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginSet(name: String, body: [String]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginSetWithRequestBuilder(name: name, body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Configure a plugin
     - POST /plugins/{name}/set
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func pluginSetWithRequestBuilder(name: String, body: [String]? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/plugins/{name}/set"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Upgrade a plugin
     
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter remote: (query) Remote reference to upgrade to.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  
     - parameter xRegistryAuth: (header) A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func pluginUpgrade(name: String, remote: String, xRegistryAuth: String? = nil, body: [PluginPrivilege]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return pluginUpgradeWithRequestBuilder(name: name, remote: remote, xRegistryAuth: xRegistryAuth, body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upgrade a plugin
     - POST /plugins/{name}/upgrade
     - parameter name: (path) The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  
     - parameter remote: (query) Remote reference to upgrade to.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  
     - parameter xRegistryAuth: (header) A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func pluginUpgradeWithRequestBuilder(name: String, remote: String, xRegistryAuth: String? = nil, body: [PluginPrivilege]? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/plugins/{name}/upgrade"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "remote": (wrappedValue: remote.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Registry-Auth": xRegistryAuth?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
