// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_initializing_formals

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:meta/meta.dart' as _i3;
import 'package:openapi_base/openapi_base.dart' as _i2;
part 'oeamtc_user.openapi.g.dart';

///
@_i1.JsonSerializable()
class Trip {
  Trip();

  factory Trip.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$TripToJson(this);
}

/// Address representation
@_i1.JsonSerializable()
class TripBaseStopsAddress {
  TripBaseStopsAddress(
      {this.moniker,
      this.streetLine,
      this.locality,
      this.areaCode,
      this.stateRegion,
      this.country});

  factory TripBaseStopsAddress.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripBaseStopsAddressFromJson(jsonMap);

  /// Moniker
  final String moniker;

  /// Street line 1
  final String streetLine;

  /// Suburb or locality
  final String locality;

  /// Area code
  final String areaCode;

  /// State or region
  final String stateRegion;

  /// Country
  final String country;

  Map<String, dynamic> toJson() => _$TripBaseStopsAddressToJson(this);
}

/// Geo-location representation
@_i1.JsonSerializable()
class TripBaseStopsLocation {
  TripBaseStopsLocation({this.latitude, this.longitude});

  factory TripBaseStopsLocation.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripBaseStopsLocationFromJson(jsonMap);

  /// Latitude of the location
  final num latitude;

  /// Longitude of the location
  final num longitude;

  Map<String, dynamic> toJson() => _$TripBaseStopsLocationToJson(this);
}

/// Information regarding a trip intermediate stop. At least one of address or location required on creation
@_i1.JsonSerializable()
class TripBaseStops {
  TripBaseStops({this.address, this.location});

  factory TripBaseStops.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripBaseStopsFromJson(jsonMap);

  /// Address representation
  final TripBaseStopsAddress address;

  /// Geo-location representation
  final TripBaseStopsLocation location;

  Map<String, dynamic> toJson() => _$TripBaseStopsToJson(this);
}

/// trip multiple scores
@_i1.JsonSerializable()
class TripBaseExtraDataSmartConnectDataScore {
  TripBaseExtraDataSmartConnectDataScore(
      {this.idlingScore,
      this.speedingScore,
      this.brakingScore,
      this.accelerationScore,
      this.totalEcoScore});

  factory TripBaseExtraDataSmartConnectDataScore.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$TripBaseExtraDataSmartConnectDataScoreFromJson(jsonMap);

  /// Calculated score for idling based on the idling histogram
  final int idlingScore;

  /// Calculated score for speeding based on the speed histogram
  final int speedingScore;

  /// Calculated score for deceleration based on the braking histogram
  final int brakingScore;

  /// Calculated core for acceleration based on the acceleration histogram
  final int accelerationScore;

  /// Calculated score that represents the degree of eco-friendly driving behaviour of the driver based on idlingScore, speedingScore, brakingScore, and accelarationScore
  final int totalEcoScore;

  Map<String, dynamic> toJson() =>
      _$TripBaseExtraDataSmartConnectDataScoreToJson(this);
}

/// Smart connect related extra data
@_i1.JsonSerializable()
class TripBaseExtraDataSmartConnectData {
  TripBaseExtraDataSmartConnectData(
      {this.tshTripUuid,
      this.tshDriverUuid,
      this.tshVehicleUuid,
      this.averageSpeed,
      this.maximumSpeed,
      this.averageRpm,
      this.maximumRpm,
      this.fuelConsumption,
      this.startFuelLevel,
      this.endFuelLevel,
      this.emissions,
      this.score});

  factory TripBaseExtraDataSmartConnectData.fromJson(
          Map<String, dynamic> jsonMap) =>
      _$TripBaseExtraDataSmartConnectDataFromJson(jsonMap);

  /// Tsh trip unique identifier
  final String tshTripUuid;

  /// Tsh driver unique identifier
  final String tshDriverUuid;

  /// Tsh vehicle unique identifier
  final String tshVehicleUuid;

  /// trip average speed in km/h
  final num averageSpeed;

  /// trip maximum speed in km/h
  final num maximumSpeed;

  /// trip average rpm
  final num averageRpm;

  /// trip maximum rpm
  final num maximumRpm;

  /// total trip fuel consumption
  final num fuelConsumption;

  /// trip fuel level at the start of the trip
  final num startFuelLevel;

  /// trip fuel level at the end of the trip
  final num endFuelLevel;

  /// trip CO2 emissions
  final num emissions;

  /// trip multiple scores
  final TripBaseExtraDataSmartConnectDataScore score;

  Map<String, dynamic> toJson() =>
      _$TripBaseExtraDataSmartConnectDataToJson(this);
}

///
@_i1.JsonSerializable()
class TripBaseExtraDataFslData {
  TripBaseExtraDataFslData(
      {this.signaturePilot,
      this.signatureCoPilot,
      this.roadCondition,
      this.routeSummary,
      this.licensePlate});

  factory TripBaseExtraDataFslData.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripBaseExtraDataFslDataFromJson(jsonMap);

  /// Signature of the pilot confirming the trip data, e.g. the student signature during L license trips, syntax: a data url with base64 coded PNG: "data:image/png;base64..."
  final String signaturePilot;

  /// Signature of co-pilot confirming the trip data, e.g. the parent signature during L license trips. syntax: see signaturePilot.
  final String signatureCoPilot;

  /// A summary of the road condition of this trip, e.g. wet.
  final String roadCondition;

  /// Summary of the route, useful when startInfo and endInfo is not given. e.g. Wien Graz.
  final String routeSummary;

  /// The license plate number of the used vehicle, useful when no vehicleid is given, e.g. W-123, no syntax, free format.
  final String licensePlate;

  Map<String, dynamic> toJson() => _$TripBaseExtraDataFslDataToJson(this);
}

/// Extra flexible data supplied by apps dependent on this api
@_i1.JsonSerializable()
class TripBaseExtraData {
  TripBaseExtraData({this.smartConnectData, this.fslData});

  factory TripBaseExtraData.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripBaseExtraDataFromJson(jsonMap);

  /// Smart connect related extra data
  final TripBaseExtraDataSmartConnectData smartConnectData;

  /// null
  final TripBaseExtraDataFslData fslData;

  Map<String, dynamic> toJson() => _$TripBaseExtraDataToJson(this);
}

/// OEAMTC Trip representation which can be read and modified
@_i1.JsonSerializable()
class TripBase {
  TripBase(
      {this.vehicleId,
      this.stops,
      this.note,
      this.routeGeometry,
      this.source,
      this.fsl,
      this.work,
      this.extraData});

  factory TripBase.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripBaseFromJson(jsonMap);

  /// OEAMTC KFZ Vehicle Id
  final int vehicleId;

  /// null
  final List<TripBaseStops> stops;

  /// Note for a trip, for example: Pick up kids from soccer
  final String note;

  /// Trip route geometry (polyline). If creating trip and polyline is null, polyline will be calculated
  final String routeGeometry;

  /// Source app where the trip was created
  final String source;

  /// Trip is a fsl (fahrschule) trip
  final bool fsl;

  /// Trip is a work trip
  final bool work;

  /// Extra flexible data supplied by apps dependent on this api
  final TripBaseExtraData extraData;

  Map<String, dynamic> toJson() => _$TripBaseToJson(this);
}

/// OEAMTC Trip representation which can be modified
@_i1.JsonSerializable()
class TripMutation {
  TripMutation();

  factory TripMutation.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripMutationFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$TripMutationToJson(this);
}

/// Single change of a trip
@_i1.JsonSerializable()
class TripChange {
  TripChange({this.date, this.doneBy, this.descriptions});

  factory TripChange.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripChangeFromJson(jsonMap);

  /// the date and time the change occured
  final String date;

  /// who the change had been done by e.g. Smart Connect or the user
  final String doneBy;

  /// the date and time the change occured
  final List<String> descriptions;

  Map<String, dynamic> toJson() => _$TripChangeToJson(this);
}

/// Pilot representation
@_i1.JsonSerializable()
class Pilot {
  Pilot();

  factory Pilot.fromJson(Map<String, dynamic> jsonMap) =>
      _$PilotFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$PilotToJson(this);
}

/// Pilot mutation properties representation
@_i1.JsonSerializable()
class PilotMutation {
  PilotMutation({this.firstname, this.lastname, this.initial, this.color});

  factory PilotMutation.fromJson(Map<String, dynamic> jsonMap) =>
      _$PilotMutationFromJson(jsonMap);

  /// First name of the pilot
  final String firstname;

  /// Last name of the pilot
  final String lastname;

  /// Initial of the pilot - default: first letter of firstname
  final String initial;

  /// RGB hex pilot color, including leading #
  final String color;

  Map<String, dynamic> toJson() => _$PilotMutationToJson(this);
}

/// Tag representation. They act as a category for a trip
@_i1.JsonSerializable()
class Tag {
  Tag();

  factory Tag.fromJson(Map<String, dynamic> jsonMap) => _$TagFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}

/// Tag mutation properties representation
@_i1.JsonSerializable()
class TagMutation {
  TagMutation({this.name, this.color, this.iconName});

  factory TagMutation.fromJson(Map<String, dynamic> jsonMap) =>
      _$TagMutationFromJson(jsonMap);

  /// The user assigned tag name
  final String name;

  /// RGB hex tag color, including leading #
  final String color;

  /// null
  final String iconName;

  Map<String, dynamic> toJson() => _$TagMutationToJson(this);
}

/// Zone representation. Trips start or end at particular, user defined zones.
@_i1.JsonSerializable()
class Zone {
  Zone();

  factory Zone.fromJson(Map<String, dynamic> jsonMap) =>
      _$ZoneFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$ZoneToJson(this);
}

/// Zone mutation properties representation
@_i1.JsonSerializable()
class ZoneMutation {
  ZoneMutation({this.name, this.latitude, this.longitude, this.radius});

  factory ZoneMutation.fromJson(Map<String, dynamic> jsonMap) =>
      _$ZoneMutationFromJson(jsonMap);

  /// Zone name
  final String name;

  /// Latitude of the location
  final num latitude;

  /// Longitude of the location
  final num longitude;

  /// Radius around the cooridnates of the UserPOI
  final num radius;

  Map<String, dynamic> toJson() => _$ZoneMutationToJson(this);
}

/// Trip log representation. Shows whether a trip log is archived or not.
@_i1.JsonSerializable()
class TripLog {
  TripLog({this.vehicleId, this.archived});

  factory TripLog.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripLogFromJson(jsonMap);

  /// OEAMTC KFZ Vehicle Id which this log corresponds to
  final int vehicleId;

  /// True if this log is archived and therefore unmodifiable, false otherwise
  final bool archived;

  Map<String, dynamic> toJson() => _$TripLogToJson(this);
}

/// Trip info regarding start or end of trip such as address, timestamp, etc.
@_i1.JsonSerializable()
class TripInfo {
  TripInfo();

  factory TripInfo.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripInfoFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$TripInfoToJson(this);
}

/// Address representation
@_i1.JsonSerializable()
class TripInfoMutationAddress {
  TripInfoMutationAddress(
      {this.moniker,
      this.streetLine,
      this.locality,
      this.areaCode,
      this.stateRegion,
      this.country});

  factory TripInfoMutationAddress.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripInfoMutationAddressFromJson(jsonMap);

  /// Moniker
  final String moniker;

  /// Street line 1
  final String streetLine;

  /// Suburb or locality
  final String locality;

  /// Area code
  final String areaCode;

  /// State or region
  final String stateRegion;

  /// Country
  final String country;

  Map<String, dynamic> toJson() => _$TripInfoMutationAddressToJson(this);
}

/// Geo-location representation
@_i1.JsonSerializable()
class TripInfoMutationLocation {
  TripInfoMutationLocation({this.latitude, this.longitude});

  factory TripInfoMutationLocation.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripInfoMutationLocationFromJson(jsonMap);

  /// Latitude of the location
  final num latitude;

  /// Longitude of the location
  final num longitude;

  Map<String, dynamic> toJson() => _$TripInfoMutationLocationToJson(this);
}

/// Trip info which can be modified
@_i1.JsonSerializable()
class TripInfoMutation {
  TripInfoMutation(
      {this.timestamp, this.address, this.location, this.odometer});

  factory TripInfoMutation.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripInfoMutationFromJson(jsonMap);

  /// Timestamp of trip
  final String timestamp;

  /// Address representation
  final TripInfoMutationAddress address;

  /// Geo-location representation
  final TripInfoMutationLocation location;

  /// Odometer reading in metres
  final int odometer;

  Map<String, dynamic> toJson() => _$TripInfoMutationToJson(this);
}

/// Information regarding a trip intermediate stop. At least one of address or location required on creation
@_i1.JsonSerializable()
class TripStop {
  TripStop({this.address, this.location});

  factory TripStop.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripStopFromJson(jsonMap);

  /// Address representation
  final TripBaseStopsAddress address;

  /// Geo-location representation
  final TripBaseStopsLocation location;

  Map<String, dynamic> toJson() => _$TripStopToJson(this);
}

/// Address representation
@_i1.JsonSerializable()
class Address {
  Address(
      {this.moniker,
      this.streetLine,
      this.locality,
      this.areaCode,
      this.stateRegion,
      this.country});

  factory Address.fromJson(Map<String, dynamic> jsonMap) =>
      _$AddressFromJson(jsonMap);

  /// Moniker
  final String moniker;

  /// Street line 1
  final String streetLine;

  /// Suburb or locality
  final String locality;

  /// Area code
  final String areaCode;

  /// State or region
  final String stateRegion;

  /// Country
  final String country;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

/// Geo-location representation
@_i1.JsonSerializable()
class Location {
  Location({this.latitude, this.longitude});

  factory Location.fromJson(Map<String, dynamic> jsonMap) =>
      _$LocationFromJson(jsonMap);

  /// Latitude of the location
  final num latitude;

  /// Longitude of the location
  final num longitude;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

/// Represents summarized information recorded from multiple trips
@_i1.JsonSerializable()
class TripsSummary {
  TripsSummary({this.totalTrips, this.totalDistance, this.totalDuration});

  factory TripsSummary.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripsSummaryFromJson(jsonMap);

  /// Total amount of trips
  final int totalTrips;

  /// Total trips distance in metres
  final int totalDistance;

  /// Total trips duration in milliseconds
  final int totalDuration;

  Map<String, dynamic> toJson() => _$TripsSummaryToJson(this);
}

///
@_i1.JsonSerializable()
class IconNameTag {
  IconNameTag();

  factory IconNameTag.fromJson(Map<String, dynamic> jsonMap) =>
      _$IconNameTagFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$IconNameTagToJson(this);
}

///
@_i1.JsonSerializable()
class SpecialTag {
  SpecialTag();

