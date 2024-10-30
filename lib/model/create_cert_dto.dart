//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateCertDto {
  /// Returns a new [CreateCertDto] instance.
  CreateCertDto({
    required this.domain,
  });

  String domain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCertDto &&
    other.domain == domain;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode);

  @override
  String toString() => 'CreateCertDto[domain=$domain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    return json;
  }

  /// Returns a new [CreateCertDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCertDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCertDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCertDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCertDto(
        domain: mapValueOfType<String>(json, r'domain')!,
      );
    }
    return null;
  }

  static List<CreateCertDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCertDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCertDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCertDto> mapFromJson(dynamic json) {
    final map = <String, CreateCertDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCertDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCertDto-objects as value to a dart map
  static Map<String, List<CreateCertDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCertDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCertDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

