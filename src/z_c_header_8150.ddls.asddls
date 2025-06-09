@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption header'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity Z_C_HEADER_8150
  provider contract transactional_query
  as projection on Z_R_HEADER_8150
{
      @Search.defaultSearchElement: true
  key IdHeader,
      Email,
      Firstname,
      Lastname,
      Country,
      Creaton,
      DeliveryDate,
      
      @ObjectModel.text.element: [ 'Status' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Overall_Status_VH',
                                                     element: 'OverallStatus' },
                                                        useForValidation: true }]
      OrderStatus,
      _Status.Text as Status,
      
      ImageUrl,
      /* Associations */
      _Items : redirected to composition child ZC_C_ITEM_8150
}
