//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateOrganizationRequestDto {
  /// Returns a new [CreateOrganizationRequestDto] instance.
  CreateOrganizationRequestDto({
    required this.domain,
    required this.organizationName,
    required this.organizationIDFileLink,
    required this.governmentIDFileLink,
  });

  String domain;

  String organizationName;

  String organizationIDFileLink;

  String governmentIDFileLink;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateOrganizationRequestDto &&
    other.domain == domain &&
    other.organizationName == organizationName &&
    other.organizationIDFileLink == organizationIDFileLink &&
    other.governmentIDFileLink == governmentIDFileLink;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (organizationName.hashCode) +
    (organizationIDFileLink.hashCode) +
    (governmentIDFileLink.hashCode);

  @override
  String toString() => 'CreateOrganizationRequestDto[domain=$domain, organizationName=$organizationName, organizationIDFileLink=$organizationIDFileLink, governmentIDFileLink=$governmentIDFileLink]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'organizationName'] = this.organizationName;
      json[r'organizationIDFileLink'] = this.organizationIDFileLink;
      json[r'governmentIDFileLink'] = this.governmentIDFileLink;
    return json;
  }

  /// Returns a new [CreateOrganizationRequestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOrganizationRequestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateOrganizationRequestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateOrganizationRequestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateOrganizationRequestDto(
        domain: mapValueOfType<String>(json, r'domain')!,
        organizationName: mapValueOfType<String>(json, r'organizationName')!,
        organizationIDFileLink: mapValueOfType<String>(json, r'organizationIDFileLink')!,
        governmentIDFileLink: mapValueOfType<String>(json, r'governmentIDFileLink')!,
      );
    }
    return null;
  }

  static List<CreateOrganizationRequestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrganizationRequestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrganizationRequestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateOrganizationRequestDto> mapFromJson(dynamic json) {
    final map = <String, CreateOrganizationRequestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateOrganizationRequestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateOrganizationRequestDto-objects as value to a dart map
  static Map<String, List<CreateOrganizationRequestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateOrganizationRequestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateOrganizationRequestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'organizationName',
    'organizationIDFileLink',
    'governmentIDFileLink',
  };
}

