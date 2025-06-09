@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root entity items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_R_ITEMS_8150
  as select from ztitems_8150
  association to parent Z_R_HEADER_8150 as _Header on $projection.IdHeader = _Header.IdHeader
{
  key id_item          as IdItem,
  key id_header        as IdHeader,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price            as Price,
      currency_code    as CurrencyCode,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      unit_of_measure  as UnitOfMeasure,

      _Header
}
