@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption items'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZC_C_ITEM_8150
  as projection on Z_R_ITEMS_8150
{
@Search.defaultSearchElement: true
  key IdItem,
  key IdHeader,
      Name,
      Description,
      Releasedate,
      Discontinueddate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Width,
      Depth,
      Quantity,
      UnitOfMeasure,
      /* Associations */
      _Header :  redirected to parent Z_C_HEADER_8150
}
