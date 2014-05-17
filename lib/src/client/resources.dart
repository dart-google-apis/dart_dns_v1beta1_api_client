part of dns_v1beta1_api;

class ChangesResource_ {

  final Client _client;

  ChangesResource_(Client client) :
      _client = client;

  /**
   * Atomically update the ResourceRecordSet collection.
   *
   * [request] - Change to send in this request
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [managedZone] - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Change> create(Change request, core.String project, core.String managedZone, {core.Map optParams}) {
    var url = "{project}/managedZones/{managedZone}/changes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (managedZone == null) paramErrors.add("managedZone is required");
    if (managedZone != null) urlParams["managedZone"] = managedZone;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Change.fromJson(data));
  }

  /**
   * Fetch the representation of an existing Change.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [managedZone] - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
   *
   * [changeId] - The identifier of the requested change, from a previous ResourceRecordSetsChangeResponse.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Change> get(core.String project, core.String managedZone, core.String changeId, {core.Map optParams}) {
    var url = "{project}/managedZones/{managedZone}/changes/{changeId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (changeId == null) paramErrors.add("changeId is required");
    if (changeId != null) urlParams["changeId"] = changeId;
    if (managedZone == null) paramErrors.add("managedZone is required");
    if (managedZone != null) urlParams["managedZone"] = managedZone;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Change.fromJson(data));
  }

  /**
   * Enumerate Changes to a ResourceRecordSet collection.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [managedZone] - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
   *
   * [maxResults] - Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
   *
   * [pageToken] - Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
   *
   * [sortBy] - Sorting criterion. The only supported value is change sequence.
   *   Default: changeSequence
   *   Allowed values:
   *     changeSequence - 
   *
   * [sortOrder] - Sorting order direction: 'ascending' or 'descending'.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChangesListResponse> list(core.String project, core.String managedZone, {core.int maxResults, core.String pageToken, core.String sortBy, core.String sortOrder, core.Map optParams}) {
    var url = "{project}/managedZones/{managedZone}/changes";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (managedZone == null) paramErrors.add("managedZone is required");
    if (managedZone != null) urlParams["managedZone"] = managedZone;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (sortBy != null && !["changeSequence"].contains(sortBy)) {
      paramErrors.add("Allowed values for sortBy: changeSequence");
    }
    if (sortBy != null) queryParams["sortBy"] = sortBy;
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ChangesListResponse.fromJson(data));
  }
}

class ManagedZonesResource_ {

  final Client _client;

  ManagedZonesResource_(Client client) :
      _client = client;

  /**
   * Create a new ManagedZone.
   *
   * [request] - ManagedZone to send in this request
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ManagedZone> create(ManagedZone request, core.String project, {core.Map optParams}) {
    var url = "{project}/managedZones";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ManagedZone.fromJson(data));
  }

  /**
   * Delete a previously created ManagedZone.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [managedZone] - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String project, core.String managedZone, {core.Map optParams}) {
    var url = "{project}/managedZones/{managedZone}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (managedZone == null) paramErrors.add("managedZone is required");
    if (managedZone != null) urlParams["managedZone"] = managedZone;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Fetch the representation of an existing ManagedZone.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [managedZone] - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ManagedZone> get(core.String project, core.String managedZone, {core.Map optParams}) {
    var url = "{project}/managedZones/{managedZone}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (managedZone == null) paramErrors.add("managedZone is required");
    if (managedZone != null) urlParams["managedZone"] = managedZone;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ManagedZone.fromJson(data));
  }

  /**
   * Enumerate ManagedZones that have been created but not yet deleted.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [maxResults] - Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
   *
   * [pageToken] - Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ManagedZonesListResponse> list(core.String project, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{project}/managedZones";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ManagedZonesListResponse.fromJson(data));
  }
}

class ProjectsResource_ {

  final Client _client;

  ProjectsResource_(Client client) :
      _client = client;

  /**
   * Fetch the representation of an existing Project.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Project> get(core.String project, {core.Map optParams}) {
    var url = "{project}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Project.fromJson(data));
  }
}

class ResourceRecordSetsResource_ {

  final Client _client;

  ResourceRecordSetsResource_(Client client) :
      _client = client;

  /**
   * Enumerate ResourceRecordSets that have been created but not yet deleted.
   *
   * [project] - Identifies the project addressed by this request.
   *
   * [managedZone] - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
   *
   * [maxResults] - Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
   *
   * [name] - Restricts the list to return only records with this fully qualified domain name.
   *
   * [pageToken] - Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
   *
   * [type] - Restricts the list to return only records of this type. If present, the "name" parameter must also be present.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ResourceRecordSetsListResponse> list(core.String project, core.String managedZone, {core.int maxResults, core.String name, core.String pageToken, core.String type, core.Map optParams}) {
    var url = "{project}/managedZones/{managedZone}/rrsets";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (managedZone == null) paramErrors.add("managedZone is required");
    if (managedZone != null) urlParams["managedZone"] = managedZone;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (name != null) queryParams["name"] = name;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (type != null) queryParams["type"] = type;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ResourceRecordSetsListResponse.fromJson(data));
  }
}

