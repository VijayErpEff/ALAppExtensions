namespace Microsoft.DataMigration.GP;

using System.Security.AccessControl;

permissionsetextension 4026 "D365 BASIC ISV - HGP" extends "D365 BASIC ISV"
{
    Permissions = tabledata "GP Account" = RIMD,
                  tabledata GPPOPTaxHist = RIMD,
                  tabledata GPSOPTrxHist = RIMD,
                  tabledata GPSOPProcessHoldWorkHist = RIMD,
#if not CLEAN21
#pragma warning disable AL0432
                  tabledata GPForecastTemp = RIMD,
#endif
#if not CLEAN21
#pragma warning restore AL0432
#endif
                  tabledata GPIVTrxAmountsHist = RIMD,
                  tabledata GPSOPWorkflowWorkHist = RIMD,
                  tabledata "GP GLTransactions" = RIMD,
                  tabledata "GP Vendor Transactions" = RIMD,
                  tabledata GPIVSerialLotNumberHist = RIMD,
                  tabledata GPSOPBinQuantityWorkHist = RIMD,
                  tabledata "GP Posting Accounts" = RIMD,
                  tabledata GPPMHist = RIMD,
                  tabledata GPPOPDistributionHist = RIMD,
                  tabledata "GP Vendor" = RIMD,
                  tabledata GPIVBinQtyTransferHist = RIMD,
                  tabledata GPSOPTrackingNumbersWorkHist = RIMD,
                  tabledata GPSOPSerialLotWorkHist = RIMD,
                  tabledata "GP Customer Transactions" = RIMD,
                  tabledata GPSOPDepositHist = RIMD,
                  tabledata GPPOPPOHist = RIMD,
                  tabledata GPRMHist = RIMD,
                  tabledata GPPOPReceiptHist = RIMD,
                  tabledata GPSOPLineCommentWorkHist = RIMD,
                  tabledata GPSOPCommissionsWorkHist = RIMD,
                  tabledata GPIVTrxBinQtyHist = RIMD,
                  tabledata GPSOPTaxesWorkHist = RIMD,
                  tabledata GPSOPDistributionWorkHist = RIMD,
                  tabledata "GP Customer" = RIMD,
                  tabledata GPIVLotAttributeHist = RIMD,
                  tabledata "GP Payment Terms" = RIMD,
                  tabledata "GP Vendor Address" = RIMD,
                  tabledata GPPOPReceiptApply = RIMD,
                  tabledata GPIVTrxDetailHist = RIMD,
                  tabledata GPIVTrxHist = RIMD,
                  tabledata GPPOPPOLineHist = RIMD,
                  tabledata GPRMOpen = RIMD,
                  tabledata GPPOPPOTaxHist = RIMD,
                  tabledata GPSOPPaymentWorkHist = RIMD,
                  tabledata GPSOPTrxAmountsHist = RIMD,
                  tabledata GPPOPLandedCostHist = RIMD,
                  tabledata "GP Segments" = RIMD,
                  tabledata "GP Fiscal Periods" = RIMD,
                  tabledata GPSOPUserDefinedWorkHist = RIMD,
                  tabledata "GP Customer Address" = RIMD,
                  tabledata "GP Item" = RIMD,
                  tabledata GPPOPSerialLotHist = RIMD,
                  tabledata GPIVDistributionHist = RIMD,
                  tabledata "GP Item Location" = RIMD,
                  tabledata "GP Item Transactions" = RIMD,
                  tabledata GPPOPBinQtyHist = RIMD,
                  tabledata GPPOPReceiptLineHist = RIMD,
                  tabledata "GP Configuration" = RIMD,
                  tabledata "GP Codes" = RIMD,
                  tabledata "GP Segment Name" = RIMD,
                  tabledata "GP Migration Errors" = RIMD,
                  tabledata "GP Company Migration Settings" = RIMD,
                  tabledata "GP Company Additional Settings" = RIMD,
                  tabledata "GP SY40100" = RIMD,
                  tabledata "GP SY40101" = RIMD,
                  tabledata "GP Bank MSTR" = RIMD,
                  tabledata "GP Checkbook MSTR" = RIMD,
                  tabledata "GP Checkbook Transactions" = RIMD,
                  tabledata "GP MC40200" = RIMD,
                  tabledata "GP SY06000" = RIMD,
                  tabledata "GP PM00100" = RIMD,
                  tabledata "GP PM00200" = RIMD,
                  tabledata "GP RM00101" = RIMD,
                  tabledata "GP RM00201" = RIMD,
                  tabledata "GP GL00100" = RIMD,
                  tabledata "GP GL10110" = RIMD,
                  tabledata "GP GL10111" = RIMD,
                  tabledata "GP GL40200" = RIMD,
                  tabledata "GP IV00101" = RIMD,
                  tabledata "GP IV00102" = RIMD,
                  tabledata "GP IV00105" = RIMD,
                  tabledata "GP IV00200" = RIMD,
                  tabledata "GP IV00300" = RIMD,
                  tabledata "GP IV10200" = RIMD,
                  tabledata "GP IV40201" = RIMD,
                  tabledata "GP IV40400" = RIMD,
                  tabledata "GP MC40000" = RIMD,
                  tabledata "GP PM00201" = RIMD,
                  tabledata "GP PM20000" = RIMD,
                  tabledata "GP RM00103" = RIMD,
                  tabledata "GP RM20101" = RIMD,
                  tabledata "GP SY00300" = RIMD,
                  tabledata "GP SY01100" = RIMD,
                  tabledata "GP SY01200" = RIMD,
                  tabledata "GP SY03300" = RIMD,
                  tabledata "GP GL00105" = RIMD,
                  tabledata "GP GL20000" = RIMD,
                  tabledata "GP GL30000" = RIMD,
                  tabledata "GP BM30200" = RIMD,
                  tabledata "GP Hist. Source Progress" = RIMD,
                  tabledata "GP Hist. Source Error" = RIMD,
                  tabledata "GP POP10100" = RIMD,
                  tabledata "GP POP10110" = RIMD,
                  tabledata "GP PM00204" = RIMD,
                  tabledata "GP Upgrade Settings" = RIMD,
                  tabledata "GP Migration Error Overview" = RIMD,
                  tabledata "GP Known Countries" = RIMD;
}