  factory SpecialTag.fromJson(Map<String, dynamic> jsonMap) =>
      _$SpecialTagFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$SpecialTagToJson(this);
}

///
@_i1.JsonSerializable()
class TripError {
  TripError({this.first, this.second, this.type});

  factory TripError.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripErrorFromJson(jsonMap);

  /// null
  final Trip first;

  /// null
  final Trip second;

  /// null
  final String type;

  Map<String, dynamic> toJson() => _$TripErrorToJson(this);
}

///
@_i1.JsonSerializable()
class ErrorType {
  ErrorType();

  factory ErrorType.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorTypeFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$ErrorTypeToJson(this);
}

///
@_i1.JsonSerializable()
class ExportTrip {
  ExportTrip({this.trip, this.originalTrip, this.modified, this.deleted});

  factory ExportTrip.fromJson(Map<String, dynamic> jsonMap) =>
      _$ExportTripFromJson(jsonMap);

  /// null
  final Trip trip;

  /// null
  final Trip originalTrip;

  /// true if attributes other than tags and pilots have been modified, false otherwise
  final bool modified;

  /// true if the trip has been deleted, false otherwise
  final bool deleted;

  Map<String, dynamic> toJson() => _$ExportTripToJson(this);
}

///
@_i1.JsonSerializable()
class ExportFormat {
  ExportFormat();

  factory ExportFormat.fromJson(Map<String, dynamic> jsonMap) =>
      _$ExportFormatFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$ExportFormatToJson(this);
}

/// Extra flexible data supplied by apps dependent on this api
@_i1.JsonSerializable()
class ExtraData {
  ExtraData({this.smartConnectData, this.fslData});

  factory ExtraData.fromJson(Map<String, dynamic> jsonMap) =>
      _$ExtraDataFromJson(jsonMap);

  /// Smart connect related extra data
  final TripBaseExtraDataSmartConnectData smartConnectData;

  /// null
  final TripBaseExtraDataFslData fslData;

  Map<String, dynamic> toJson() => _$ExtraDataToJson(this);
}

/// Smart connect related extra data
@_i1.JsonSerializable()
class SmartConnectData {
  SmartConnectData(
      {this.tshTripUuid,
      this.tshDriverUuid,
      this.tshVehicleUuid,
      this.averageSpeed,
      this.maximumSpeed,
      this.averageRpm,
      this.maximumRpm,
      this.fuelConsumption,
      this.startFuelLevel,
      this.endFuelLevel,
      this.emissions,
      this.score});

  factory SmartConnectData.fromJson(Map<String, dynamic> jsonMap) =>
      _$SmartConnectDataFromJson(jsonMap);

  /// Tsh trip unique identifier
  final String tshTripUuid;

  /// Tsh driver unique identifier
  final String tshDriverUuid;

  /// Tsh vehicle unique identifier
  final String tshVehicleUuid;

  /// trip average speed in km/h
  final num averageSpeed;

  /// trip maximum speed in km/h
  final num maximumSpeed;

  /// trip average rpm
  final num averageRpm;

  /// trip maximum rpm
  final num maximumRpm;

  /// total trip fuel consumption
  final num fuelConsumption;

  /// trip fuel level at the start of the trip
  final num startFuelLevel;

  /// trip fuel level at the end of the trip
  final num endFuelLevel;

  /// trip CO2 emissions
  final num emissions;

  /// trip multiple scores
  final TripBaseExtraDataSmartConnectDataScore score;

  Map<String, dynamic> toJson() => _$SmartConnectDataToJson(this);
}

///
@_i1.JsonSerializable()
class FslData {
  FslData(
      {this.signaturePilot,
      this.signatureCoPilot,
      this.roadCondition,
      this.routeSummary,
      this.licensePlate});

  factory FslData.fromJson(Map<String, dynamic> jsonMap) =>
      _$FslDataFromJson(jsonMap);

  /// Signature of the pilot confirming the trip data, e.g. the student signature during L license trips, syntax: a data url with base64 coded PNG: "data:image/png;base64..."
  final String signaturePilot;

  /// Signature of co-pilot confirming the trip data, e.g. the parent signature during L license trips. syntax: see signaturePilot.
  final String signatureCoPilot;

  /// A summary of the road condition of this trip, e.g. wet.
  final String roadCondition;

  /// Summary of the route, useful when startInfo and endInfo is not given. e.g. Wien Graz.
  final String routeSummary;

  /// The license plate number of the used vehicle, useful when no vehicleid is given, e.g. W-123, no syntax, free format.
  final String licensePlate;

  Map<String, dynamic> toJson() => _$FslDataToJson(this);
}

/// filters for the exports. All parameters are optional meaning no filtering would be done for missing parameters
@_i1.JsonSerializable()
class ExportBody {
  ExportBody(
      {this.email,
      this.exportFormats,
      this.from,
      this.until,
      this.vehicleId,
      this.tagIds,
      this.pilotIds});

  factory ExportBody.fromJson(Map<String, dynamic> jsonMap) =>
      _$ExportBodyFromJson(jsonMap);

  /// email to which the exports will be sent
  final String email;

  /// export formats desired. Supported values: 'pdf', 'csv', 'xlsx'. Default value: 'pdf'
  final List<String> exportFormats;

  /// export trips from the specified date-time. Format: rfc3339. Example 2019-09-27T15:00:30.000Z
  final String from;

  /// export trips until the specified date-time. Format: rfc3339. Example 2019-09-27T20:00:30.000Z
  final String until;

  /// export trips only for the given vehicle
  final int vehicleId;

  /// exported trips must have one of the tags in the list
  final List<int> tagIds;

  /// exported trips must have one of the pilots in the list
  final List<int> pilotIds;

  Map<String, dynamic> toJson() => _$ExportBodyToJson(this);
}

///
@_i1.JsonSerializable()
class Error {
  Error({this.key, this.value});

  factory Error.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorFromJson(jsonMap);

  /// null
  final String key;

  /// null
  final String value;

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}

///
@_i1.JsonSerializable()
class Errors {
  Errors();

  factory Errors.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorsFromJson(jsonMap);

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}

///
@_i1.JsonSerializable()
class ErrorResponse {
  ErrorResponse({this.status, this.code, this.message, this.errors});

  factory ErrorResponse.fromJson(Map<String, dynamic> jsonMap) =>
      _$ErrorResponseFromJson(jsonMap);

  /// null
  final num status;

  /// null
  final String code;

  /// null
  final String message;

  /// null
  final List<Error> errors;

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}

///
@_i1.JsonSerializable()
class Modifiable {
  Modifiable({this.createdAt, this.updatedAt});

  factory Modifiable.fromJson(Map<String, dynamic> jsonMap) =>
      _$ModifiableFromJson(jsonMap);

  /// Timestamp when this resource was created
  final String createdAt;

  /// Timestamp when this resource was last updated
  final String updatedAt;

  Map<String, dynamic> toJson() => _$ModifiableToJson(this);
}

///
@_i1.JsonSerializable()
class TripsPage {
  TripsPage({this.count, this.offset, this.trips});

  factory TripsPage.fromJson(Map<String, dynamic> jsonMap) =>
      _$TripsPageFromJson(jsonMap);

  /// Amount of trips in this page. Between 0 and page.limit.
  final int count;

  /// Page offset
  final int offset;

  /// null
  final List<Trip> trips;

  Map<String, dynamic> toJson() => _$TripsPageToJson(this);
}

/// trip multiple scores
@_i1.JsonSerializable()
class SmartConnectDataScore {
  SmartConnectDataScore(
      {this.idlingScore,
      this.speedingScore,
      this.brakingScore,
      this.accelerationScore,
      this.totalEcoScore});

  factory SmartConnectDataScore.fromJson(Map<String, dynamic> jsonMap) =>
      _$SmartConnectDataScoreFromJson(jsonMap);

  /// Calculated score for idling based on the idling histogram
  final int idlingScore;

  /// Calculated score for speeding based on the speed histogram
  final int speedingScore;

  /// Calculated score for deceleration based on the braking histogram
  final int brakingScore;

  /// Calculated core for acceleration based on the acceleration histogram
  final int accelerationScore;

  /// Calculated score that represents the degree of eco-friendly driving behaviour of the driver based on idlingScore, speedingScore, brakingScore, and accelarationScore
  final int totalEcoScore;

