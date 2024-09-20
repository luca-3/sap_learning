@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'con'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZI_11_ConnectionWithCarrier
  as select from /dmo/connection
    inner join   /dmo/carrier on /dmo/connection.carrier_id = /dmo/carrier.carrier_id
{
  key /dmo/carrier.carrier_id            as CarrierId,
  key /dmo/connection.connection_id      as ConnectionId,
      /dmo/carrier.name                  as Name,
//      /dmo/carrier.currency_code         as CurrencyCode,
//      /dmo/carrier.local_created_by      as LocalCreatedBy,
//      /dmo/carrier.local_created_at      as LocalCreatedAt,
//      /dmo/carrier.local_last_changed_by as LocalLastChangedBy,
//      /dmo/carrier.local_last_changed_at as LocalLastChangedAt,
//      /dmo/carrier.last_changed_at       as LastChangedAt,
      /dmo/connection.airport_from_id    as AirportFromId,
      /dmo/connection.airport_to_id      as AirportToId
//      /dmo/connection.departure_time     as DepartureTime,
//      /dmo/connection.arrival_time       as ArrivalTime,
//      /dmo/connection.distance           as Distance,
//      /dmo/connection.distance_unit      as DistanceUnit
}
