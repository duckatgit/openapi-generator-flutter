//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateOrchestratorDto {
  /// Returns a new [UpdateOrchestratorDto] instance.
  UpdateOrchestratorDto({
    this.label,
    required this.ip,
    required this.port,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  String ip;

  num port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateOrchestratorDto &&
    other.label == label &&
    other.ip == ip &&
    other.port == port;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label == null ? 0 : label!.hashCode) +
    (ip.hashCode) +
    (port.hashCode);

  @override
  String toString() => 'UpdateOrchestratorDto[label=$label, ip=$ip, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
      json[r'ip'] = this.ip;
      json[r'port'] = this.port;
    return json;
  }

  /// Returns a new [UpdateOrchestratorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateOrchestratorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateOrchestratorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateOrchestratorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateOrchestratorDto(
        label: mapValueOfType<String>(json, r'label'),
        ip: mapValueOfType<String>(json, r'ip')!,
        port: num.parse('${json[r'port']}'),
      );
    }
    return null;
  }

  static List<UpdateOrchestratorDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateOrchestratorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateOrchestratorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateOrchestratorDto> mapFromJson(dynamic json) {
    final map = <String, UpdateOrchestratorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateOrchestratorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateOrchestratorDto-objects as value to a dart map
  static Map<String, List<UpdateOrchestratorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateOrchestratorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateOrchestratorDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ip',
    'port',
  };
}

