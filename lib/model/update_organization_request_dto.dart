//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateOrganizationRequestDto {
  /// Returns a new [UpdateOrganizationRequestDto] instance.
  UpdateOrganizationRequestDto({
    this.domain,
    this.organizationName,
    this.organizationIDFileLink,
    this.governmentIDFileLink,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationIDFileLink;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? governmentIDFileLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateOrganizationRequestDto &&
    other.domain == domain &&
    other.organizationName == organizationName &&
    other.organizationIDFileLink == organizationIDFileLink &&
    other.governmentIDFileLink == governmentIDFileLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (organizationName == null ? 0 : organizationName!.hashCode) +
    (organizationIDFileLink == null ? 0 : organizationIDFileLink!.hashCode) +
    (governmentIDFileLink == null ? 0 : governmentIDFileLink!.hashCode);

  @override
  String toString() => 'UpdateOrganizationRequestDto[domain=$domain, organizationName=$organizationName, organizationIDFileLink=$organizationIDFileLink, governmentIDFileLink=$governmentIDFileLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.organizationName != null) {
      json[r'organizationName'] = this.organizationName;
    } else {
      json[r'organizationName'] = null;
    }
    if (this.organizationIDFileLink != null) {
      json[r'organizationIDFileLink'] = this.organizationIDFileLink;
    } else {
      json[r'organizationIDFileLink'] = null;
    }
    if (this.governmentIDFileLink != null) {
      json[r'governmentIDFileLink'] = this.governmentIDFileLink;
    } else {
      json[r'governmentIDFileLink'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateOrganizationRequestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateOrganizationRequestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateOrganizationRequestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateOrganizationRequestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateOrganizationRequestDto(
        domain: mapValueOfType<String>(json, r'domain'),
        organizationName: mapValueOfType<String>(json, r'organizationName'),
        organizationIDFileLink: mapValueOfType<String>(json, r'organizationIDFileLink'),
        governmentIDFileLink: mapValueOfType<String>(json, r'governmentIDFileLink'),
      );
    }
    return null;
  }

  static List<UpdateOrganizationRequestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateOrganizationRequestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateOrganizationRequestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateOrganizationRequestDto> mapFromJson(dynamic json) {
    final map = <String, UpdateOrganizationRequestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateOrganizationRequestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateOrganizationRequestDto-objects as value to a dart map
  static Map<String, List<UpdateOrganizationRequestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateOrganizationRequestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateOrganizationRequestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