  Map<String, dynamic> toJson() => _$SmartConnectDataScoreToJson(this);
}

class UsersIdentityKeyTripLogsGetResponse200
    extends UsersIdentityKeyTripLogsGetResponse {
  /// List of trip logs
  UsersIdentityKeyTripLogsGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTripLogsGetResponse500
    extends UsersIdentityKeyTripLogsGetResponse {
  /// Internal Server Error
  UsersIdentityKeyTripLogsGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripLogsGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTripLogsGetResponse();

  /// List of trip logs
  factory UsersIdentityKeyTripLogsGetResponse.response200() =>
      UsersIdentityKeyTripLogsGetResponse200.response200();

  /// Internal Server Error
  factory UsersIdentityKeyTripLogsGetResponse.response500() =>
      UsersIdentityKeyTripLogsGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripLogsGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripLogsGetResponse500> on500}) {
    if (this is UsersIdentityKeyTripLogsGetResponse200) {
      on200((this as UsersIdentityKeyTripLogsGetResponse200));
    } else if (this is UsersIdentityKeyTripLogsGetResponse500) {
      on500((this as UsersIdentityKeyTripLogsGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200
    extends UsersIdentityKeyVehiclesVehicleIdTripsGetResponse {
  /// Page of trips done by user with the given vehicle
  UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200.response200()
      : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400
    extends UsersIdentityKeyVehiclesVehicleIdTripsGetResponse {
  /// Query filters are invalid
  UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400.response400()
      : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsGetResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsGetResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsGetResponse();

  /// Page of trips done by user with the given vehicle
  factory UsersIdentityKeyVehiclesVehicleIdTripsGetResponse.response200() =>
      UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200.response200();

  /// Query filters are invalid
  factory UsersIdentityKeyVehiclesVehicleIdTripsGetResponse.response400() =>
      UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400.response400();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsGetResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200>
              on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400>
              on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200) {
      on200((this as UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400) {
      on400((this as UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500) {
      on500((this as UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201
    extends UsersIdentityKeyVehiclesVehicleIdTripsPostResponse {
  /// Trip successfully created
  UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201.response201()
      : status = 201;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400
    extends UsersIdentityKeyVehiclesVehicleIdTripsPostResponse {
  /// Request data is invalid
  UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400.response400()
      : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409
    extends UsersIdentityKeyVehiclesVehicleIdTripsPostResponse {
  /// Creation id is not unique
  UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409.response409()
      : status = 409;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsPostResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsPostResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsPostResponse();

  /// Trip successfully created
  factory UsersIdentityKeyVehiclesVehicleIdTripsPostResponse.response201() =>
      UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201.response201();

  /// Request data is invalid
  factory UsersIdentityKeyVehiclesVehicleIdTripsPostResponse.response400() =>
      UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400.response400();

  /// Creation id is not unique
  factory UsersIdentityKeyVehiclesVehicleIdTripsPostResponse.response409() =>
      UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409.response409();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsPostResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201>
              on201,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400>
              on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409>
              on409,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201) {
      on201((this as UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400) {
      on400((this as UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409) {
      on409((this as UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500) {
      on500((this as UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsGetResponse200
    extends UsersIdentityKeyTripsGetResponse {
  /// Page of trips done by user with the given vehicle
  UsersIdentityKeyTripsGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTripsGetResponse400
    extends UsersIdentityKeyTripsGetResponse {
  /// Query filters are invalid
  UsersIdentityKeyTripsGetResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyTripsGetResponse500
    extends UsersIdentityKeyTripsGetResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsGetResponse();

  /// Page of trips done by user with the given vehicle
  factory UsersIdentityKeyTripsGetResponse.response200() =>
      UsersIdentityKeyTripsGetResponse200.response200();

  /// Query filters are invalid
  factory UsersIdentityKeyTripsGetResponse.response400() =>
      UsersIdentityKeyTripsGetResponse400.response400();

  /// Internal Server Error
  factory UsersIdentityKeyTripsGetResponse.response500() =>
      UsersIdentityKeyTripsGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsGetResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsGetResponse500> on500}) {
    if (this is UsersIdentityKeyTripsGetResponse200) {
      on200((this as UsersIdentityKeyTripsGetResponse200));
    } else if (this is UsersIdentityKeyTripsGetResponse400) {
      on400((this as UsersIdentityKeyTripsGetResponse400));
    } else if (this is UsersIdentityKeyTripsGetResponse500) {
      on500((this as UsersIdentityKeyTripsGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsPostResponse201
    extends UsersIdentityKeyTripsPostResponse {
  /// Trip successfully created
  UsersIdentityKeyTripsPostResponse201.response201() : status = 201;

  @override
  final int status;
}

class UsersIdentityKeyTripsPostResponse400
    extends UsersIdentityKeyTripsPostResponse {
  /// Request data is invalid
  UsersIdentityKeyTripsPostResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyTripsPostResponse409
    extends UsersIdentityKeyTripsPostResponse {
  /// Non unique creation id header
  UsersIdentityKeyTripsPostResponse409.response409() : status = 409;

  @override
  final int status;
}

class UsersIdentityKeyTripsPostResponse500
    extends UsersIdentityKeyTripsPostResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsPostResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsPostResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsPostResponse();

  /// Trip successfully created
  factory UsersIdentityKeyTripsPostResponse.response201() =>
      UsersIdentityKeyTripsPostResponse201.response201();

  /// Request data is invalid
  factory UsersIdentityKeyTripsPostResponse.response400() =>
      UsersIdentityKeyTripsPostResponse400.response400();

  /// Non unique creation id header
  factory UsersIdentityKeyTripsPostResponse.response409() =>
      UsersIdentityKeyTripsPostResponse409.response409();

  /// Internal Server Error
  factory UsersIdentityKeyTripsPostResponse.response500() =>
      UsersIdentityKeyTripsPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsPostResponse201> on201,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsPostResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsPostResponse409> on409,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsPostResponse500> on500}) {
    if (this is UsersIdentityKeyTripsPostResponse201) {
      on201((this as UsersIdentityKeyTripsPostResponse201));
    } else if (this is UsersIdentityKeyTripsPostResponse400) {
      on400((this as UsersIdentityKeyTripsPostResponse400));
    } else if (this is UsersIdentityKeyTripsPostResponse409) {
      on409((this as UsersIdentityKeyTripsPostResponse409));
    } else if (this is UsersIdentityKeyTripsPostResponse500) {
      on500((this as UsersIdentityKeyTripsPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200
    extends UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse {
  /// Summarized trip information
  UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200.response200()
      : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse();

  /// Summarized trip information
  factory UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse.response200() =>
      UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200.response200();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200>
              on200,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200) {
      on200((this
          as UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500) {
      on500((this
          as UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsSummaryGetResponse200
    extends UsersIdentityKeyTripsSummaryGetResponse {
  /// Summarized trip information
  UsersIdentityKeyTripsSummaryGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTripsSummaryGetResponse500
    extends UsersIdentityKeyTripsSummaryGetResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsSummaryGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsSummaryGetResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsSummaryGetResponse();

  /// Summarized trip information
  factory UsersIdentityKeyTripsSummaryGetResponse.response200() =>
      UsersIdentityKeyTripsSummaryGetResponse200.response200();

  /// Internal Server Error
  factory UsersIdentityKeyTripsSummaryGetResponse.response500() =>
      UsersIdentityKeyTripsSummaryGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsSummaryGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsSummaryGetResponse500> on500}) {
    if (this is UsersIdentityKeyTripsSummaryGetResponse200) {
      on200((this as UsersIdentityKeyTripsSummaryGetResponse200));
    } else if (this is UsersIdentityKeyTripsSummaryGetResponse500) {
      on500((this as UsersIdentityKeyTripsSummaryGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse {
  /// A single trip
  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200.response200()
      : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse {
  /// Trip found but does not belong to the user
  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403.response403()
      : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse {
  /// Trip with given id and vehicle id not found
  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404.response404()
      : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse();

  /// A single trip
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse.response200() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200.response200();

  /// Trip found but does not belong to the user
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse.response403() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403.response403();

  /// Trip with given id and vehicle id not found
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse.response404() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200>
              on200,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403>
              on403,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404>
              on404,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200) {
      on200((this as UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403) {
      on403((this as UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404) {
      on404((this as UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500) {
      on500((this as UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse {
  /// Trip successfully updated
  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200.response200()
      : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse {
  /// Request data is invalid
  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400.response400()
      : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse {
  /// Trip found but does not belong to the user
  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403.response403()
      : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse {
  /// Trip with given id and vehicle id not found
  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404.response404()
      : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse();

  /// Trip successfully updated
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse.response200() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200.response200();

  /// Request data is invalid
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse.response400() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400.response400();

  /// Trip found but does not belong to the user
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse.response403() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403.response403();

  /// Trip with given id and vehicle id not found
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse.response404() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200>
              on200,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400>
              on400,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403>
              on403,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404>
              on404,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200) {
      on200((this as UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400) {
      on400((this as UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403) {
      on403((this as UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404) {
      on404((this as UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404));
    } else if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500) {
      on500((this as UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse {
  /// Trip deleted
  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204.response204()
      : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse {
  /// Trip found but does not belong to the user
  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403.response403()
      : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse {
  /// Trip with given id or vehicle id not found
  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404.response404()
      : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse();

  /// Trip deleted
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse.response204() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204.response204();

  /// Trip found but does not belong to the user
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse.response403() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403.response403();

  /// Trip with given id or vehicle id not found
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse.response404() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204>
              on204,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403>
              on403,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404>
              on404,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204) {
      on204(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403) {
      on403(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404) {
      on404(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500) {
      on500(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsIdGetResponse200
    extends UsersIdentityKeyTripsIdGetResponse {
  /// A single trip
  UsersIdentityKeyTripsIdGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdGetResponse403
    extends UsersIdentityKeyTripsIdGetResponse {
  /// Trip found but does not belong to the user
  UsersIdentityKeyTripsIdGetResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdGetResponse404
    extends UsersIdentityKeyTripsIdGetResponse {
  /// Trip with given id not found
  UsersIdentityKeyTripsIdGetResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdGetResponse500
    extends UsersIdentityKeyTripsIdGetResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsIdGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsIdGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsIdGetResponse();

  /// A single trip
  factory UsersIdentityKeyTripsIdGetResponse.response200() =>
      UsersIdentityKeyTripsIdGetResponse200.response200();

  /// Trip found but does not belong to the user
  factory UsersIdentityKeyTripsIdGetResponse.response403() =>
      UsersIdentityKeyTripsIdGetResponse403.response403();

  /// Trip with given id not found
  factory UsersIdentityKeyTripsIdGetResponse.response404() =>
      UsersIdentityKeyTripsIdGetResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTripsIdGetResponse.response500() =>
      UsersIdentityKeyTripsIdGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdGetResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdGetResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdGetResponse500> on500}) {
    if (this is UsersIdentityKeyTripsIdGetResponse200) {
      on200((this as UsersIdentityKeyTripsIdGetResponse200));
    } else if (this is UsersIdentityKeyTripsIdGetResponse403) {
      on403((this as UsersIdentityKeyTripsIdGetResponse403));
    } else if (this is UsersIdentityKeyTripsIdGetResponse404) {
      on404((this as UsersIdentityKeyTripsIdGetResponse404));
    } else if (this is UsersIdentityKeyTripsIdGetResponse500) {
      on500((this as UsersIdentityKeyTripsIdGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsIdPutResponse200
    extends UsersIdentityKeyTripsIdPutResponse {
  /// Trip successfully updated
  UsersIdentityKeyTripsIdPutResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdPutResponse400
    extends UsersIdentityKeyTripsIdPutResponse {
  /// Request data is invalid
  UsersIdentityKeyTripsIdPutResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdPutResponse403
    extends UsersIdentityKeyTripsIdPutResponse {
  /// Trip found but does not belong to the user
  UsersIdentityKeyTripsIdPutResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdPutResponse404
    extends UsersIdentityKeyTripsIdPutResponse {
  /// Trip with given id not found
  UsersIdentityKeyTripsIdPutResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdPutResponse500
    extends UsersIdentityKeyTripsIdPutResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsIdPutResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsIdPutResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsIdPutResponse();

  /// Trip successfully updated
  factory UsersIdentityKeyTripsIdPutResponse.response200() =>
      UsersIdentityKeyTripsIdPutResponse200.response200();

  /// Request data is invalid
  factory UsersIdentityKeyTripsIdPutResponse.response400() =>
      UsersIdentityKeyTripsIdPutResponse400.response400();

  /// Trip found but does not belong to the user
  factory UsersIdentityKeyTripsIdPutResponse.response403() =>
      UsersIdentityKeyTripsIdPutResponse403.response403();

  /// Trip with given id not found
  factory UsersIdentityKeyTripsIdPutResponse.response404() =>
      UsersIdentityKeyTripsIdPutResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTripsIdPutResponse.response500() =>
      UsersIdentityKeyTripsIdPutResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdPutResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdPutResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdPutResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdPutResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdPutResponse500> on500}) {
    if (this is UsersIdentityKeyTripsIdPutResponse200) {
      on200((this as UsersIdentityKeyTripsIdPutResponse200));
    } else if (this is UsersIdentityKeyTripsIdPutResponse400) {
      on400((this as UsersIdentityKeyTripsIdPutResponse400));
    } else if (this is UsersIdentityKeyTripsIdPutResponse403) {
      on403((this as UsersIdentityKeyTripsIdPutResponse403));
    } else if (this is UsersIdentityKeyTripsIdPutResponse404) {
      on404((this as UsersIdentityKeyTripsIdPutResponse404));
    } else if (this is UsersIdentityKeyTripsIdPutResponse500) {
      on500((this as UsersIdentityKeyTripsIdPutResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsIdDeleteResponse204
    extends UsersIdentityKeyTripsIdDeleteResponse {
  /// Trip deleted
  UsersIdentityKeyTripsIdDeleteResponse204.response204() : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdDeleteResponse403
    extends UsersIdentityKeyTripsIdDeleteResponse {
  /// Trip found but does not belong to the user
  UsersIdentityKeyTripsIdDeleteResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdDeleteResponse404
    extends UsersIdentityKeyTripsIdDeleteResponse {
  /// Trip with given id not found
  UsersIdentityKeyTripsIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTripsIdDeleteResponse500
    extends UsersIdentityKeyTripsIdDeleteResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsIdDeleteResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsIdDeleteResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsIdDeleteResponse();

  /// Trip deleted
  factory UsersIdentityKeyTripsIdDeleteResponse.response204() =>
      UsersIdentityKeyTripsIdDeleteResponse204.response204();

  /// Trip found but does not belong to the user
  factory UsersIdentityKeyTripsIdDeleteResponse.response403() =>
      UsersIdentityKeyTripsIdDeleteResponse403.response403();

  /// Trip with given id not found
  factory UsersIdentityKeyTripsIdDeleteResponse.response404() =>
      UsersIdentityKeyTripsIdDeleteResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTripsIdDeleteResponse.response500() =>
      UsersIdentityKeyTripsIdDeleteResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdDeleteResponse204> on204,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdDeleteResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdDeleteResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsIdDeleteResponse500> on500}) {
    if (this is UsersIdentityKeyTripsIdDeleteResponse204) {
      on204((this as UsersIdentityKeyTripsIdDeleteResponse204));
    } else if (this is UsersIdentityKeyTripsIdDeleteResponse403) {
      on403((this as UsersIdentityKeyTripsIdDeleteResponse403));
    } else if (this is UsersIdentityKeyTripsIdDeleteResponse404) {
      on404((this as UsersIdentityKeyTripsIdDeleteResponse404));
    } else if (this is UsersIdentityKeyTripsIdDeleteResponse500) {
      on500((this as UsersIdentityKeyTripsIdDeleteResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200
    extends UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse {
  /// List of trip errors in the given date range
  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200.response200()
      : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400
    extends UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse {
  /// Query filters are invalid
  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400.response400()
      : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse();

  /// List of trip errors in the given date range
  factory UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse.response200() =>
      UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200.response200();

  /// Query filters are invalid
  factory UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse.response400() =>
      UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400.response400();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200>
              on200,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400>
              on400,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200) {
      on200(
          (this as UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400) {
      on400(
          (this as UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500) {
      on500(
          (this as UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse {
  /// List of trips formatted for export in the given date range
  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200.response200()
      : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse {
  /// Query filters are invalid
  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400.response400()
      : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse();

  /// List of trips formatted for export in the given date range
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse.response200() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200.response200();

  /// Query filters are invalid
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse.response400() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400.response400();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200>
              on200,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400>
              on400,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200) {
      on200(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400) {
      on400(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500) {
      on500(
          (this as UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse {
  /// Export email successfully sent
  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204.response204()
      : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse {
  /// Email missing or invalid filter, email or file format, i.e. invalid date or unsupported file format
  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400.response400()
      : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse {
  /// Active abonnement not found
  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404.response404()
      : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500
    extends UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse {
  /// Internal Server Error
  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500.response500()
      : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse();

  /// Export email successfully sent
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse.response204() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204.response204();

  /// Email missing or invalid filter, email or file format, i.e. invalid date or unsupported file format
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse.response400() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400.response400();

  /// Active abonnement not found
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse.response404() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse.response500() =>
      UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204>
              on204,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400>
              on400,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404>
              on404,
      @_i3.required
          _i2.ResponseMap<
                  UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500>
              on500}) {
    if (this is UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204) {
      on204((this
          as UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400) {
      on400((this
          as UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404) {
      on404((this
          as UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404));
    } else if (this
        is UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500) {
      on500((this
          as UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTripsExportPostResponse204
    extends UsersIdentityKeyTripsExportPostResponse {
  /// Export email successfully sent
  UsersIdentityKeyTripsExportPostResponse204.response204() : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyTripsExportPostResponse400
    extends UsersIdentityKeyTripsExportPostResponse {
  /// Email missing or invalid filter, email or file format, i.e. invalid date or unsupported file format
  UsersIdentityKeyTripsExportPostResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyTripsExportPostResponse404
    extends UsersIdentityKeyTripsExportPostResponse {
  /// Active abonnement not found
  UsersIdentityKeyTripsExportPostResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTripsExportPostResponse500
    extends UsersIdentityKeyTripsExportPostResponse {
  /// Internal Server Error
  UsersIdentityKeyTripsExportPostResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTripsExportPostResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyTripsExportPostResponse();

  /// Export email successfully sent
  factory UsersIdentityKeyTripsExportPostResponse.response204() =>
      UsersIdentityKeyTripsExportPostResponse204.response204();

  /// Email missing or invalid filter, email or file format, i.e. invalid date or unsupported file format
  factory UsersIdentityKeyTripsExportPostResponse.response400() =>
      UsersIdentityKeyTripsExportPostResponse400.response400();

  /// Active abonnement not found
  factory UsersIdentityKeyTripsExportPostResponse.response404() =>
      UsersIdentityKeyTripsExportPostResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTripsExportPostResponse.response500() =>
      UsersIdentityKeyTripsExportPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsExportPostResponse204> on204,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsExportPostResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsExportPostResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTripsExportPostResponse500> on500}) {
    if (this is UsersIdentityKeyTripsExportPostResponse204) {
      on204((this as UsersIdentityKeyTripsExportPostResponse204));
    } else if (this is UsersIdentityKeyTripsExportPostResponse400) {
      on400((this as UsersIdentityKeyTripsExportPostResponse400));
    } else if (this is UsersIdentityKeyTripsExportPostResponse404) {
      on404((this as UsersIdentityKeyTripsExportPostResponse404));
    } else if (this is UsersIdentityKeyTripsExportPostResponse500) {
      on500((this as UsersIdentityKeyTripsExportPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyPilotsGetResponse200
    extends UsersIdentityKeyPilotsGetResponse {
  /// List of pilots owned by the user
  UsersIdentityKeyPilotsGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyPilotsGetResponse500
    extends UsersIdentityKeyPilotsGetResponse {
  /// Internal Server Error
  UsersIdentityKeyPilotsGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyPilotsGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyPilotsGetResponse();

  /// List of pilots owned by the user
  factory UsersIdentityKeyPilotsGetResponse.response200() =>
      UsersIdentityKeyPilotsGetResponse200.response200();

  /// Internal Server Error
  factory UsersIdentityKeyPilotsGetResponse.response500() =>
      UsersIdentityKeyPilotsGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsGetResponse500> on500}) {
    if (this is UsersIdentityKeyPilotsGetResponse200) {
      on200((this as UsersIdentityKeyPilotsGetResponse200));
    } else if (this is UsersIdentityKeyPilotsGetResponse500) {
      on500((this as UsersIdentityKeyPilotsGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyPilotsPostResponse201
    extends UsersIdentityKeyPilotsPostResponse {
  /// Pilot successfully created
  UsersIdentityKeyPilotsPostResponse201.response201() : status = 201;

  @override
  final int status;
}

class UsersIdentityKeyPilotsPostResponse400
    extends UsersIdentityKeyPilotsPostResponse {
  /// Request data is invalid
  UsersIdentityKeyPilotsPostResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyPilotsPostResponse409
    extends UsersIdentityKeyPilotsPostResponse {
  /// Non unique creation id header
  UsersIdentityKeyPilotsPostResponse409.response409() : status = 409;

  @override
  final int status;
}

class UsersIdentityKeyPilotsPostResponse500
    extends UsersIdentityKeyPilotsPostResponse {
  /// Internal Server Error
  UsersIdentityKeyPilotsPostResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyPilotsPostResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyPilotsPostResponse();

  /// Pilot successfully created
  factory UsersIdentityKeyPilotsPostResponse.response201() =>
      UsersIdentityKeyPilotsPostResponse201.response201();

  /// Request data is invalid
  factory UsersIdentityKeyPilotsPostResponse.response400() =>
      UsersIdentityKeyPilotsPostResponse400.response400();

  /// Non unique creation id header
  factory UsersIdentityKeyPilotsPostResponse.response409() =>
      UsersIdentityKeyPilotsPostResponse409.response409();

  /// Internal Server Error
  factory UsersIdentityKeyPilotsPostResponse.response500() =>
      UsersIdentityKeyPilotsPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsPostResponse201> on201,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsPostResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsPostResponse409> on409,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsPostResponse500> on500}) {
    if (this is UsersIdentityKeyPilotsPostResponse201) {
      on201((this as UsersIdentityKeyPilotsPostResponse201));
    } else if (this is UsersIdentityKeyPilotsPostResponse400) {
      on400((this as UsersIdentityKeyPilotsPostResponse400));
    } else if (this is UsersIdentityKeyPilotsPostResponse409) {
      on409((this as UsersIdentityKeyPilotsPostResponse409));
    } else if (this is UsersIdentityKeyPilotsPostResponse500) {
      on500((this as UsersIdentityKeyPilotsPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyPilotsIdGetResponse200
    extends UsersIdentityKeyPilotsIdGetResponse {
  /// A single pilot
  UsersIdentityKeyPilotsIdGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdGetResponse403
    extends UsersIdentityKeyPilotsIdGetResponse {
  /// Pilot found but does not belong to the user
  UsersIdentityKeyPilotsIdGetResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdGetResponse404
    extends UsersIdentityKeyPilotsIdGetResponse {
  /// Pilot with given id not found
  UsersIdentityKeyPilotsIdGetResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdGetResponse500
    extends UsersIdentityKeyPilotsIdGetResponse {
  /// Internal Server Error
  UsersIdentityKeyPilotsIdGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyPilotsIdGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyPilotsIdGetResponse();

  /// A single pilot
  factory UsersIdentityKeyPilotsIdGetResponse.response200() =>
      UsersIdentityKeyPilotsIdGetResponse200.response200();

  /// Pilot found but does not belong to the user
  factory UsersIdentityKeyPilotsIdGetResponse.response403() =>
      UsersIdentityKeyPilotsIdGetResponse403.response403();

  /// Pilot with given id not found
  factory UsersIdentityKeyPilotsIdGetResponse.response404() =>
      UsersIdentityKeyPilotsIdGetResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyPilotsIdGetResponse.response500() =>
      UsersIdentityKeyPilotsIdGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdGetResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdGetResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdGetResponse500> on500}) {
    if (this is UsersIdentityKeyPilotsIdGetResponse200) {
      on200((this as UsersIdentityKeyPilotsIdGetResponse200));
    } else if (this is UsersIdentityKeyPilotsIdGetResponse403) {
      on403((this as UsersIdentityKeyPilotsIdGetResponse403));
    } else if (this is UsersIdentityKeyPilotsIdGetResponse404) {
      on404((this as UsersIdentityKeyPilotsIdGetResponse404));
    } else if (this is UsersIdentityKeyPilotsIdGetResponse500) {
      on500((this as UsersIdentityKeyPilotsIdGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyPilotsIdPutResponse200
    extends UsersIdentityKeyPilotsIdPutResponse {
  /// Pilot successfully updated
  UsersIdentityKeyPilotsIdPutResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdPutResponse400
    extends UsersIdentityKeyPilotsIdPutResponse {
  /// Request data is invalid
  UsersIdentityKeyPilotsIdPutResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdPutResponse403
    extends UsersIdentityKeyPilotsIdPutResponse {
  /// Pilot found but does not belong to the user
  UsersIdentityKeyPilotsIdPutResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdPutResponse404
    extends UsersIdentityKeyPilotsIdPutResponse {
  /// Pilot with given id not found
  UsersIdentityKeyPilotsIdPutResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdPutResponse500
    extends UsersIdentityKeyPilotsIdPutResponse {
  /// Internal Server Error
  UsersIdentityKeyPilotsIdPutResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyPilotsIdPutResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyPilotsIdPutResponse();

  /// Pilot successfully updated
  factory UsersIdentityKeyPilotsIdPutResponse.response200() =>
      UsersIdentityKeyPilotsIdPutResponse200.response200();

  /// Request data is invalid
  factory UsersIdentityKeyPilotsIdPutResponse.response400() =>
      UsersIdentityKeyPilotsIdPutResponse400.response400();

  /// Pilot found but does not belong to the user
  factory UsersIdentityKeyPilotsIdPutResponse.response403() =>
      UsersIdentityKeyPilotsIdPutResponse403.response403();

  /// Pilot with given id not found
  factory UsersIdentityKeyPilotsIdPutResponse.response404() =>
      UsersIdentityKeyPilotsIdPutResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyPilotsIdPutResponse.response500() =>
      UsersIdentityKeyPilotsIdPutResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdPutResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdPutResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdPutResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdPutResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdPutResponse500> on500}) {
    if (this is UsersIdentityKeyPilotsIdPutResponse200) {
      on200((this as UsersIdentityKeyPilotsIdPutResponse200));
    } else if (this is UsersIdentityKeyPilotsIdPutResponse400) {
      on400((this as UsersIdentityKeyPilotsIdPutResponse400));
    } else if (this is UsersIdentityKeyPilotsIdPutResponse403) {
      on403((this as UsersIdentityKeyPilotsIdPutResponse403));
    } else if (this is UsersIdentityKeyPilotsIdPutResponse404) {
      on404((this as UsersIdentityKeyPilotsIdPutResponse404));
    } else if (this is UsersIdentityKeyPilotsIdPutResponse500) {
      on500((this as UsersIdentityKeyPilotsIdPutResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyPilotsIdDeleteResponse204
    extends UsersIdentityKeyPilotsIdDeleteResponse {
  /// Pilot deleted
  UsersIdentityKeyPilotsIdDeleteResponse204.response204() : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdDeleteResponse403
    extends UsersIdentityKeyPilotsIdDeleteResponse {
  /// Pilot found but does not belong to the user
  UsersIdentityKeyPilotsIdDeleteResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdDeleteResponse404
    extends UsersIdentityKeyPilotsIdDeleteResponse {
  /// Pilot with given id not found
  UsersIdentityKeyPilotsIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyPilotsIdDeleteResponse500
    extends UsersIdentityKeyPilotsIdDeleteResponse {
  /// Internal Server Error
  UsersIdentityKeyPilotsIdDeleteResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyPilotsIdDeleteResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyPilotsIdDeleteResponse();

  /// Pilot deleted
  factory UsersIdentityKeyPilotsIdDeleteResponse.response204() =>
      UsersIdentityKeyPilotsIdDeleteResponse204.response204();

  /// Pilot found but does not belong to the user
  factory UsersIdentityKeyPilotsIdDeleteResponse.response403() =>
      UsersIdentityKeyPilotsIdDeleteResponse403.response403();

  /// Pilot with given id not found
  factory UsersIdentityKeyPilotsIdDeleteResponse.response404() =>
      UsersIdentityKeyPilotsIdDeleteResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyPilotsIdDeleteResponse.response500() =>
      UsersIdentityKeyPilotsIdDeleteResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdDeleteResponse204> on204,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdDeleteResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdDeleteResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyPilotsIdDeleteResponse500> on500}) {
    if (this is UsersIdentityKeyPilotsIdDeleteResponse204) {
      on204((this as UsersIdentityKeyPilotsIdDeleteResponse204));
    } else if (this is UsersIdentityKeyPilotsIdDeleteResponse403) {
      on403((this as UsersIdentityKeyPilotsIdDeleteResponse403));
    } else if (this is UsersIdentityKeyPilotsIdDeleteResponse404) {
      on404((this as UsersIdentityKeyPilotsIdDeleteResponse404));
    } else if (this is UsersIdentityKeyPilotsIdDeleteResponse500) {
      on500((this as UsersIdentityKeyPilotsIdDeleteResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTagsGetResponse200
    extends UsersIdentityKeyTagsGetResponse {
  /// List of tags owned by the user
  UsersIdentityKeyTagsGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTagsGetResponse500
    extends UsersIdentityKeyTagsGetResponse {
  /// Internal Server Error
  UsersIdentityKeyTagsGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTagsGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTagsGetResponse();

  /// List of tags owned by the user
  factory UsersIdentityKeyTagsGetResponse.response200() =>
      UsersIdentityKeyTagsGetResponse200.response200();

  /// Internal Server Error
  factory UsersIdentityKeyTagsGetResponse.response500() =>
      UsersIdentityKeyTagsGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsGetResponse500> on500}) {
    if (this is UsersIdentityKeyTagsGetResponse200) {
      on200((this as UsersIdentityKeyTagsGetResponse200));
    } else if (this is UsersIdentityKeyTagsGetResponse500) {
      on500((this as UsersIdentityKeyTagsGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTagsPostResponse201
    extends UsersIdentityKeyTagsPostResponse {
  /// the created tag
  UsersIdentityKeyTagsPostResponse201.response201() : status = 201;

  @override
  final int status;
}

class UsersIdentityKeyTagsPostResponse400
    extends UsersIdentityKeyTagsPostResponse {
  /// some request parameters are not valid
  UsersIdentityKeyTagsPostResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyTagsPostResponse409
    extends UsersIdentityKeyTagsPostResponse {
  /// Non unique creation id header
  UsersIdentityKeyTagsPostResponse409.response409() : status = 409;

  @override
  final int status;
}

class UsersIdentityKeyTagsPostResponse500
    extends UsersIdentityKeyTagsPostResponse {
  /// Internal Server Error
  UsersIdentityKeyTagsPostResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTagsPostResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTagsPostResponse();

  /// the created tag
  factory UsersIdentityKeyTagsPostResponse.response201() =>
      UsersIdentityKeyTagsPostResponse201.response201();

  /// some request parameters are not valid
  factory UsersIdentityKeyTagsPostResponse.response400() =>
      UsersIdentityKeyTagsPostResponse400.response400();

  /// Non unique creation id header
  factory UsersIdentityKeyTagsPostResponse.response409() =>
      UsersIdentityKeyTagsPostResponse409.response409();

  /// Internal Server Error
  factory UsersIdentityKeyTagsPostResponse.response500() =>
      UsersIdentityKeyTagsPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsPostResponse201> on201,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsPostResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsPostResponse409> on409,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsPostResponse500> on500}) {
    if (this is UsersIdentityKeyTagsPostResponse201) {
      on201((this as UsersIdentityKeyTagsPostResponse201));
    } else if (this is UsersIdentityKeyTagsPostResponse400) {
      on400((this as UsersIdentityKeyTagsPostResponse400));
    } else if (this is UsersIdentityKeyTagsPostResponse409) {
      on409((this as UsersIdentityKeyTagsPostResponse409));
    } else if (this is UsersIdentityKeyTagsPostResponse500) {
      on500((this as UsersIdentityKeyTagsPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTagsIdGetResponse200
    extends UsersIdentityKeyTagsIdGetResponse {
  /// A single Tag
  UsersIdentityKeyTagsIdGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdGetResponse403
    extends UsersIdentityKeyTagsIdGetResponse {
  /// Tag found but does not belong to the user
  UsersIdentityKeyTagsIdGetResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdGetResponse404
    extends UsersIdentityKeyTagsIdGetResponse {
  /// Tag with given id not found
  UsersIdentityKeyTagsIdGetResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdGetResponse500
    extends UsersIdentityKeyTagsIdGetResponse {
  /// Internal Server Error
  UsersIdentityKeyTagsIdGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTagsIdGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTagsIdGetResponse();

  /// A single Tag
  factory UsersIdentityKeyTagsIdGetResponse.response200() =>
      UsersIdentityKeyTagsIdGetResponse200.response200();

  /// Tag found but does not belong to the user
  factory UsersIdentityKeyTagsIdGetResponse.response403() =>
      UsersIdentityKeyTagsIdGetResponse403.response403();

  /// Tag with given id not found
  factory UsersIdentityKeyTagsIdGetResponse.response404() =>
      UsersIdentityKeyTagsIdGetResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTagsIdGetResponse.response500() =>
      UsersIdentityKeyTagsIdGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdGetResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdGetResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdGetResponse500> on500}) {
    if (this is UsersIdentityKeyTagsIdGetResponse200) {
      on200((this as UsersIdentityKeyTagsIdGetResponse200));
    } else if (this is UsersIdentityKeyTagsIdGetResponse403) {
      on403((this as UsersIdentityKeyTagsIdGetResponse403));
    } else if (this is UsersIdentityKeyTagsIdGetResponse404) {
      on404((this as UsersIdentityKeyTagsIdGetResponse404));
    } else if (this is UsersIdentityKeyTagsIdGetResponse500) {
      on500((this as UsersIdentityKeyTagsIdGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTagsIdPutResponse200
    extends UsersIdentityKeyTagsIdPutResponse {
  /// Tag successfully updated
  UsersIdentityKeyTagsIdPutResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdPutResponse400
    extends UsersIdentityKeyTagsIdPutResponse {
  /// Request data is invalid
  UsersIdentityKeyTagsIdPutResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdPutResponse403
    extends UsersIdentityKeyTagsIdPutResponse {
  /// Tag found but does not belong to the user
  UsersIdentityKeyTagsIdPutResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdPutResponse404
    extends UsersIdentityKeyTagsIdPutResponse {
  /// Tag with given id not found
  UsersIdentityKeyTagsIdPutResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdPutResponse500
    extends UsersIdentityKeyTagsIdPutResponse {
  /// Internal Server Error
  UsersIdentityKeyTagsIdPutResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTagsIdPutResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyTagsIdPutResponse();

  /// Tag successfully updated
  factory UsersIdentityKeyTagsIdPutResponse.response200() =>
      UsersIdentityKeyTagsIdPutResponse200.response200();

  /// Request data is invalid
  factory UsersIdentityKeyTagsIdPutResponse.response400() =>
      UsersIdentityKeyTagsIdPutResponse400.response400();

  /// Tag found but does not belong to the user
  factory UsersIdentityKeyTagsIdPutResponse.response403() =>
      UsersIdentityKeyTagsIdPutResponse403.response403();

  /// Tag with given id not found
  factory UsersIdentityKeyTagsIdPutResponse.response404() =>
      UsersIdentityKeyTagsIdPutResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTagsIdPutResponse.response500() =>
      UsersIdentityKeyTagsIdPutResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdPutResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdPutResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdPutResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdPutResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdPutResponse500> on500}) {
    if (this is UsersIdentityKeyTagsIdPutResponse200) {
      on200((this as UsersIdentityKeyTagsIdPutResponse200));
    } else if (this is UsersIdentityKeyTagsIdPutResponse400) {
      on400((this as UsersIdentityKeyTagsIdPutResponse400));
    } else if (this is UsersIdentityKeyTagsIdPutResponse403) {
      on403((this as UsersIdentityKeyTagsIdPutResponse403));
    } else if (this is UsersIdentityKeyTagsIdPutResponse404) {
      on404((this as UsersIdentityKeyTagsIdPutResponse404));
    } else if (this is UsersIdentityKeyTagsIdPutResponse500) {
      on500((this as UsersIdentityKeyTagsIdPutResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyTagsIdDeleteResponse204
    extends UsersIdentityKeyTagsIdDeleteResponse {
  /// Tag deleted
  UsersIdentityKeyTagsIdDeleteResponse204.response204() : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdDeleteResponse403
    extends UsersIdentityKeyTagsIdDeleteResponse {
  /// Tag found but does not belong to the user
  UsersIdentityKeyTagsIdDeleteResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdDeleteResponse404
    extends UsersIdentityKeyTagsIdDeleteResponse {
  /// Tag with given id not found
  UsersIdentityKeyTagsIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyTagsIdDeleteResponse500
    extends UsersIdentityKeyTagsIdDeleteResponse {
  /// Internal Server Error
  UsersIdentityKeyTagsIdDeleteResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyTagsIdDeleteResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyTagsIdDeleteResponse();

  /// Tag deleted
  factory UsersIdentityKeyTagsIdDeleteResponse.response204() =>
      UsersIdentityKeyTagsIdDeleteResponse204.response204();

  /// Tag found but does not belong to the user
  factory UsersIdentityKeyTagsIdDeleteResponse.response403() =>
      UsersIdentityKeyTagsIdDeleteResponse403.response403();

  /// Tag with given id not found
  factory UsersIdentityKeyTagsIdDeleteResponse.response404() =>
      UsersIdentityKeyTagsIdDeleteResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyTagsIdDeleteResponse.response500() =>
      UsersIdentityKeyTagsIdDeleteResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdDeleteResponse204> on204,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdDeleteResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdDeleteResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyTagsIdDeleteResponse500> on500}) {
    if (this is UsersIdentityKeyTagsIdDeleteResponse204) {
      on204((this as UsersIdentityKeyTagsIdDeleteResponse204));
    } else if (this is UsersIdentityKeyTagsIdDeleteResponse403) {
      on403((this as UsersIdentityKeyTagsIdDeleteResponse403));
    } else if (this is UsersIdentityKeyTagsIdDeleteResponse404) {
      on404((this as UsersIdentityKeyTagsIdDeleteResponse404));
    } else if (this is UsersIdentityKeyTagsIdDeleteResponse500) {
      on500((this as UsersIdentityKeyTagsIdDeleteResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyZonesGetResponse200
    extends UsersIdentityKeyZonesGetResponse {
  /// List of zones owned by the user
  UsersIdentityKeyZonesGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyZonesGetResponse500
    extends UsersIdentityKeyZonesGetResponse {
  /// Internal Server Error
  UsersIdentityKeyZonesGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyZonesGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyZonesGetResponse();

  /// List of zones owned by the user
  factory UsersIdentityKeyZonesGetResponse.response200() =>
      UsersIdentityKeyZonesGetResponse200.response200();

  /// Internal Server Error
  factory UsersIdentityKeyZonesGetResponse.response500() =>
      UsersIdentityKeyZonesGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesGetResponse500> on500}) {
    if (this is UsersIdentityKeyZonesGetResponse200) {
      on200((this as UsersIdentityKeyZonesGetResponse200));
    } else if (this is UsersIdentityKeyZonesGetResponse500) {
      on500((this as UsersIdentityKeyZonesGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyZonesPostResponse201
    extends UsersIdentityKeyZonesPostResponse {
  /// Zone successfully created
  UsersIdentityKeyZonesPostResponse201.response201() : status = 201;

  @override
  final int status;
}

class UsersIdentityKeyZonesPostResponse400
    extends UsersIdentityKeyZonesPostResponse {
  /// Request data is invalid
  UsersIdentityKeyZonesPostResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyZonesPostResponse409
    extends UsersIdentityKeyZonesPostResponse {
  /// Non unique creation id header
  UsersIdentityKeyZonesPostResponse409.response409() : status = 409;

  @override
  final int status;
}

class UsersIdentityKeyZonesPostResponse500
    extends UsersIdentityKeyZonesPostResponse {
  /// Internal Server Error
  UsersIdentityKeyZonesPostResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyZonesPostResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyZonesPostResponse();

  /// Zone successfully created
  factory UsersIdentityKeyZonesPostResponse.response201() =>
      UsersIdentityKeyZonesPostResponse201.response201();

  /// Request data is invalid
  factory UsersIdentityKeyZonesPostResponse.response400() =>
      UsersIdentityKeyZonesPostResponse400.response400();

  /// Non unique creation id header
  factory UsersIdentityKeyZonesPostResponse.response409() =>
      UsersIdentityKeyZonesPostResponse409.response409();

  /// Internal Server Error
  factory UsersIdentityKeyZonesPostResponse.response500() =>
      UsersIdentityKeyZonesPostResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesPostResponse201> on201,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesPostResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesPostResponse409> on409,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesPostResponse500> on500}) {
    if (this is UsersIdentityKeyZonesPostResponse201) {
      on201((this as UsersIdentityKeyZonesPostResponse201));
    } else if (this is UsersIdentityKeyZonesPostResponse400) {
      on400((this as UsersIdentityKeyZonesPostResponse400));
    } else if (this is UsersIdentityKeyZonesPostResponse409) {
      on409((this as UsersIdentityKeyZonesPostResponse409));
    } else if (this is UsersIdentityKeyZonesPostResponse500) {
      on500((this as UsersIdentityKeyZonesPostResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyZonesIdGetResponse200
    extends UsersIdentityKeyZonesIdGetResponse {
  /// A single zone
  UsersIdentityKeyZonesIdGetResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdGetResponse403
    extends UsersIdentityKeyZonesIdGetResponse {
  /// Zone found but does not belong to the user
  UsersIdentityKeyZonesIdGetResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdGetResponse404
    extends UsersIdentityKeyZonesIdGetResponse {
  /// Zone with given id not found
  UsersIdentityKeyZonesIdGetResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdGetResponse500
    extends UsersIdentityKeyZonesIdGetResponse {
  /// Internal Server Error
  UsersIdentityKeyZonesIdGetResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyZonesIdGetResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyZonesIdGetResponse();

  /// A single zone
  factory UsersIdentityKeyZonesIdGetResponse.response200() =>
      UsersIdentityKeyZonesIdGetResponse200.response200();

  /// Zone found but does not belong to the user
  factory UsersIdentityKeyZonesIdGetResponse.response403() =>
      UsersIdentityKeyZonesIdGetResponse403.response403();

  /// Zone with given id not found
  factory UsersIdentityKeyZonesIdGetResponse.response404() =>
      UsersIdentityKeyZonesIdGetResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyZonesIdGetResponse.response500() =>
      UsersIdentityKeyZonesIdGetResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdGetResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdGetResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdGetResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdGetResponse500> on500}) {
    if (this is UsersIdentityKeyZonesIdGetResponse200) {
      on200((this as UsersIdentityKeyZonesIdGetResponse200));
    } else if (this is UsersIdentityKeyZonesIdGetResponse403) {
      on403((this as UsersIdentityKeyZonesIdGetResponse403));
    } else if (this is UsersIdentityKeyZonesIdGetResponse404) {
      on404((this as UsersIdentityKeyZonesIdGetResponse404));
    } else if (this is UsersIdentityKeyZonesIdGetResponse500) {
      on500((this as UsersIdentityKeyZonesIdGetResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyZonesIdPutResponse200
    extends UsersIdentityKeyZonesIdPutResponse {
  /// Zone successfully updated
  UsersIdentityKeyZonesIdPutResponse200.response200() : status = 200;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdPutResponse400
    extends UsersIdentityKeyZonesIdPutResponse {
  /// Request data is invalid
  UsersIdentityKeyZonesIdPutResponse400.response400() : status = 400;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdPutResponse403
    extends UsersIdentityKeyZonesIdPutResponse {
  /// Zone found but does not belong to the user
  UsersIdentityKeyZonesIdPutResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdPutResponse404
    extends UsersIdentityKeyZonesIdPutResponse {
  /// Zone with given id not found
  UsersIdentityKeyZonesIdPutResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdPutResponse500
    extends UsersIdentityKeyZonesIdPutResponse {
  /// Internal Server Error
  UsersIdentityKeyZonesIdPutResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyZonesIdPutResponse extends _i2.OpenApiResponse {
  UsersIdentityKeyZonesIdPutResponse();

  /// Zone successfully updated
  factory UsersIdentityKeyZonesIdPutResponse.response200() =>
      UsersIdentityKeyZonesIdPutResponse200.response200();

  /// Request data is invalid
  factory UsersIdentityKeyZonesIdPutResponse.response400() =>
      UsersIdentityKeyZonesIdPutResponse400.response400();

  /// Zone found but does not belong to the user
  factory UsersIdentityKeyZonesIdPutResponse.response403() =>
      UsersIdentityKeyZonesIdPutResponse403.response403();

  /// Zone with given id not found
  factory UsersIdentityKeyZonesIdPutResponse.response404() =>
      UsersIdentityKeyZonesIdPutResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyZonesIdPutResponse.response500() =>
      UsersIdentityKeyZonesIdPutResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdPutResponse200> on200,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdPutResponse400> on400,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdPutResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdPutResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdPutResponse500> on500}) {
    if (this is UsersIdentityKeyZonesIdPutResponse200) {
      on200((this as UsersIdentityKeyZonesIdPutResponse200));
    } else if (this is UsersIdentityKeyZonesIdPutResponse400) {
      on400((this as UsersIdentityKeyZonesIdPutResponse400));
    } else if (this is UsersIdentityKeyZonesIdPutResponse403) {
      on403((this as UsersIdentityKeyZonesIdPutResponse403));
    } else if (this is UsersIdentityKeyZonesIdPutResponse404) {
      on404((this as UsersIdentityKeyZonesIdPutResponse404));
    } else if (this is UsersIdentityKeyZonesIdPutResponse500) {
      on500((this as UsersIdentityKeyZonesIdPutResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

class UsersIdentityKeyZonesIdDeleteResponse204
    extends UsersIdentityKeyZonesIdDeleteResponse {
  /// Zone deleted
  UsersIdentityKeyZonesIdDeleteResponse204.response204() : status = 204;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdDeleteResponse403
    extends UsersIdentityKeyZonesIdDeleteResponse {
  /// Zone found but does not belong to the user
  UsersIdentityKeyZonesIdDeleteResponse403.response403() : status = 403;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdDeleteResponse404
    extends UsersIdentityKeyZonesIdDeleteResponse {
  /// Zone with given id not found
  UsersIdentityKeyZonesIdDeleteResponse404.response404() : status = 404;

  @override
  final int status;
}

class UsersIdentityKeyZonesIdDeleteResponse500
    extends UsersIdentityKeyZonesIdDeleteResponse {
  /// Internal Server Error
  UsersIdentityKeyZonesIdDeleteResponse500.response500() : status = 500;

  @override
  final int status;
}

abstract class UsersIdentityKeyZonesIdDeleteResponse
    extends _i2.OpenApiResponse {
  UsersIdentityKeyZonesIdDeleteResponse();

  /// Zone deleted
  factory UsersIdentityKeyZonesIdDeleteResponse.response204() =>
      UsersIdentityKeyZonesIdDeleteResponse204.response204();

  /// Zone found but does not belong to the user
  factory UsersIdentityKeyZonesIdDeleteResponse.response403() =>
      UsersIdentityKeyZonesIdDeleteResponse403.response403();

  /// Zone with given id not found
  factory UsersIdentityKeyZonesIdDeleteResponse.response404() =>
      UsersIdentityKeyZonesIdDeleteResponse404.response404();

  /// Internal Server Error
  factory UsersIdentityKeyZonesIdDeleteResponse.response500() =>
      UsersIdentityKeyZonesIdDeleteResponse500.response500();

  void map(
      {@_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdDeleteResponse204> on204,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdDeleteResponse403> on403,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdDeleteResponse404> on404,
      @_i3.required
          _i2.ResponseMap<UsersIdentityKeyZonesIdDeleteResponse500> on500}) {
    if (this is UsersIdentityKeyZonesIdDeleteResponse204) {
      on204((this as UsersIdentityKeyZonesIdDeleteResponse204));
    } else if (this is UsersIdentityKeyZonesIdDeleteResponse403) {
      on403((this as UsersIdentityKeyZonesIdDeleteResponse403));
    } else if (this is UsersIdentityKeyZonesIdDeleteResponse404) {
      on404((this as UsersIdentityKeyZonesIdDeleteResponse404));
    } else if (this is UsersIdentityKeyZonesIdDeleteResponse500) {
      on500((this as UsersIdentityKeyZonesIdDeleteResponse500));
    } else {
      throw StateError('Invalid instance type $this');
    }
  }
}

abstract class OeamtcUser {
  /// Returns a list af all vehicles trip logs
  /// Get trip logs overview of all vehicles owned by the user. If a vehicle does not belong to the user the log is treated as archived and may not be modified
  /// get: /users/{identityKey}/tripLogs
  Future<UsersIdentityKeyTripLogsGetResponse> usersIdentityKeyTripLogsGet(
      _i2.OpenApiRequest request, String identityKey);

  /// Returns paginated trips owned by the user and done by the vehicle
  /// Get user trips for a particular vehicle, filterable by various criteria as well as sorting and pagination
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips
  Future<UsersIdentityKeyVehiclesVehicleIdTripsGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsGet(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds,
          bool filterFsl,
          bool filterWork,
          String sort,
          String order,
          int pageOffset,
          int pageLimit);

  /// Create a trip
  /// create a trip for the given user corresponding to the given vehicle
  /// post: /users/{identityKey}/vehicles/{vehicleId}/trips
  Future<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse>
      usersIdentityKeyVehiclesVehicleIdTripsPost(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          bool validateConflict,
          String creationId,
          TripMutation body);

  /// Returns paginated trips owned by the user and done by the vehicle
  /// Get user trips for a particular vehicle, filterable by various criteria as well as sorting and pagination
  /// get: /users/{identityKey}/trips
  Future<UsersIdentityKeyTripsGetResponse> usersIdentityKeyTripsGet(
      _i2.OpenApiRequest request,
      String identityKey,
      int filterVehicleId,
      String filterFrom,
      String filterUntil,
      String filterTagIds,
      String filterPilotIds,
      String filterZoneIds,
      bool filterFsl,
      bool filterWork,
      String sort,
      String order,
      int pageOffset,
      int pageLimit);

  /// Create a trip
  /// create a trip for the given user
  /// post: /users/{identityKey}/trips
  Future<UsersIdentityKeyTripsPostResponse> usersIdentityKeyTripsPost(
      _i2.OpenApiRequest request,
      String identityKey,
      bool validateConflict,
      String creationId,
      TripMutation body);

  /// Returns summarized information of trips
  /// Get summarized information regarding all trips such as total trip count, total distance and total trips duration
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/summary
  Future<UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsSummaryGet(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds);

  /// Returns summarized information of trips
  /// Get summarized information regarding all trips such as total trip count, total distance and total trips duration
  /// get: /users/{identityKey}/trips/summary
  Future<UsersIdentityKeyTripsSummaryGetResponse>
      usersIdentityKeyTripsSummaryGet(
          _i2.OpenApiRequest request,
          String identityKey,
          int filterVehicleId,
          String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds);

  /// Get a trip
  /// Get a single trip by id owned by the given user
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdGet(_i2.OpenApiRequest request,
          String identityKey, int vehicleId, int id);

  /// Update a trip
  /// Update a trip by id owned by the given user
  /// put: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdPut(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          int id,
          bool validateConflict,
          TripMutation body);

  /// Delete a trip
  /// Delete a single trip by id owned by the given user
  /// delete: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdDelete(_i2.OpenApiRequest request,
          String identityKey, int vehicleId, int id);

  /// Get a trip
  /// Get a single trip by id owned by the given user
  /// get: /users/{identityKey}/trips/{id}
  Future<UsersIdentityKeyTripsIdGetResponse> usersIdentityKeyTripsIdGet(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Update a trip
  /// Update a trip by id owned by the given user
  /// put: /users/{identityKey}/trips/{id}
  Future<UsersIdentityKeyTripsIdPutResponse> usersIdentityKeyTripsIdPut(
      _i2.OpenApiRequest request,
      String identityKey,
      int id,
      bool validateConflict,
      TripMutation body);

  /// Delete a trip
  /// Delete a single trip by id owned by the given user
  /// delete: /users/{identityKey}/trips/{id}
  Future<UsersIdentityKeyTripsIdDeleteResponse> usersIdentityKeyTripsIdDelete(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Returns errors in the given tripLog
  /// Get error in a triplog for a particular vehicle, filterable by start and end time
  /// get: /users/{identityKey}/vehicles/{vehicleId}/tripErrors
  Future<UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripErrorsGet(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          String filterFrom,
          String filterUntil);

  /// get trips formatted for being exported
  /// get all trips formatted for being exported in the given date ranges
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/export
  Future<UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsExportGet(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds);

  /// send email with exported trips in the desired format
  /// send email to the abonnement user with the trips exported in the desired format and date ranges. Filters for tags and pilots supported.
  /// post: /users/{identityKey}/vehicles/{vehicleId}/trips/export
  Future<UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse>
      usersIdentityKeyVehiclesVehicleIdTripsExportPost(
          _i2.OpenApiRequest request,
          String identityKey,
          int vehicleId,
          ExportBody body);

  /// send email with exported trips in the desired format
  /// send email to the abonnement user with the trips exported in the desired format and date ranges. Filters for tags and pilots supported.
  /// post: /users/{identityKey}/trips/export
  Future<UsersIdentityKeyTripsExportPostResponse>
      usersIdentityKeyTripsExportPost(
          _i2.OpenApiRequest request, String identityKey, ExportBody body);

  /// Returns the pilots owned by the user
  /// get: /users/{identityKey}/pilots
  Future<UsersIdentityKeyPilotsGetResponse> usersIdentityKeyPilotsGet(
      _i2.OpenApiRequest request, String identityKey);

  /// Create a pilot
  /// post: /users/{identityKey}/pilots
  Future<UsersIdentityKeyPilotsPostResponse> usersIdentityKeyPilotsPost(
      _i2.OpenApiRequest request,
      String identityKey,
      String creationId,
      PilotMutation body);

  /// Get a pilot
  /// Get a single pilot by id owned by the given user
  /// get: /users/{identityKey}/pilots/{id}
  Future<UsersIdentityKeyPilotsIdGetResponse> usersIdentityKeyPilotsIdGet(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Update a pilot
  /// Update a pilot by id owned by the given user
  /// put: /users/{identityKey}/pilots/{id}
  Future<UsersIdentityKeyPilotsIdPutResponse> usersIdentityKeyPilotsIdPut(
      _i2.OpenApiRequest request,
      String identityKey,
      int id,
      PilotMutation body);

  /// Delete a pilot
  /// Delete a single pilot by id owned by the given user
  /// delete: /users/{identityKey}/pilots/{id}
  Future<UsersIdentityKeyPilotsIdDeleteResponse> usersIdentityKeyPilotsIdDelete(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Returns the tags owned by the user
  /// get: /users/{identityKey}/tags
  Future<UsersIdentityKeyTagsGetResponse> usersIdentityKeyTagsGet(
      _i2.OpenApiRequest request, String identityKey);

  /// Create a tag
  /// post: /users/{identityKey}/tags
  Future<UsersIdentityKeyTagsPostResponse> usersIdentityKeyTagsPost(
      _i2.OpenApiRequest request,
      String identityKey,
      String creationId,
      TagMutation body);

  /// Get a tag
  /// Get a single tag by id owned by the given user
  /// get: /users/{identityKey}/tags/{id}
  Future<UsersIdentityKeyTagsIdGetResponse> usersIdentityKeyTagsIdGet(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Update a tag
  /// Update a tag by id owned by the given user
  /// put: /users/{identityKey}/tags/{id}
  Future<UsersIdentityKeyTagsIdPutResponse> usersIdentityKeyTagsIdPut(
      _i2.OpenApiRequest request, String identityKey, int id, TagMutation body);

  /// Delete a tag
  /// Delete a single tag by id owned by the given user
  /// delete: /users/{identityKey}/tags/{id}
  Future<UsersIdentityKeyTagsIdDeleteResponse> usersIdentityKeyTagsIdDelete(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Returns the zones owned by the user
  /// get: /users/{identityKey}/zones
  Future<UsersIdentityKeyZonesGetResponse> usersIdentityKeyZonesGet(
      _i2.OpenApiRequest request, String identityKey);

  /// Create a zone
  /// post: /users/{identityKey}/zones
  Future<UsersIdentityKeyZonesPostResponse> usersIdentityKeyZonesPost(
      _i2.OpenApiRequest request,
      String identityKey,
      String creationId,
      ZoneMutation body);

  /// Get a zone
  /// Get a single zone by id owned by the given user
  /// get: /users/{identityKey}/zones/{id}
  Future<UsersIdentityKeyZonesIdGetResponse> usersIdentityKeyZonesIdGet(
      _i2.OpenApiRequest request, String identityKey, int id);

  /// Update a zone
  /// Update a zone by id owned by the given user
  /// put: /users/{identityKey}/zones/{id}
  Future<UsersIdentityKeyZonesIdPutResponse> usersIdentityKeyZonesIdPut(
      _i2.OpenApiRequest request,
      String identityKey,
      int id,
      ZoneMutation body);

  /// Delete a zone
  /// Delete a single zone by id owned by the given user
  /// delete: /users/{identityKey}/zones/{id}
  Future<UsersIdentityKeyZonesIdDeleteResponse> usersIdentityKeyZonesIdDelete(
      _i2.OpenApiRequest request, String identityKey, int id);
}

abstract class OeamtcUserClient {
  factory OeamtcUserClient(
          Uri baseUri, _i2.OpenApiRequestSender requestSender) =>
      _OeamtcUserClientImpl._(baseUri, requestSender);

  /// Returns a list af all vehicles trip logs
  /// Get trip logs overview of all vehicles owned by the user. If a vehicle does not belong to the user the log is treated as archived and may not be modified
  /// get: /users/{identityKey}/tripLogs
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyTripLogsGetResponse> usersIdentityKeyTripLogsGet(
      String identityKey);

  /// Returns paginated trips owned by the user and done by the vehicle
  /// Get user trips for a particular vehicle, filterable by various criteria as well as sorting and pagination
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  /// * [filterFsl]: trips with the fsl property with the according value.
  /// * [filterWork]: trips with the work property with the according value.
  /// * [sort]: Field to sort on. Default is ``startTimestamp`` sorting. Acceptable values = ``["startTimestamp", "endTimestamp"]``
  /// * [order]: Sort either ascending (asc) or descending (desc)
  /// * [pageOffset]: do skip as many result items from the beginning; Default: ``0``.
  /// * [pageLimit]: do only return at most as many result items; Default: ``20``. Minimum: 1
  Future<UsersIdentityKeyVehiclesVehicleIdTripsGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsGet(
          String identityKey, int vehicleId,
          {String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds,
          bool filterFsl,
          bool filterWork,
          String sort,
          String order,
          int pageOffset,
          int pageLimit});

  /// Create a trip
  /// create a trip for the given user corresponding to the given vehicle
  /// post: /users/{identityKey}/vehicles/{vehicleId}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  /// * [creationId]: optional parameter to prevent multiple creations of the same trip
  Future<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse>
      usersIdentityKeyVehiclesVehicleIdTripsPost(
          String identityKey, int vehicleId, TripMutation body,
          {bool validateConflict, String creationId});

  /// Returns paginated trips owned by the user and done by the vehicle
  /// Get user trips for a particular vehicle, filterable by various criteria as well as sorting and pagination
  /// get: /users/{identityKey}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [filterVehicleId]: return trips belonging to given vehicle
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  /// * [filterFsl]: trips with the fsl property with the according value.
  /// * [filterWork]: trips with the work property with the according value.
  /// * [sort]: Field to sort on. Default is ``startTimestamp`` sorting. Acceptable values = ``["startTimestamp", "endTimestamp"]``
  /// * [order]: Sort either ascending (asc) or descending (desc)
  /// * [pageOffset]: do skip as many result items from the beginning; Default: ``0``.
  /// * [pageLimit]: do only return at most as many result items; Default: ``20``. Minimum: 1
  Future<UsersIdentityKeyTripsGetResponse> usersIdentityKeyTripsGet(
      String identityKey,
      {int filterVehicleId,
      String filterFrom,
      String filterUntil,
      String filterTagIds,
      String filterPilotIds,
      String filterZoneIds,
      bool filterFsl,
      bool filterWork,
      String sort,
      String order,
      int pageOffset,
      int pageLimit});

  /// Create a trip
  /// create a trip for the given user
  /// post: /users/{identityKey}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  /// * [creationId]: optional parameter to prevent multiple creations of the same trip
  Future<UsersIdentityKeyTripsPostResponse> usersIdentityKeyTripsPost(
      String identityKey, TripMutation body,
      {bool validateConflict, String creationId});

  /// Returns summarized information of trips
  /// Get summarized information regarding all trips such as total trip count, total distance and total trips duration
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/summary
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  Future<UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsSummaryGet(
          String identityKey, int vehicleId,
          {String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds});

  /// Returns summarized information of trips
  /// Get summarized information regarding all trips such as total trip count, total distance and total trips duration
  /// get: /users/{identityKey}/trips/summary
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [filterVehicleId]: return trips belonging to given vehicle
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  Future<UsersIdentityKeyTripsSummaryGetResponse>
      usersIdentityKeyTripsSummaryGet(String identityKey,
          {int filterVehicleId,
          String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds});

  /// Get a trip
  /// Get a single trip by id owned by the given user
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdGet(
          String identityKey, int vehicleId, int id);

  /// Update a trip
  /// Update a trip by id owned by the given user
  /// put: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [id]: The entity's primary id
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdPut(
          String identityKey, int vehicleId, int id, TripMutation body,
          {bool validateConflict});

  /// Delete a trip
  /// Delete a single trip by id owned by the given user
  /// delete: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdDelete(
          String identityKey, int vehicleId, int id);

  /// Get a trip
  /// Get a single trip by id owned by the given user
  /// get: /users/{identityKey}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyTripsIdGetResponse> usersIdentityKeyTripsIdGet(
      String identityKey, int id);

  /// Update a trip
  /// Update a trip by id owned by the given user
  /// put: /users/{identityKey}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  Future<UsersIdentityKeyTripsIdPutResponse> usersIdentityKeyTripsIdPut(
      String identityKey, int id, TripMutation body,
      {bool validateConflict});

  /// Delete a trip
  /// Delete a single trip by id owned by the given user
  /// delete: /users/{identityKey}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyTripsIdDeleteResponse> usersIdentityKeyTripsIdDelete(
      String identityKey, int id);

  /// Returns errors in the given tripLog
  /// Get error in a triplog for a particular vehicle, filterable by start and end time
  /// get: /users/{identityKey}/vehicles/{vehicleId}/tripErrors
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trip errors before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trip errors after the specified date-time. Format: rfc3339. Default: ``now``
  Future<UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripErrorsGet(
          String identityKey, int vehicleId,
          {String filterFrom, String filterUntil});

  /// get trips formatted for being exported
  /// get all trips formatted for being exported in the given date ranges
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/export
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  Future<UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsExportGet(
          String identityKey, int vehicleId,
          {String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds});

  /// send email with exported trips in the desired format
  /// send email to the abonnement user with the trips exported in the desired format and date ranges. Filters for tags and pilots supported.
  /// post: /users/{identityKey}/vehicles/{vehicleId}/trips/export
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  Future<UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse>
      usersIdentityKeyVehiclesVehicleIdTripsExportPost(
          String identityKey, int vehicleId, ExportBody body);

  /// send email with exported trips in the desired format
  /// send email to the abonnement user with the trips exported in the desired format and date ranges. Filters for tags and pilots supported.
  /// post: /users/{identityKey}/trips/export
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyTripsExportPostResponse>
      usersIdentityKeyTripsExportPost(String identityKey, ExportBody body);

  /// Returns the pilots owned by the user
  /// get: /users/{identityKey}/pilots
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyPilotsGetResponse> usersIdentityKeyPilotsGet(
      String identityKey);

  /// Create a pilot
  /// post: /users/{identityKey}/pilots
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyPilotsPostResponse> usersIdentityKeyPilotsPost(
      String identityKey, PilotMutation body,
      {String creationId});

  /// Get a pilot
  /// Get a single pilot by id owned by the given user
  /// get: /users/{identityKey}/pilots/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyPilotsIdGetResponse> usersIdentityKeyPilotsIdGet(
      String identityKey, int id);

  /// Update a pilot
  /// Update a pilot by id owned by the given user
  /// put: /users/{identityKey}/pilots/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyPilotsIdPutResponse> usersIdentityKeyPilotsIdPut(
      String identityKey, int id, PilotMutation body);

  /// Delete a pilot
  /// Delete a single pilot by id owned by the given user
  /// delete: /users/{identityKey}/pilots/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyPilotsIdDeleteResponse> usersIdentityKeyPilotsIdDelete(
      String identityKey, int id);

  /// Returns the tags owned by the user
  /// get: /users/{identityKey}/tags
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyTagsGetResponse> usersIdentityKeyTagsGet(
      String identityKey);

  /// Create a tag
  /// post: /users/{identityKey}/tags
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyTagsPostResponse> usersIdentityKeyTagsPost(
      String identityKey, TagMutation body,
      {String creationId});

  /// Get a tag
  /// Get a single tag by id owned by the given user
  /// get: /users/{identityKey}/tags/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyTagsIdGetResponse> usersIdentityKeyTagsIdGet(
      String identityKey, int id);

  /// Update a tag
  /// Update a tag by id owned by the given user
  /// put: /users/{identityKey}/tags/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyTagsIdPutResponse> usersIdentityKeyTagsIdPut(
      String identityKey, int id, TagMutation body);

  /// Delete a tag
  /// Delete a single tag by id owned by the given user
  /// delete: /users/{identityKey}/tags/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyTagsIdDeleteResponse> usersIdentityKeyTagsIdDelete(
      String identityKey, int id);

  /// Returns the zones owned by the user
  /// get: /users/{identityKey}/zones
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyZonesGetResponse> usersIdentityKeyZonesGet(
      String identityKey);

  /// Create a zone
  /// post: /users/{identityKey}/zones
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  Future<UsersIdentityKeyZonesPostResponse> usersIdentityKeyZonesPost(
      String identityKey, ZoneMutation body,
      {String creationId});

  /// Get a zone
  /// Get a single zone by id owned by the given user
  /// get: /users/{identityKey}/zones/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyZonesIdGetResponse> usersIdentityKeyZonesIdGet(
      String identityKey, int id);

  /// Update a zone
  /// Update a zone by id owned by the given user
  /// put: /users/{identityKey}/zones/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyZonesIdPutResponse> usersIdentityKeyZonesIdPut(
      String identityKey, int id, ZoneMutation body);

  /// Delete a zone
  /// Delete a single zone by id owned by the given user
  /// delete: /users/{identityKey}/zones/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  Future<UsersIdentityKeyZonesIdDeleteResponse> usersIdentityKeyZonesIdDelete(
      String identityKey, int id);
}

class _OeamtcUserClientImpl extends _i2.OpenApiClientBase
    implements OeamtcUserClient {
  _OeamtcUserClientImpl._(this.baseUri, this.requestSender);

  @override
  final Uri baseUri;

  @override
  final _i2.OpenApiRequestSender requestSender;

  /// Returns a list af all vehicles trip logs
  /// Get trip logs overview of all vehicles owned by the user. If a vehicle does not belong to the user the log is treated as archived and may not be modified
  /// get: /users/{identityKey}/tripLogs
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyTripLogsGetResponse> usersIdentityKeyTripLogsGet(
      String identityKey) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/tripLogs');
    request.addPathParameter('identityKey', encodeString(identityKey));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripLogsGetResponse200.response200(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripLogsGetResponse500.response500()
    });
  }

  /// Returns paginated trips owned by the user and done by the vehicle
  /// Get user trips for a particular vehicle, filterable by various criteria as well as sorting and pagination
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  /// * [filterFsl]: trips with the fsl property with the according value.
  /// * [filterWork]: trips with the work property with the according value.
  /// * [sort]: Field to sort on. Default is ``startTimestamp`` sorting. Acceptable values = ``["startTimestamp", "endTimestamp"]``
  /// * [order]: Sort either ascending (asc) or descending (desc)
  /// * [pageOffset]: do skip as many result items from the beginning; Default: ``0``.
  /// * [pageLimit]: do only return at most as many result items; Default: ``20``. Minimum: 1
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsGet(
          String identityKey, int vehicleId,
          {String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds,
          bool filterFsl,
          bool filterWork,
          String sort,
          String order,
          int pageOffset,
          int pageLimit}) async {
    final request = _i2.OpenApiClientRequest(
        'get', '/users/{identityKey}/vehicles/{vehicleId}/trips');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addQueryParameter('filter.from', encodeString(filterFrom));
    request.addQueryParameter('filter.until', encodeString(filterUntil));
    request.addQueryParameter('filter.tagIds', encodeString(filterTagIds));
    request.addQueryParameter('filter.pilotIds', encodeString(filterPilotIds));
    request.addQueryParameter('filter.zoneIds', encodeString(filterZoneIds));
    request.addQueryParameter('filter.fsl', encodeBool(filterFsl));
    request.addQueryParameter('filter.work', encodeBool(filterWork));
    request.addQueryParameter('sort', encodeString(sort));
    request.addQueryParameter('order', encodeString(order));
    request.addQueryParameter('page.offset', encodeInt(pageOffset));
    request.addQueryParameter('page.limit', encodeInt(pageLimit));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsGetResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsGetResponse400.response400(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsGetResponse500.response500()
    });
  }

  /// Create a trip
  /// create a trip for the given user corresponding to the given vehicle
  /// post: /users/{identityKey}/vehicles/{vehicleId}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  /// * [creationId]: optional parameter to prevent multiple creations of the same trip
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsPostResponse>
      usersIdentityKeyVehiclesVehicleIdTripsPost(
          String identityKey, int vehicleId, TripMutation body,
          {bool validateConflict, String creationId}) async {
    final request = _i2.OpenApiClientRequest(
        'post', '/users/{identityKey}/vehicles/{vehicleId}/trips');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addQueryParameter('validateConflict', encodeBool(validateConflict));
    request.addHeaderParameter('creation_id', encodeString(creationId));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '201': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsPostResponse201.response201(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsPostResponse400.response400(),
      '409': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsPostResponse409.response409(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsPostResponse500.response500()
    });
  }

  /// Returns paginated trips owned by the user and done by the vehicle
  /// Get user trips for a particular vehicle, filterable by various criteria as well as sorting and pagination
  /// get: /users/{identityKey}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [filterVehicleId]: return trips belonging to given vehicle
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  /// * [filterFsl]: trips with the fsl property with the according value.
  /// * [filterWork]: trips with the work property with the according value.
  /// * [sort]: Field to sort on. Default is ``startTimestamp`` sorting. Acceptable values = ``["startTimestamp", "endTimestamp"]``
  /// * [order]: Sort either ascending (asc) or descending (desc)
  /// * [pageOffset]: do skip as many result items from the beginning; Default: ``0``.
  /// * [pageLimit]: do only return at most as many result items; Default: ``20``. Minimum: 1
  @override
  Future<UsersIdentityKeyTripsGetResponse> usersIdentityKeyTripsGet(
      String identityKey,
      {int filterVehicleId,
      String filterFrom,
      String filterUntil,
      String filterTagIds,
      String filterPilotIds,
      String filterZoneIds,
      bool filterFsl,
      bool filterWork,
      String sort,
      String order,
      int pageOffset,
      int pageLimit}) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/trips');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addQueryParameter('filter.vehicleId', encodeInt(filterVehicleId));
    request.addQueryParameter('filter.from', encodeString(filterFrom));
    request.addQueryParameter('filter.until', encodeString(filterUntil));
    request.addQueryParameter('filter.tagIds', encodeString(filterTagIds));
    request.addQueryParameter('filter.pilotIds', encodeString(filterPilotIds));
    request.addQueryParameter('filter.zoneIds', encodeString(filterZoneIds));
    request.addQueryParameter('filter.fsl', encodeBool(filterFsl));
    request.addQueryParameter('filter.work', encodeBool(filterWork));
    request.addQueryParameter('sort', encodeString(sort));
    request.addQueryParameter('order', encodeString(order));
    request.addQueryParameter('page.offset', encodeInt(pageOffset));
    request.addQueryParameter('page.limit', encodeInt(pageLimit));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsGetResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsGetResponse400.response400(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsGetResponse500.response500()
    });
  }

  /// Create a trip
  /// create a trip for the given user
  /// post: /users/{identityKey}/trips
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  /// * [creationId]: optional parameter to prevent multiple creations of the same trip
  @override
  Future<UsersIdentityKeyTripsPostResponse> usersIdentityKeyTripsPost(
      String identityKey, TripMutation body,
      {bool validateConflict, String creationId}) async {
    final request =
        _i2.OpenApiClientRequest('post', '/users/{identityKey}/trips');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addQueryParameter('validateConflict', encodeBool(validateConflict));
    request.addHeaderParameter('creation_id', encodeString(creationId));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '201': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsPostResponse201.response201(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsPostResponse400.response400(),
      '409': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsPostResponse409.response409(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsPostResponse500.response500()
    });
  }

  /// Returns summarized information of trips
  /// Get summarized information regarding all trips such as total trip count, total distance and total trips duration
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/summary
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsSummaryGet(
          String identityKey, int vehicleId,
          {String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds}) async {
    final request = _i2.OpenApiClientRequest(
        'get', '/users/{identityKey}/vehicles/{vehicleId}/trips/summary');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addQueryParameter('filter.from', encodeString(filterFrom));
    request.addQueryParameter('filter.until', encodeString(filterUntil));
    request.addQueryParameter('filter.tagIds', encodeString(filterTagIds));
    request.addQueryParameter('filter.pilotIds', encodeString(filterPilotIds));
    request.addQueryParameter('filter.zoneIds', encodeString(filterZoneIds));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse200
              .response200(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsSummaryGetResponse500
              .response500()
    });
  }

  /// Returns summarized information of trips
  /// Get summarized information regarding all trips such as total trip count, total distance and total trips duration
  /// get: /users/{identityKey}/trips/summary
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [filterVehicleId]: return trips belonging to given vehicle
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  /// * [filterZoneIds]: If this parameter is given, it must be a comma separated list of zone ids. Then, returned trips must have at least one of the listed zones set either at their start or end.
  @override
  Future<UsersIdentityKeyTripsSummaryGetResponse>
      usersIdentityKeyTripsSummaryGet(String identityKey,
          {int filterVehicleId,
          String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds,
          String filterZoneIds}) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/trips/summary');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addQueryParameter('filter.vehicleId', encodeInt(filterVehicleId));
    request.addQueryParameter('filter.from', encodeString(filterFrom));
    request.addQueryParameter('filter.until', encodeString(filterUntil));
    request.addQueryParameter('filter.tagIds', encodeString(filterTagIds));
    request.addQueryParameter('filter.pilotIds', encodeString(filterPilotIds));
    request.addQueryParameter('filter.zoneIds', encodeString(filterZoneIds));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsSummaryGetResponse200.response200(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsSummaryGetResponse500.response500()
    });
  }

  /// Get a trip
  /// Get a single trip by id owned by the given user
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdGet(
          String identityKey, int vehicleId, int id) async {
    final request = _i2.OpenApiClientRequest(
        'get', '/users/{identityKey}/vehicles/{vehicleId}/trips/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse200.response200(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdGetResponse500.response500()
    });
  }

  /// Update a trip
  /// Update a trip by id owned by the given user
  /// put: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [id]: The entity's primary id
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdPut(
          String identityKey, int vehicleId, int id, TripMutation body,
          {bool validateConflict}) async {
    final request = _i2.OpenApiClientRequest(
        'put', '/users/{identityKey}/vehicles/{vehicleId}/trips/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addPathParameter('id', encodeInt(id));
    request.addQueryParameter('validateConflict', encodeBool(validateConflict));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse400.response400(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdPutResponse500.response500()
    });
  }

  /// Delete a trip
  /// Delete a single trip by id owned by the given user
  /// delete: /users/{identityKey}/vehicles/{vehicleId}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse>
      usersIdentityKeyVehiclesVehicleIdTripsIdDelete(
          String identityKey, int vehicleId, int id) async {
    final request = _i2.OpenApiClientRequest(
        'delete', '/users/{identityKey}/vehicles/{vehicleId}/trips/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse204
              .response204(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse403
              .response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse404
              .response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsIdDeleteResponse500
              .response500()
    });
  }

  /// Get a trip
  /// Get a single trip by id owned by the given user
  /// get: /users/{identityKey}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyTripsIdGetResponse> usersIdentityKeyTripsIdGet(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/trips/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdGetResponse200.response200(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdGetResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdGetResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdGetResponse500.response500()
    });
  }

  /// Update a trip
  /// Update a trip by id owned by the given user
  /// put: /users/{identityKey}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  /// * [validateConflict]: validate for overlaps or gaps in time/odometer
  @override
  Future<UsersIdentityKeyTripsIdPutResponse> usersIdentityKeyTripsIdPut(
      String identityKey, int id, TripMutation body,
      {bool validateConflict}) async {
    final request =
        _i2.OpenApiClientRequest('put', '/users/{identityKey}/trips/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    request.addQueryParameter('validateConflict', encodeBool(validateConflict));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdPutResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdPutResponse400.response400(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdPutResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdPutResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdPutResponse500.response500()
    });
  }

  /// Delete a trip
  /// Delete a single trip by id owned by the given user
  /// delete: /users/{identityKey}/trips/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyTripsIdDeleteResponse> usersIdentityKeyTripsIdDelete(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('delete', '/users/{identityKey}/trips/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdDeleteResponse204.response204(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdDeleteResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdDeleteResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsIdDeleteResponse500.response500()
    });
  }

  /// Returns errors in the given tripLog
  /// Get error in a triplog for a particular vehicle, filterable by start and end time
  /// get: /users/{identityKey}/vehicles/{vehicleId}/tripErrors
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trip errors before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trip errors after the specified date-time. Format: rfc3339. Default: ``now``
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripErrorsGet(
          String identityKey, int vehicleId,
          {String filterFrom, String filterUntil}) async {
    final request = _i2.OpenApiClientRequest(
        'get', '/users/{identityKey}/vehicles/{vehicleId}/tripErrors');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addQueryParameter('filter.from', encodeString(filterFrom));
    request.addQueryParameter('filter.until', encodeString(filterUntil));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse200
              .response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse400
              .response400(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripErrorsGetResponse500
              .response500()
    });
  }

  /// get trips formatted for being exported
  /// get all trips formatted for being exported in the given date ranges
  /// get: /users/{identityKey}/vehicles/{vehicleId}/trips/export
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  /// * [filterFrom]: do not return trips before the specified date-time. Format: rfc3339. Default: ``1970-01-01T00:00:00Z``
  /// * [filterUntil]: do not return trips after the specified date-time. Format: rfc3339. Default: ``now``
  /// * [filterTagIds]: If this parameter is given, it must be a comma separated list of tag ids. Then, returned trips must have at least one of the listed tags set.
  /// * [filterPilotIds]: If this parameter is given, it must be a comma separated list of pilot ids. Then, returned trips must have at least one of the listed pilots set.
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse>
      usersIdentityKeyVehiclesVehicleIdTripsExportGet(
          String identityKey, int vehicleId,
          {String filterFrom,
          String filterUntil,
          String filterTagIds,
          String filterPilotIds}) async {
    final request = _i2.OpenApiClientRequest(
        'get', '/users/{identityKey}/vehicles/{vehicleId}/trips/export');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.addQueryParameter('filter.from', encodeString(filterFrom));
    request.addQueryParameter('filter.until', encodeString(filterUntil));
    request.addQueryParameter('filter.tagIds', encodeString(filterTagIds));
    request.addQueryParameter('filter.pilotIds', encodeString(filterPilotIds));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse200
              .response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse400
              .response400(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportGetResponse500
              .response500()
    });
  }

  /// send email with exported trips in the desired format
  /// send email to the abonnement user with the trips exported in the desired format and date ranges. Filters for tags and pilots supported.
  /// post: /users/{identityKey}/vehicles/{vehicleId}/trips/export
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [vehicleId]: The OEAMTC KFZ Vehicle Id
  @override
  Future<UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse>
      usersIdentityKeyVehiclesVehicleIdTripsExportPost(
          String identityKey, int vehicleId, ExportBody body) async {
    final request = _i2.OpenApiClientRequest(
        'post', '/users/{identityKey}/vehicles/{vehicleId}/trips/export');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('vehicleId', encodeInt(vehicleId));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse204
              .response204(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse400
              .response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse404
              .response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyVehiclesVehicleIdTripsExportPostResponse500
              .response500()
    });
  }

  /// send email with exported trips in the desired format
  /// send email to the abonnement user with the trips exported in the desired format and date ranges. Filters for tags and pilots supported.
  /// post: /users/{identityKey}/trips/export
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyTripsExportPostResponse>
      usersIdentityKeyTripsExportPost(
          String identityKey, ExportBody body) async {
    final request =
        _i2.OpenApiClientRequest('post', '/users/{identityKey}/trips/export');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsExportPostResponse204.response204(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsExportPostResponse400.response400(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsExportPostResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTripsExportPostResponse500.response500()
    });
  }

  /// Returns the pilots owned by the user
  /// get: /users/{identityKey}/pilots
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyPilotsGetResponse> usersIdentityKeyPilotsGet(
      String identityKey) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/pilots');
    request.addPathParameter('identityKey', encodeString(identityKey));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsGetResponse200.response200(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsGetResponse500.response500()
    });
  }

  /// Create a pilot
  /// post: /users/{identityKey}/pilots
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyPilotsPostResponse> usersIdentityKeyPilotsPost(
      String identityKey, PilotMutation body,
      {String creationId}) async {
    final request =
        _i2.OpenApiClientRequest('post', '/users/{identityKey}/pilots');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addHeaderParameter('creation_id', encodeString(creationId));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '201': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsPostResponse201.response201(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsPostResponse400.response400(),
      '409': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsPostResponse409.response409(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsPostResponse500.response500()
    });
  }

  /// Get a pilot
  /// Get a single pilot by id owned by the given user
  /// get: /users/{identityKey}/pilots/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyPilotsIdGetResponse> usersIdentityKeyPilotsIdGet(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/pilots/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdGetResponse200.response200(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdGetResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdGetResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdGetResponse500.response500()
    });
  }

  /// Update a pilot
  /// Update a pilot by id owned by the given user
  /// put: /users/{identityKey}/pilots/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyPilotsIdPutResponse> usersIdentityKeyPilotsIdPut(
      String identityKey, int id, PilotMutation body) async {
    final request =
        _i2.OpenApiClientRequest('put', '/users/{identityKey}/pilots/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdPutResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdPutResponse400.response400(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdPutResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdPutResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdPutResponse500.response500()
    });
  }

  /// Delete a pilot
  /// Delete a single pilot by id owned by the given user
  /// delete: /users/{identityKey}/pilots/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyPilotsIdDeleteResponse> usersIdentityKeyPilotsIdDelete(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('delete', '/users/{identityKey}/pilots/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdDeleteResponse204.response204(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdDeleteResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdDeleteResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyPilotsIdDeleteResponse500.response500()
    });
  }

  /// Returns the tags owned by the user
  /// get: /users/{identityKey}/tags
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyTagsGetResponse> usersIdentityKeyTagsGet(
      String identityKey) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/tags');
    request.addPathParameter('identityKey', encodeString(identityKey));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsGetResponse200.response200(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsGetResponse500.response500()
    });
  }

  /// Create a tag
  /// post: /users/{identityKey}/tags
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyTagsPostResponse> usersIdentityKeyTagsPost(
      String identityKey, TagMutation body,
      {String creationId}) async {
    final request =
        _i2.OpenApiClientRequest('post', '/users/{identityKey}/tags');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addHeaderParameter('creation_id', encodeString(creationId));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '201': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsPostResponse201.response201(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsPostResponse400.response400(),
      '409': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsPostResponse409.response409(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsPostResponse500.response500()
    });
  }

  /// Get a tag
  /// Get a single tag by id owned by the given user
  /// get: /users/{identityKey}/tags/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyTagsIdGetResponse> usersIdentityKeyTagsIdGet(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/tags/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdGetResponse200.response200(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdGetResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdGetResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdGetResponse500.response500()
    });
  }

  /// Update a tag
  /// Update a tag by id owned by the given user
  /// put: /users/{identityKey}/tags/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyTagsIdPutResponse> usersIdentityKeyTagsIdPut(
      String identityKey, int id, TagMutation body) async {
    final request =
        _i2.OpenApiClientRequest('put', '/users/{identityKey}/tags/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdPutResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdPutResponse400.response400(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdPutResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdPutResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdPutResponse500.response500()
    });
  }

  /// Delete a tag
  /// Delete a single tag by id owned by the given user
  /// delete: /users/{identityKey}/tags/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyTagsIdDeleteResponse> usersIdentityKeyTagsIdDelete(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('delete', '/users/{identityKey}/tags/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdDeleteResponse204.response204(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdDeleteResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdDeleteResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyTagsIdDeleteResponse500.response500()
    });
  }

  /// Returns the zones owned by the user
  /// get: /users/{identityKey}/zones
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyZonesGetResponse> usersIdentityKeyZonesGet(
      String identityKey) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/zones');
    request.addPathParameter('identityKey', encodeString(identityKey));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesGetResponse200.response200(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesGetResponse500.response500()
    });
  }

  /// Create a zone
  /// post: /users/{identityKey}/zones
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  @override
  Future<UsersIdentityKeyZonesPostResponse> usersIdentityKeyZonesPost(
      String identityKey, ZoneMutation body,
      {String creationId}) async {
    final request =
        _i2.OpenApiClientRequest('post', '/users/{identityKey}/zones');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addHeaderParameter('creation_id', encodeString(creationId));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '201': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesPostResponse201.response201(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesPostResponse400.response400(),
      '409': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesPostResponse409.response409(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesPostResponse500.response500()
    });
  }

  /// Get a zone
  /// Get a single zone by id owned by the given user
  /// get: /users/{identityKey}/zones/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyZonesIdGetResponse> usersIdentityKeyZonesIdGet(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('get', '/users/{identityKey}/zones/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdGetResponse200.response200(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdGetResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdGetResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdGetResponse500.response500()
    });
  }

  /// Update a zone
  /// Update a zone by id owned by the given user
  /// put: /users/{identityKey}/zones/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyZonesIdPutResponse> usersIdentityKeyZonesIdPut(
      String identityKey, int id, ZoneMutation body) async {
    final request =
        _i2.OpenApiClientRequest('put', '/users/{identityKey}/zones/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    request.setJsonBody(body.toJson());
    return await sendRequest(request, {
      '200': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdPutResponse200.response200(),
      '400': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdPutResponse400.response400(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdPutResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdPutResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdPutResponse500.response500()
    });
  }

  /// Delete a zone
  /// Delete a single zone by id owned by the given user
  /// delete: /users/{identityKey}/zones/{id}
  ///
  /// * [identityKey]: The user's identityKey - needs to be a valid UUID (RFC 4122)
  /// * [id]: The entity's primary id
  @override
  Future<UsersIdentityKeyZonesIdDeleteResponse> usersIdentityKeyZonesIdDelete(
      String identityKey, int id) async {
    final request =
        _i2.OpenApiClientRequest('delete', '/users/{identityKey}/zones/{id}');
    request.addPathParameter('identityKey', encodeString(identityKey));
    request.addPathParameter('id', encodeInt(id));
    return await sendRequest(request, {
      '204': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdDeleteResponse204.response204(),
      '403': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdDeleteResponse403.response403(),
      '404': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdDeleteResponse404.response404(),
      '500': (_i2.OpenApiClientResponse response) async =>
          UsersIdentityKeyZonesIdDeleteResponse500.response500()
    });
  }
}

class OeamtcUserRouter extends _i2.OpenApiServerRouterBase {
  OeamtcUserRouter(this.impl);

  final OeamtcUser impl;

  void configure() {
    addRoute('/users/{identityKey}/tripLogs', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripLogsGet(
          request, paramToString(request.pathParameter('identityKey')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToString(request.queryParameter('filter.from')),
          paramToString(request.queryParameter('filter.until')),
          paramToString(request.queryParameter('filter.tagIds')),
          paramToString(request.queryParameter('filter.pilotIds')),
          paramToString(request.queryParameter('filter.zoneIds')),
          paramToBool(request.queryParameter('filter.fsl')),
          paramToBool(request.queryParameter('filter.work')),
          paramToString(request.queryParameter('sort')),
          paramToString(request.queryParameter('order')),
          paramToInt(request.queryParameter('page.offset')),
          paramToInt(request.queryParameter('page.limit')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToBool(request.queryParameter('validateConflict')),
          paramToString(request.headerParameter('creation_id')),
          TripMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/trips', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.queryParameter('filter.vehicleId')),
          paramToString(request.queryParameter('filter.from')),
          paramToString(request.queryParameter('filter.until')),
          paramToString(request.queryParameter('filter.tagIds')),
          paramToString(request.queryParameter('filter.pilotIds')),
          paramToString(request.queryParameter('filter.zoneIds')),
          paramToBool(request.queryParameter('filter.fsl')),
          paramToBool(request.queryParameter('filter.work')),
          paramToString(request.queryParameter('sort')),
          paramToString(request.queryParameter('order')),
          paramToInt(request.queryParameter('page.offset')),
          paramToInt(request.queryParameter('page.limit')));
    });
    addRoute('/users/{identityKey}/trips', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToBool(request.queryParameter('validateConflict')),
          paramToString(request.headerParameter('creation_id')),
          TripMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips/summary', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsSummaryGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToString(request.queryParameter('filter.from')),
          paramToString(request.queryParameter('filter.until')),
          paramToString(request.queryParameter('filter.tagIds')),
          paramToString(request.queryParameter('filter.pilotIds')),
          paramToString(request.queryParameter('filter.zoneIds')));
    });
    addRoute('/users/{identityKey}/trips/summary', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsSummaryGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.queryParameter('filter.vehicleId')),
          paramToString(request.queryParameter('filter.from')),
          paramToString(request.queryParameter('filter.until')),
          paramToString(request.queryParameter('filter.tagIds')),
          paramToString(request.queryParameter('filter.pilotIds')),
          paramToString(request.queryParameter('filter.zoneIds')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips/{id}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsIdGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips/{id}', 'put',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsIdPut(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToInt(request.pathParameter('id')),
          paramToBool(request.queryParameter('validateConflict')),
          TripMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips/{id}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsIdDelete(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/trips/{id}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsIdGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/trips/{id}', 'put',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsIdPut(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')),
          paramToBool(request.queryParameter('validateConflict')),
          TripMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/trips/{id}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsIdDelete(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/tripErrors', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripErrorsGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToString(request.queryParameter('filter.from')),
          paramToString(request.queryParameter('filter.until')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips/export', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsExportGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          paramToString(request.queryParameter('filter.from')),
          paramToString(request.queryParameter('filter.until')),
          paramToString(request.queryParameter('filter.tagIds')),
          paramToString(request.queryParameter('filter.pilotIds')));
    });
    addRoute('/users/{identityKey}/vehicles/{vehicleId}/trips/export', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyVehiclesVehicleIdTripsExportPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('vehicleId')),
          ExportBody.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/trips/export', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTripsExportPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          ExportBody.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/pilots', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyPilotsGet(
          request, paramToString(request.pathParameter('identityKey')));
    });
    addRoute('/users/{identityKey}/pilots', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyPilotsPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToString(request.headerParameter('creation_id')),
          PilotMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/pilots/{id}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyPilotsIdGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/pilots/{id}', 'put',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyPilotsIdPut(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')),
          PilotMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/pilots/{id}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyPilotsIdDelete(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/tags', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTagsGet(
          request, paramToString(request.pathParameter('identityKey')));
    });
    addRoute('/users/{identityKey}/tags', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTagsPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToString(request.headerParameter('creation_id')),
          TagMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/tags/{id}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTagsIdGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/tags/{id}', 'put',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTagsIdPut(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')),
          TagMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/tags/{id}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyTagsIdDelete(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/zones', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyZonesGet(
          request, paramToString(request.pathParameter('identityKey')));
    });
    addRoute('/users/{identityKey}/zones', 'post',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyZonesPost(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToString(request.headerParameter('creation_id')),
          ZoneMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/zones/{id}', 'get',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyZonesIdGet(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
    addRoute('/users/{identityKey}/zones/{id}', 'put',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyZonesIdPut(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')),
          ZoneMutation.fromJson(await request.readJsonBody()));
    });
    addRoute('/users/{identityKey}/zones/{id}', 'delete',
        (_i2.OpenApiRequest request) async {
      return await impl.usersIdentityKeyZonesIdDelete(
          request,
          paramToString(request.pathParameter('identityKey')),
          paramToInt(request.pathParameter('id')));
    });
  }
}
