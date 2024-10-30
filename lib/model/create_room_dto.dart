//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateRoomDto {
  /// Returns a new [CreateRoomDto] instance.
  CreateRoomDto({
    required this.label,
    required this.description,
  });

  String label;

  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRoomDto &&
    other.label == label &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (description.hashCode);

  @override
  String toString() => 'CreateRoomDto[label=$label, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'description'] = this.description;
    return json;
  }

  /// Returns a new [CreateRoomDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRoomDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateRoomDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateRoomDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateRoomDto(
        label: mapValueOfType<String>(json, r'label')!,
        description: mapValueOfType<String>(json, r'description')!,
      );
    }
    return null;
  }

  static List<CreateRoomDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRoomDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRoomDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRoomDto> mapFromJson(dynamic json) {
    final map = <String, CreateRoomDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRoomDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRoomDto-objects as value to a dart map
  static Map<String, List<CreateRoomDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRoomDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRoomDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'description',
  };
}

