// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oeamtc_user.openapi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) {
  return Trip();
}

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{};

TripBaseStopsAddress _$TripBaseStopsAddressFromJson(Map<String, dynamic> json) {
  return TripBaseStopsAddress(
    moniker: json['moniker'] as String,
    streetLine: json['streetLine'] as String,
    locality: json['locality'] as String,
    areaCode: json['areaCode'] as String,
    stateRegion: json['stateRegion'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$TripBaseStopsAddressToJson(
        TripBaseStopsAddress instance) =>
    <String, dynamic>{
      'moniker': instance.moniker,
      'streetLine': instance.streetLine,
      'locality': instance.locality,
      'areaCode': instance.areaCode,
      'stateRegion': instance.stateRegion,
      'country': instance.country,
    };

TripBaseStopsLocation _$TripBaseStopsLocationFromJson(
    Map<String, dynamic> json) {
  return TripBaseStopsLocation(
    latitude: json['latitude'] as num,
    longitude: json['longitude'] as num,
  );
}

Map<String, dynamic> _$TripBaseStopsLocationToJson(
        TripBaseStopsLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

TripBaseStops _$TripBaseStopsFromJson(Map<String, dynamic> json) {
  return TripBaseStops(
    address: json['address'] == null
        ? null
        : TripBaseStopsAddress.fromJson(
            json['address'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : TripBaseStopsLocation.fromJson(
            json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TripBaseStopsToJson(TripBaseStops instance) =>
    <String, dynamic>{
      'address': instance.address,
      'location': instance.location,
    };

TripBaseExtraDataSmartConnectDataScore
    _$TripBaseExtraDataSmartConnectDataScoreFromJson(
        Map<String, dynamic> json) {
  return TripBaseExtraDataSmartConnectDataScore(
    idlingScore: json['idlingScore'] as int,
    speedingScore: json['speedingScore'] as int,
    brakingScore: json['brakingScore'] as int,
    accelerationScore: json['accelerationScore'] as int,
    totalEcoScore: json['totalEcoScore'] as int,
  );
}

Map<String, dynamic> _$TripBaseExtraDataSmartConnectDataScoreToJson(
        TripBaseExtraDataSmartConnectDataScore instance) =>
    <String, dynamic>{
      'idlingScore': instance.idlingScore,
      'speedingScore': instance.speedingScore,
      'brakingScore': instance.brakingScore,
      'accelerationScore': instance.accelerationScore,
      'totalEcoScore': instance.totalEcoScore,
    };

TripBaseExtraDataSmartConnectData _$TripBaseExtraDataSmartConnectDataFromJson(
    Map<String, dynamic> json) {
  return TripBaseExtraDataSmartConnectData(
    tshTripUuid: json['tshTripUuid'] as String,
    tshDriverUuid: json['tshDriverUuid'] as String,
    tshVehicleUuid: json['tshVehicleUuid'] as String,
    averageSpeed: json['averageSpeed'] as num,
    maximumSpeed: json['maximumSpeed'] as num,
    averageRpm: json['averageRpm'] as num,
    maximumRpm: json['maximumRpm'] as num,
    fuelConsumption: json['fuelConsumption'] as num,
    startFuelLevel: json['startFuelLevel'] as num,
    endFuelLevel: json['endFuelLevel'] as num,
    emissions: json['emissions'] as num,
    score: json['score'] == null
        ? null
        : TripBaseExtraDataSmartConnectDataScore.fromJson(
            json['score'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TripBaseExtraDataSmartConnectDataToJson(
        TripBaseExtraDataSmartConnectData instance) =>
    <String, dynamic>{
      'tshTripUuid': instance.tshTripUuid,
      'tshDriverUuid': instance.tshDriverUuid,
      'tshVehicleUuid': instance.tshVehicleUuid,
      'averageSpeed': instance.averageSpeed,
      'maximumSpeed': instance.maximumSpeed,
      'averageRpm': instance.averageRpm,
      'maximumRpm': instance.maximumRpm,
      'fuelConsumption': instance.fuelConsumption,
      'startFuelLevel': instance.startFuelLevel,
      'endFuelLevel': instance.endFuelLevel,
      'emissions': instance.emissions,
      'score': instance.score,
    };

TripBaseExtraDataFslData _$TripBaseExtraDataFslDataFromJson(
    Map<String, dynamic> json) {
  return TripBaseExtraDataFslData(
    signaturePilot: json['signaturePilot'] as String,
    signatureCoPilot: json['signatureCoPilot'] as String,
    roadCondition: json['roadCondition'] as String,
    routeSummary: json['routeSummary'] as String,
    licensePlate: json['licensePlate'] as String,
  );
}

Map<String, dynamic> _$TripBaseExtraDataFslDataToJson(
        TripBaseExtraDataFslData instance) =>
    <String, dynamic>{
      'signaturePilot': instance.signaturePilot,
      'signatureCoPilot': instance.signatureCoPilot,
      'roadCondition': instance.roadCondition,
      'routeSummary': instance.routeSummary,
      'licensePlate': instance.licensePlate,
    };

TripBaseExtraData _$TripBaseExtraDataFromJson(Map<String, dynamic> json) {
  return TripBaseExtraData(
    smartConnectData: json['smartConnectData'] == null
        ? null
        : TripBaseExtraDataSmartConnectData.fromJson(
            json['smartConnectData'] as Map<String, dynamic>),
    fslData: json['fslData'] == null
        ? null
        : TripBaseExtraDataFslData.fromJson(
            json['fslData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TripBaseExtraDataToJson(TripBaseExtraData instance) =>
    <String, dynamic>{
      'smartConnectData': instance.smartConnectData,
      'fslData': instance.fslData,
    };

TripBase _$TripBaseFromJson(Map<String, dynamic> json) {
  return TripBase(
    vehicleId: json['vehicleId'] as int,
    stops: (json['stops'] as List)
        ?.map((e) => e == null
            ? null
            : TripBaseStops.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    note: json['note'] as String,
    routeGeometry: json['routeGeometry'] as String,
    source: json['source'] as String,
    fsl: json['fsl'] as bool,
    work: json['work'] as bool,
    extraData: json['extraData'] == null
        ? null
        : TripBaseExtraData.fromJson(json['extraData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TripBaseToJson(TripBase instance) => <String, dynamic>{
      'vehicleId': instance.vehicleId,
      'stops': instance.stops,
      'note': instance.note,
      'routeGeometry': instance.routeGeometry,
      'source': instance.source,
      'fsl': instance.fsl,
      'work': instance.work,
      'extraData': instance.extraData,
    };

TripMutation _$TripMutationFromJson(Map<String, dynamic> json) {
  return TripMutation();
}

Map<String, dynamic> _$TripMutationToJson(TripMutation instance) =>
    <String, dynamic>{};

TripChange _$TripChangeFromJson(Map<String, dynamic> json) {
  return TripChange(
    date: json['date'] as String,
    doneBy: json['doneBy'] as String,
    descriptions:
        (json['descriptions'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TripChangeToJson(TripChange instance) =>
    <String, dynamic>{
      'date': instance.date,
      'doneBy': instance.doneBy,
      'descriptions': instance.descriptions,
    };

Pilot _$PilotFromJson(Map<String, dynamic> json) {
  return Pilot();
}

Map<String, dynamic> _$PilotToJson(Pilot instance) => <String, dynamic>{};

PilotMutation _$PilotMutationFromJson(Map<String, dynamic> json) {
  return PilotMutation(
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    initial: json['initial'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$PilotMutationToJson(PilotMutation instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'initial': instance.initial,
      'color': instance.color,
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag();
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{};

TagMutation _$TagMutationFromJson(Map<String, dynamic> json) {
  return TagMutation(
    name: json['name'] as String,
    color: json['color'] as String,
    iconName: json['iconName'] as String,
  );
}

Map<String, dynamic> _$TagMutationToJson(TagMutation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'iconName': instance.iconName,
    };

Zone _$ZoneFromJson(Map<String, dynamic> json) {
  return Zone();
}

Map<String, dynamic> _$ZoneToJson(Zone instance) => <String, dynamic>{};

ZoneMutation _$ZoneMutationFromJson(Map<String, dynamic> json) {
  return ZoneMutation(
    name: json['name'] as String,
    latitude: json['latitude'] as num,
    longitude: json['longitude'] as num,
    radius: json['radius'] as num,
  );
}

Map<String, dynamic> _$ZoneMutationToJson(ZoneMutation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'radius': instance.radius,
    };

TripLog _$TripLogFromJson(Map<String, dynamic> json) {
  return TripLog(
    vehicleId: json['vehicleId'] as int,
    archived: json['archived'] as bool,
  );
}

Map<String, dynamic> _$TripLogToJson(TripLog instance) => <String, dynamic>{
      'vehicleId': instance.vehicleId,
      'archived': instance.archived,
    };

TripInfo _$TripInfoFromJson(Map<String, dynamic> json) {
  return TripInfo();
}

Map<String, dynamic> _$TripInfoToJson(TripInfo instance) => <String, dynamic>{};

TripInfoMutationAddress _$TripInfoMutationAddressFromJson(
    Map<String, dynamic> json) {
  return TripInfoMutationAddress(
    moniker: json['moniker'] as String,
    streetLine: json['streetLine'] as String,
    locality: json['locality'] as String,
    areaCode: json['areaCode'] as String,
    stateRegion: json['stateRegion'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$TripInfoMutationAddressToJson(
        TripInfoMutationAddress instance) =>
    <String, dynamic>{
      'moniker': instance.moniker,
      'streetLine': instance.streetLine,
      'locality': instance.locality,
      'areaCode': instance.areaCode,
      'stateRegion': instance.stateRegion,
      'country': instance.country,
    };

TripInfoMutationLocation _$TripInfoMutationLocationFromJson(
    Map<String, dynamic> json) {
  return TripInfoMutationLocation(
    latitude: json['latitude'] as num,
    longitude: json['longitude'] as num,
  );
}

Map<String, dynamic> _$TripInfoMutationLocationToJson(
        TripInfoMutationLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

TripInfoMutation _$TripInfoMutationFromJson(Map<String, dynamic> json) {
  return TripInfoMutation(
    timestamp: json['timestamp'] as String,
    address: json['address'] == null
        ? null
        : TripInfoMutationAddress.fromJson(
            json['address'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : TripInfoMutationLocation.fromJson(
            json['location'] as Map<String, dynamic>),
    odometer: json['odometer'] as int,
  );
}

Map<String, dynamic> _$TripInfoMutationToJson(TripInfoMutation instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'address': instance.address,
      'location': instance.location,
      'odometer': instance.odometer,
    };

TripStop _$TripStopFromJson(Map<String, dynamic> json) {
  return TripStop(
    address: json['address'] == null
        ? null
        : TripBaseStopsAddress.fromJson(
            json['address'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : TripBaseStopsLocation.fromJson(
            json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TripStopToJson(TripStop instance) => <String, dynamic>{
      'address': instance.address,
      'location': instance.location,
    };

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    moniker: json['moniker'] as String,
    streetLine: json['streetLine'] as String,
    locality: json['locality'] as String,
    areaCode: json['areaCode'] as String,
    stateRegion: json['stateRegion'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'moniker': instance.moniker,
      'streetLine': instance.streetLine,
      'locality': instance.locality,
      'areaCode': instance.areaCode,
      'stateRegion': instance.stateRegion,
      'country': instance.country,
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    latitude: json['latitude'] as num,
    longitude: json['longitude'] as num,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

TripsSummary _$TripsSummaryFromJson(Map<String, dynamic> json) {
  return TripsSummary(
    totalTrips: json['totalTrips'] as int,
    totalDistance: json['totalDistance'] as int,
    totalDuration: json['totalDuration'] as int,
  );
}

Map<String, dynamic> _$TripsSummaryToJson(TripsSummary instance) =>
    <String, dynamic>{
      'totalTrips': instance.totalTrips,
      'totalDistance': instance.totalDistance,
      'totalDuration': instance.totalDuration,
    };

IconNameTag _$IconNameTagFromJson(Map<String, dynamic> json) {
  return IconNameTag();
}

Map<String, dynamic> _$IconNameTagToJson(IconNameTag instance) =>
    <String, dynamic>{};

SpecialTag _$SpecialTagFromJson(Map<String, dynamic> json) {
  return SpecialTag();
}

Map<String, dynamic> _$SpecialTagToJson(SpecialTag instance) =>
    <String, dynamic>{};

TripError _$TripErrorFromJson(Map<String, dynamic> json) {
  return TripError(
    first: json['first'] == null
        ? null
        : Trip.fromJson(json['first'] as Map<String, dynamic>),
    second: json['second'] == null
        ? null
        : Trip.fromJson(json['second'] as Map<String, dynamic>),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$TripErrorToJson(TripError instance) => <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
      'type': instance.type,
    };

ErrorType _$ErrorTypeFromJson(Map<String, dynamic> json) {
  return ErrorType();
}

Map<String, dynamic> _$ErrorTypeToJson(ErrorType instance) =>
    <String, dynamic>{};

ExportTrip _$ExportTripFromJson(Map<String, dynamic> json) {
  return ExportTrip(
    trip: json['trip'] == null
        ? null
        : Trip.fromJson(json['trip'] as Map<String, dynamic>),
    originalTrip: json['originalTrip'] == null
        ? null
        : Trip.fromJson(json['originalTrip'] as Map<String, dynamic>),
    modified: json['modified'] as bool,
    deleted: json['deleted'] as bool,
  );
}

Map<String, dynamic> _$ExportTripToJson(ExportTrip instance) =>
    <String, dynamic>{
      'trip': instance.trip,
      'originalTrip': instance.originalTrip,
      'modified': instance.modified,
      'deleted': instance.deleted,
    };

ExportFormat _$ExportFormatFromJson(Map<String, dynamic> json) {
  return ExportFormat();
}

Map<String, dynamic> _$ExportFormatToJson(ExportFormat instance) =>
    <String, dynamic>{};

ExtraData _$ExtraDataFromJson(Map<String, dynamic> json) {
  return ExtraData(
    smartConnectData: json['smartConnectData'] == null
        ? null
        : TripBaseExtraDataSmartConnectData.fromJson(
            json['smartConnectData'] as Map<String, dynamic>),
    fslData: json['fslData'] == null
        ? null
        : TripBaseExtraDataFslData.fromJson(
            json['fslData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExtraDataToJson(ExtraData instance) => <String, dynamic>{
      'smartConnectData': instance.smartConnectData,
      'fslData': instance.fslData,
    };

SmartConnectData _$SmartConnectDataFromJson(Map<String, dynamic> json) {
  return SmartConnectData(
    tshTripUuid: json['tshTripUuid'] as String,
    tshDriverUuid: json['tshDriverUuid'] as String,
    tshVehicleUuid: json['tshVehicleUuid'] as String,
    averageSpeed: json['averageSpeed'] as num,
    maximumSpeed: json['maximumSpeed'] as num,
    averageRpm: json['averageRpm'] as num,
    maximumRpm: json['maximumRpm'] as num,
    fuelConsumption: json['fuelConsumption'] as num,
    startFuelLevel: json['startFuelLevel'] as num,
    endFuelLevel: json['endFuelLevel'] as num,
    emissions: json['emissions'] as num,
    score: json['score'] == null
        ? null
        : TripBaseExtraDataSmartConnectDataScore.fromJson(
            json['score'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SmartConnectDataToJson(SmartConnectData instance) =>
    <String, dynamic>{
      'tshTripUuid': instance.tshTripUuid,
      'tshDriverUuid': instance.tshDriverUuid,
      'tshVehicleUuid': instance.tshVehicleUuid,
      'averageSpeed': instance.averageSpeed,
      'maximumSpeed': instance.maximumSpeed,
      'averageRpm': instance.averageRpm,
      'maximumRpm': instance.maximumRpm,
      'fuelConsumption': instance.fuelConsumption,
      'startFuelLevel': instance.startFuelLevel,
      'endFuelLevel': instance.endFuelLevel,
      'emissions': instance.emissions,
      'score': instance.score,
    };

FslData _$FslDataFromJson(Map<String, dynamic> json) {
  return FslData(
    signaturePilot: json['signaturePilot'] as String,
    signatureCoPilot: json['signatureCoPilot'] as String,
    roadCondition: json['roadCondition'] as String,
    routeSummary: json['routeSummary'] as String,
    licensePlate: json['licensePlate'] as String,
  );
}

Map<String, dynamic> _$FslDataToJson(FslData instance) => <String, dynamic>{
      'signaturePilot': instance.signaturePilot,
      'signatureCoPilot': instance.signatureCoPilot,
      'roadCondition': instance.roadCondition,
      'routeSummary': instance.routeSummary,
      'licensePlate': instance.licensePlate,
    };

ExportBody _$ExportBodyFromJson(Map<String, dynamic> json) {
  return ExportBody(
    email: json['email'] as String,
    exportFormats:
        (json['exportFormats'] as List)?.map((e) => e as String)?.toList(),
    from: json['from'] as String,
    until: json['until'] as String,
    vehicleId: json['vehicleId'] as int,
    tagIds: (json['tagIds'] as List)?.map((e) => e as int)?.toList(),
    pilotIds: (json['pilotIds'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$ExportBodyToJson(ExportBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'exportFormats': instance.exportFormats,
      'from': instance.from,
      'until': instance.until,
      'vehicleId': instance.vehicleId,
      'tagIds': instance.tagIds,
      'pilotIds': instance.pilotIds,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return Error(
    key: json['key'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return Errors();
}

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{};

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return ErrorResponse(
    status: json['status'] as num,
    code: json['code'] as String,
    message: json['message'] as String,
    errors: (json['errors'] as List)
        ?.map(
            (e) => e == null ? null : Error.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'errors': instance.errors,
    };

Modifiable _$ModifiableFromJson(Map<String, dynamic> json) {
  return Modifiable(
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$ModifiableToJson(Modifiable instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

TripsPage _$TripsPageFromJson(Map<String, dynamic> json) {
  return TripsPage(
    count: json['count'] as int,
    offset: json['offset'] as int,
    trips: (json['trips'] as List)
        ?.map(
            (e) => e == null ? null : Trip.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TripsPageToJson(TripsPage instance) => <String, dynamic>{
      'count': instance.count,
      'offset': instance.offset,
      'trips': instance.trips,
    };

SmartConnectDataScore _$SmartConnectDataScoreFromJson(
    Map<String, dynamic> json) {
  return SmartConnectDataScore(
    idlingScore: json['idlingScore'] as int,
    speedingScore: json['speedingScore'] as int,
    brakingScore: json['brakingScore'] as int,
    accelerationScore: json['accelerationScore'] as int,
    totalEcoScore: json['totalEcoScore'] as int,
  );
}

Map<String, dynamic> _$SmartConnectDataScoreToJson(
        SmartConnectDataScore instance) =>
    <String, dynamic>{
      'idlingScore': instance.idlingScore,
      'speedingScore': instance.speedingScore,
      'brakingScore': instance.brakingScore,
      'accelerationScore': instance.accelerationScore,
      'totalEcoScore': instance.totalEcoScore,
    };
