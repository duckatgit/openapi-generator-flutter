//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDeviceDto {
  /// Returns a new [CreateDeviceDto] instance.
  CreateDeviceDto({
    required this.deviceId,
    required this.key,
    required this.roomId,
    required this.label,
  });

  String deviceId;

  String key;

  String roomId;

  String label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDeviceDto &&
    other.deviceId == deviceId &&
    other.key == key &&
    other.roomId == roomId &&
    other.label == label;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceId.hashCode) +
    (key.hashCode) +
    (roomId.hashCode) +
    (label.hashCode);

  @override
  String toString() => 'CreateDeviceDto[deviceId=$deviceId, key=$key, roomId=$roomId, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deviceId'] = this.deviceId;
      json[r'key'] = this.key;
      json[r'roomId'] = this.roomId;
      json[r'label'] = this.label;
    return json;
  }

  /// Returns a new [CreateDeviceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDeviceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDeviceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDeviceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDeviceDto(
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        key: mapValueOfType<String>(json, r'key')!,
        roomId: mapValueOfType<String>(json, r'roomId')!,
        label: mapValueOfType<String>(json, r'label')!,
      );
    }
    return null;
  }

  static List<CreateDeviceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDeviceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDeviceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDeviceDto> mapFromJson(dynamic json) {
    final map = <String, CreateDeviceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDeviceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDeviceDto-objects as value to a dart map
  static Map<String, List<CreateDeviceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDeviceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDeviceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deviceId',
    'key',
    'roomId',
    'label',
  };
}

