part of dns_v1beta1_api;

/** An atomic update to a collection of ResourceRecordSets. */
class Change {

  /** Which ResourceRecordSets to add? */
  core.List<ResourceRecordSet> additions;

  /** Which ResourceRecordSets to remove? Must match existing data exactly. */
  core.List<ResourceRecordSet> deletions;

  /** Unique identifier for the resource; defined by the server (output only). */
  core.String id;

  /** Identifies what kind of resource this is. Value: the fixed string "dns#change". */
  core.String kind;

  /** The time that this operation was started by the server. This is in RFC3339 text format. */
  core.String startTime;

  /** Status of the operation. Can be one of the following: "PENDING" or "DONE" (output only). */
  core.String status;

  /** Create new Change from JSON data */
  Change.fromJson(core.Map json) {
    if (json.containsKey("additions")) {
      additions = json["additions"].map((additionsItem) => new ResourceRecordSet.fromJson(additionsItem)).toList();
    }
    if (json.containsKey("deletions")) {
      deletions = json["deletions"].map((deletionsItem) => new ResourceRecordSet.fromJson(deletionsItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Change */
  core.Map toJson() {
    var output = new core.Map();

    if (additions != null) {
      output["additions"] = additions.map((additionsItem) => additionsItem.toJson()).toList();
    }
    if (deletions != null) {
      output["deletions"] = deletions.map((deletionsItem) => deletionsItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Change */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response to a request to enumerate Changes to a ResourceRecordSets collection. */
class ChangesListResponse {

  /** The requested changes. */
  core.List<Change> changes;

  /** Type of resource. */
  core.String kind;

  /** The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token.

In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned will be an inconsistent view of the collection. There is no way to retrieve a "snapshot" of collections larger than the maximum page size. */
  core.String nextPageToken;

  /** Create new ChangesListResponse from JSON data */
  ChangesListResponse.fromJson(core.Map json) {
    if (json.containsKey("changes")) {
      changes = json["changes"].map((changesItem) => new Change.fromJson(changesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ChangesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (changes != null) {
      output["changes"] = changes.map((changesItem) => changesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ChangesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service. */
class ManagedZone {

  /** The time that this resource was created on the server. This is in RFC3339 text format. Output only. */
  core.String creationTime;

  /** A string to associate with this resource for the user's convenience. Has no effect on the managed zone's function. */
  core.String description;

  /** The DNS name of this managed zone, for instance "example.com.". */
  core.String dnsName;

  /** Unique identifier for the resource; defined by the server (output only) */
  core.String id;

  /** Identifies what kind of resource this is. Value: the fixed string "dns#managedZone". */
  core.String kind;

  /** User assigned name for this resource. Must be unique within the project. */
  core.String name;

  /** Delegate your managed_zone to these virtual name servers; defined by the server (output only) */
  core.List<core.String> nameServers;

  /** Create new ManagedZone from JSON data */
  ManagedZone.fromJson(core.Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("dnsName")) {
      dnsName = json["dnsName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("nameServers")) {
      nameServers = json["nameServers"].toList();
    }
  }

  /** Create JSON Object for ManagedZone */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (dnsName != null) {
      output["dnsName"] = dnsName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (nameServers != null) {
      output["nameServers"] = nameServers.toList();
    }

    return output;
  }

  /** Return String representation of ManagedZone */
  core.String toString() => JSON.encode(this.toJson());

}

class ManagedZonesListResponse {

  /** Type of resource. */
  core.String kind;

  /** The managed zone resources. */
  core.List<ManagedZone> managedZones;

  /** The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token.

In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned will be an inconsistent view of the collection. There is no way to retrieve a consistent snapshot of a collection larger than the maximum page size. */
  core.String nextPageToken;

  /** Create new ManagedZonesListResponse from JSON data */
  ManagedZonesListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("managedZones")) {
      managedZones = json["managedZones"].map((managedZonesItem) => new ManagedZone.fromJson(managedZonesItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ManagedZonesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (managedZones != null) {
      output["managedZones"] = managedZones.map((managedZonesItem) => managedZonesItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ManagedZonesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A project resource. The project is a top level container for resources including Cloud DNS ManagedZones. Projects can be created only in the APIs console. */
class Project {

  /** User assigned unique identifier for the resource (output only). */
  core.String id;

  /** Identifies what kind of resource this is. Value: the fixed string "dns#project". */
  core.String kind;

  /** Unique numeric identifier for the resource; defined by the server (output only). */
  core.String number;

  /** Quotas assigned to this project (output only). */
  Quota quota;

  /** Create new Project from JSON data */
  Project.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("number")) {
      number = json["number"];
    }
    if (json.containsKey("quota")) {
      quota = new Quota.fromJson(json["quota"]);
    }
  }

  /** Create JSON Object for Project */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (number != null) {
      output["number"] = number;
    }
    if (quota != null) {
      output["quota"] = quota.toJson();
    }

    return output;
  }

  /** Return String representation of Project */
  core.String toString() => JSON.encode(this.toJson());

}

/** Limits associated with a Project. */
class Quota {

  /** Identifies what kind of resource this is. Value: the fixed string "dns#quota". */
  core.String kind;

  /** Maximum allowed number of managed zones in the project. */
  core.int managedZones;

  /** Maximum allowed number of ResourceRecords per ResourceRecordSet. */
  core.int resourceRecordsPerRrset;

  /** Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest. */
  core.int rrsetAdditionsPerChange;

  /** Maximum allowed number of ResourceRecordSets to delete per ChangesCreateRequest. */
  core.int rrsetDeletionsPerChange;

  /** Maximum allowed number of ResourceRecordSets per zone in the project. */
  core.int rrsetsPerManagedZone;

  /** Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes. */
  core.int totalRrdataSizePerChange;

  /** Create new Quota from JSON data */
  Quota.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("managedZones")) {
      managedZones = json["managedZones"];
    }
    if (json.containsKey("resourceRecordsPerRrset")) {
      resourceRecordsPerRrset = json["resourceRecordsPerRrset"];
    }
    if (json.containsKey("rrsetAdditionsPerChange")) {
      rrsetAdditionsPerChange = json["rrsetAdditionsPerChange"];
    }
    if (json.containsKey("rrsetDeletionsPerChange")) {
      rrsetDeletionsPerChange = json["rrsetDeletionsPerChange"];
    }
    if (json.containsKey("rrsetsPerManagedZone")) {
      rrsetsPerManagedZone = json["rrsetsPerManagedZone"];
    }
    if (json.containsKey("totalRrdataSizePerChange")) {
      totalRrdataSizePerChange = json["totalRrdataSizePerChange"];
    }
  }

  /** Create JSON Object for Quota */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (managedZones != null) {
      output["managedZones"] = managedZones;
    }
    if (resourceRecordsPerRrset != null) {
      output["resourceRecordsPerRrset"] = resourceRecordsPerRrset;
    }
    if (rrsetAdditionsPerChange != null) {
      output["rrsetAdditionsPerChange"] = rrsetAdditionsPerChange;
    }
    if (rrsetDeletionsPerChange != null) {
      output["rrsetDeletionsPerChange"] = rrsetDeletionsPerChange;
    }
    if (rrsetsPerManagedZone != null) {
      output["rrsetsPerManagedZone"] = rrsetsPerManagedZone;
    }
    if (totalRrdataSizePerChange != null) {
      output["totalRrdataSizePerChange"] = totalRrdataSizePerChange;
    }

    return output;
  }

  /** Return String representation of Quota */
  core.String toString() => JSON.encode(this.toJson());

}

/** A unit of data that will be returned by the DNS servers. */
class ResourceRecordSet {

  /** Identifies what kind of resource this is. Value: the fixed string "dns#resourceRecordSet". */
  core.String kind;

  /** For example, www.example.com. */
  core.String name;

  /** As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) */
  core.List<core.String> rrdatas;

  /** Number of seconds that this ResourceRecordSet can be cached by resolvers. */
  core.int ttl;

  /** One of A, AAAA, SOA, MX, NS, TXT */
  core.String type;

  /** Create new ResourceRecordSet from JSON data */
  ResourceRecordSet.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("rrdatas")) {
      rrdatas = json["rrdatas"].toList();
    }
    if (json.containsKey("ttl")) {
      ttl = json["ttl"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ResourceRecordSet */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (rrdatas != null) {
      output["rrdatas"] = rrdatas.toList();
    }
    if (ttl != null) {
      output["ttl"] = ttl;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ResourceRecordSet */
  core.String toString() => JSON.encode(this.toJson());

}

class ResourceRecordSetsListResponse {

  /** Type of resource. */
  core.String kind;

  /** The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token.

In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned will be an inconsistent view of the collection. There is no way to retrieve a consistent snapshot of a collection larger than the maximum page size. */
  core.String nextPageToken;

  /** The resource record set resources. */
  core.List<ResourceRecordSet> rrsets;

  /** Create new ResourceRecordSetsListResponse from JSON data */
  ResourceRecordSetsListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("rrsets")) {
      rrsets = json["rrsets"].map((rrsetsItem) => new ResourceRecordSet.fromJson(rrsetsItem)).toList();
    }
  }

  /** Create JSON Object for ResourceRecordSetsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (rrsets != null) {
      output["rrsets"] = rrsets.map((rrsetsItem) => rrsetsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ResourceRecordSetsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
