//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/v1/cert' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateCertDto] createCertDto (required):
  Future<Response> certControllerCreateWithHttpInfo(CreateCertDto createCertDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/cert';

    // ignore: prefer_final_locals
    Object? postBody = createCertDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [CreateCertDto] createCertDto (required):
  Future<void> certControllerCreate(CreateCertDto createCertDto,) async {
    final response = await certControllerCreateWithHttpInfo(createCertDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [CreateDeviceDto] createDeviceDto (required):
  Future<Response> deviceControllerCreateWithHttpInfo(String organizationId, String orchestratorId, CreateDeviceDto createDeviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody = createDeviceDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [CreateDeviceDto] createDeviceDto (required):
  Future<void> deviceControllerCreate(String organizationId, String orchestratorId, CreateDeviceDto createDeviceDto,) async {
    final response = await deviceControllerCreateWithHttpInfo(organizationId, orchestratorId, createDeviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/signed' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [String] roomId (required):
  Future<Response> deviceControllerCreatedSignedRegistrationUrlWithHttpInfo(String organizationId, String orchestratorId, String deviceId, String roomId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/signed'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'deviceId', deviceId));
      queryParams.addAll(_queryParams('', 'roomId', roomId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] deviceId (required):
  ///
  /// * [String] roomId (required):
  Future<void> deviceControllerCreatedSignedRegistrationUrl(String organizationId, String orchestratorId, String deviceId, String roomId,) async {
    final response = await deviceControllerCreatedSignedRegistrationUrlWithHttpInfo(organizationId, orchestratorId, deviceId, roomId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] id (required):
  Future<Response> deviceControllerFindOneWithHttpInfo(String organizationId, String orchestratorId, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/{id}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] id (required):
  Future<void> deviceControllerFindOne(String organizationId, String orchestratorId, String id,) async {
    final response = await deviceControllerFindOneWithHttpInfo(organizationId, orchestratorId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] id (required):
  Future<Response> deviceControllerRemoveWithHttpInfo(String organizationId, String orchestratorId, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/{id}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] id (required):
  Future<void> deviceControllerRemove(String organizationId, String orchestratorId, String id,) async {
    final response = await deviceControllerRemoveWithHttpInfo(organizationId, orchestratorId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateDeviceDto] updateDeviceDto (required):
  Future<Response> deviceControllerUpdateWithHttpInfo(String organizationId, String orchestratorId, String id, UpdateDeviceDto updateDeviceDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/device/{id}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateDeviceDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateDeviceDto] updateDeviceDto (required):
  Future<void> deviceControllerUpdate(String organizationId, String orchestratorId, String id, UpdateDeviceDto updateDeviceDto,) async {
    final response = await deviceControllerUpdateWithHttpInfo(organizationId, orchestratorId, id, updateDeviceDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/organization/{organizationId}/orchestrator' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [CreateOrchestratorDto] createOrchestratorDto (required):
  Future<Response> orchestratorControllerAddOrchestratorWithHttpInfo(String organizationId, CreateOrchestratorDto createOrchestratorDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator'
      .replaceAll('{organizationId}', organizationId);

    // ignore: prefer_final_locals
    Object? postBody = createOrchestratorDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [CreateOrchestratorDto] createOrchestratorDto (required):
  Future<void> orchestratorControllerAddOrchestrator(String organizationId, CreateOrchestratorDto createOrchestratorDto,) async {
    final response = await orchestratorControllerAddOrchestratorWithHttpInfo(organizationId, createOrchestratorDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<Response> orchestratorControllerDeleteWithHttpInfo(String organizationId, String orchestratorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<void> orchestratorControllerDelete(String organizationId, String orchestratorId,) async {
    final response = await orchestratorControllerDeleteWithHttpInfo(organizationId, orchestratorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<Response> orchestratorControllerFetchOrchestratorByIdWithHttpInfo(String organizationId, String orchestratorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<void> orchestratorControllerFetchOrchestratorById(String organizationId, String orchestratorId,) async {
    final response = await orchestratorControllerFetchOrchestratorByIdWithHttpInfo(organizationId, orchestratorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/config' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<Response> orchestratorControllerFetchOrchestratorConfigWithHttpInfo(String organizationId, String orchestratorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/config'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<void> orchestratorControllerFetchOrchestratorConfig(String organizationId, String orchestratorId,) async {
    final response = await orchestratorControllerFetchOrchestratorConfigWithHttpInfo(organizationId, orchestratorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/role' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<Response> orchestratorControllerFetchRoleForOrchestratorWithHttpInfo(String organizationId, String orchestratorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/role'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<void> orchestratorControllerFetchRoleForOrchestrator(String organizationId, String orchestratorId,) async {
    final response = await orchestratorControllerFetchRoleForOrchestratorWithHttpInfo(organizationId, orchestratorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] status:
  Future<Response> orchestratorControllerFindOchestratorsByOrgWithHttpInfo(String organizationId, { String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator'
      .replaceAll('{organizationId}', organizationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] status:
  Future<void> orchestratorControllerFindOchestratorsByOrg(String organizationId, { String? status, }) async {
    final response = await orchestratorControllerFindOchestratorsByOrgWithHttpInfo(organizationId,  status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [UpdateOrchestratorDto] updateOrchestratorDto (required):
  Future<Response> orchestratorControllerUpdateWithHttpInfo(String organizationId, String orchestratorId, UpdateOrchestratorDto updateOrchestratorDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody = updateOrchestratorDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [UpdateOrchestratorDto] updateOrchestratorDto (required):
  Future<void> orchestratorControllerUpdate(String organizationId, String orchestratorId, UpdateOrchestratorDto updateOrchestratorDto,) async {
    final response = await orchestratorControllerUpdateWithHttpInfo(organizationId, orchestratorId, updateOrchestratorDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/license/verify' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [OrchestratorVerifyLicenseDto] orchestratorVerifyLicenseDto (required):
  Future<Response> orchestratorLicenseControllerVerifyWithHttpInfo(String organizationId, String orchestratorId, OrchestratorVerifyLicenseDto orchestratorVerifyLicenseDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/license/verify'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody = orchestratorVerifyLicenseDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [OrchestratorVerifyLicenseDto] orchestratorVerifyLicenseDto (required):
  Future<void> orchestratorLicenseControllerVerify(String organizationId, String orchestratorId, OrchestratorVerifyLicenseDto orchestratorVerifyLicenseDto,) async {
    final response = await orchestratorLicenseControllerVerifyWithHttpInfo(organizationId, orchestratorId, orchestratorVerifyLicenseDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/organization/{organizationId}/user' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [Object] body (required):
  Future<Response> organizationControllerAddUserToOrganizationWithHttpInfo(String organizationId, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/user'
      .replaceAll('{organizationId}', organizationId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [Object] body (required):
  Future<void> organizationControllerAddUserToOrganization(String organizationId, Object body,) async {
    final response = await organizationControllerAddUserToOrganizationWithHttpInfo(organizationId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /api/v1/organization/{organizationId}/user/{userId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [Object] body (required):
  Future<Response> organizationControllerEditUserInOrganizationWithHttpInfo(String organizationId, String userId, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/user/{userId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userId (required):
  ///
  /// * [Object] body (required):
  Future<void> organizationControllerEditUserInOrganization(String organizationId, String userId, Object body,) async {
    final response = await organizationControllerEditUserInOrganizationWithHttpInfo(organizationId, userId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> organizationControllerFindByIdWithHttpInfo(String organizationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}'
      .replaceAll('{organizationId}', organizationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<void> organizationControllerFindById(String organizationId,) async {
    final response = await organizationControllerFindByIdWithHttpInfo(organizationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/organization' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateOrganizationRequestDto] createOrganizationRequestDto (required):
  Future<Response> organizationControllerRegisterWithHttpInfo(CreateOrganizationRequestDto createOrganizationRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization';

    // ignore: prefer_final_locals
    Object? postBody = createOrganizationRequestDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{
      "Authorization": "Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImU2YWMzNTcyNzY3ZGUyNjE0ZmM1MTA4NjMzMDg3YTQ5MjMzMDNkM2IiLCJ0eXAiOiJKV1QifQ.eyJvcmdhbml6YXRpb25zIjpbeyJyb2xlIjoiU3VwZXIgQWRtaW4iLCJyZWYiOiJqMUlneVFwdUZaR09Yb2U0bmFzRyJ9LHsicm9sZSI6IlN1cGVyIEFkbWluIiwicmVmIjoiR0Mza2tRWnlTeDFzcHA0YTNNV0IifSx7InJvbGUiOiJTdXBlciBBZG1pbiIsInJlZiI6Iko2TzM3Sm14NEdwMWZyNXJXdnUxIn0seyJyb2xlIjoiU3VwZXIgQWRtaW4iLCJyZWYiOiJBdjdSdzdDZlh3Y0NubVBlYkFTayJ9LHsicm9sZSI6IlN1cGVyIEFkbWluIiwicmVmIjoiOVFIV2JPMUNmTkgwSnF4NFVIRFYifV0sImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9wbGF0Zm9ybS1oZWFsdGhjYXJlLTQxMTExNCIsImF1ZCI6InBsYXRmb3JtLWhlYWx0aGNhcmUtNDExMTE0IiwiYXV0aF90aW1lIjoxNzMwMjMxNzQyLCJ1c2VyX2lkIjoiZ09TTktkNmo2cE8yaDc5ZlBYZW9TYnQ1WUMwMyIsInN1YiI6ImdPU05LZDZqNnBPMmg3OWZQWGVvU2J0NVlDMDMiLCJpYXQiOjE3MzAyNzMzMDUsImV4cCI6MTczMDI3NjkwNSwiZW1haWwiOiJhbXIxMzEzbWtAeW9wbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyJhbXIxMzEzbWtAeW9wbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCIsInNpZ25faW5fc2Vjb25kX2ZhY3RvciI6InRvdHAiLCJzZWNvbmRfZmFjdG9yX2lkZW50aWZpZXIiOiI4MmU1NjliNy1lZmM2LTRkOGYtYmI2Mi1hZTM1YmQ3OGU1OGUifX0.f0FNmFKqCFFPhHt5PyNRo0wnp5HgO3FYdPh_-aYjUkHnAuv136-uXxWcYjcNqNyNy-JTiedKGRDBkv8w-5TJsA2pbuUEMN78oeHxTtyqPB0Ldh-CWGRoqRjxHKM4K4JguI_G3XFk1szyHGnThggtEtHhBOlbbdb_465CL1KkmkudxS2rqenUO49Vq87K8fy3-uyLMVQXs-F6G6e4iDCFHfnpfx6pB1BmZhgDE9uPysG5mGD6qDfwhyS-GRphD1ElTCTPUbgxNaqImaRf7G580QOLLiDyDz4pQp2cj7aKhF766owzI8dMpSDtjFc9A2hkNPXKP5RqbcSUra4TEbSI8g"
    };
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    log("header params: $headerParams");
    log("query params: $queryParams");
    log("form params: $formParams");

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [CreateOrganizationRequestDto] createOrganizationRequestDto (required):
  Future<void> organizationControllerRegister(CreateOrganizationRequestDto createOrganizationRequestDto,) async {
    final response = await organizationControllerRegisterWithHttpInfo(createOrganizationRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/organization/{organizationId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> organizationControllerRemoveOrganizationWithHttpInfo(String organizationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}'
      .replaceAll('{organizationId}', organizationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<void> organizationControllerRemoveOrganization(String organizationId,) async {
    final response = await organizationControllerRemoveOrganizationWithHttpInfo(organizationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/organization/{organizationId}/user/{userId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userId (required):
  Future<Response> organizationControllerRemoveUserFromOrganizationWithHttpInfo(String organizationId, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/user/{userId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] userId (required):
  Future<void> organizationControllerRemoveUserFromOrganization(String organizationId, String userId,) async {
    final response = await organizationControllerRemoveUserFromOrganizationWithHttpInfo(organizationId, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/v1/organization/{organizationId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [UpdateOrganizationRequestDto] updateOrganizationRequestDto (required):
  Future<Response> organizationControllerUpdateOrganizationWithHttpInfo(String organizationId, UpdateOrganizationRequestDto updateOrganizationRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}'
      .replaceAll('{organizationId}', organizationId);

    // ignore: prefer_final_locals
    Object? postBody = updateOrganizationRequestDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [UpdateOrganizationRequestDto] updateOrganizationRequestDto (required):
  Future<void> organizationControllerUpdateOrganization(String organizationId, UpdateOrganizationRequestDto updateOrganizationRequestDto,) async {
    final response = await organizationControllerUpdateOrganizationWithHttpInfo(organizationId, updateOrganizationRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [CreateRoomDto] createRoomDto (required):
  Future<Response> roomControllerCreateWithHttpInfo(String organizationId, String orchestratorId, CreateRoomDto createRoomDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody = createRoomDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [CreateRoomDto] createRoomDto (required):
  Future<void> roomControllerCreate(String organizationId, String orchestratorId, CreateRoomDto createRoomDto,) async {
    final response = await roomControllerCreateWithHttpInfo(organizationId, orchestratorId, createRoomDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}/devices' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  Future<Response> roomControllerFetchDevicesByRoomWithHttpInfo(String organizationId, String orchestratorId, String roomId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}/devices'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{roomId}', roomId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  Future<void> roomControllerFetchDevicesByRoom(String organizationId, String orchestratorId, String roomId,) async {
    final response = await roomControllerFetchDevicesByRoomWithHttpInfo(organizationId, orchestratorId, roomId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<Response> roomControllerFindAllWithHttpInfo(String organizationId, String orchestratorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  Future<void> roomControllerFindAll(String organizationId, String orchestratorId,) async {
    final response = await roomControllerFindAllWithHttpInfo(organizationId, orchestratorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  Future<Response> roomControllerFindOneWithHttpInfo(String organizationId, String orchestratorId, String roomId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{roomId}', roomId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  Future<void> roomControllerFindOne(String organizationId, String orchestratorId, String roomId,) async {
    final response = await roomControllerFindOneWithHttpInfo(organizationId, orchestratorId, roomId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  Future<Response> roomControllerRemoveWithHttpInfo(String organizationId, String orchestratorId, String roomId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{roomId}', roomId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  Future<void> roomControllerRemove(String organizationId, String orchestratorId, String roomId,) async {
    final response = await roomControllerRemoveWithHttpInfo(organizationId, orchestratorId, roomId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  ///
  /// * [Object] body (required):
  Future<Response> roomControllerUpdateWithHttpInfo(String organizationId, String orchestratorId, String roomId, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/organization/{organizationId}/orchestrator/{orchestratorId}/room/{roomId}'
      .replaceAll('{organizationId}', organizationId)
      .replaceAll('{orchestratorId}', orchestratorId)
      .replaceAll('{roomId}', roomId);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] orchestratorId (required):
  ///
  /// * [String] roomId (required):
  ///
  /// * [Object] body (required):
  Future<void> roomControllerUpdate(String organizationId, String orchestratorId, String roomId, Object body,) async {
    final response = await roomControllerUpdateWithHttpInfo(organizationId, orchestratorId, roomId, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/user/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> userControllerFindByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> userControllerFindById(String id,) async {
    final response = await userControllerFindByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/user/organizations' operation and returns the [Response].
  Future<Response> userControllerGetOrganizationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/organizations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<void> userControllerGetOrganizations() async {
    final response = await userControllerGetOrganizationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/v1/user/updateClaims' operation and returns the [Response].
  Future<Response> userControllerUpdateClaimsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/updateClaims';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<void> userControllerUpdateClaims() async {
    final response = await userControllerUpdateClaimsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/v1/user/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Object] body (required):
  Future<Response> userControllerUpdateUserWithHttpInfo(String id, Object body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Object] body (required):
  Future<void> userControllerUpdateUser(String id, Object body,) async {
    final response = await userControllerUpdateUserWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
