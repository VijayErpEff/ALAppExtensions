namespace Microsoft.DataMigration.GP;

using System.Integration;

permissionset 4029 "HybridGP - Objects"
{
    Assignable = false;
    Access = Public;
    Caption = 'HybridGP- Objects';

    Permissions = codeunit "GP Cloud Migration" = X,
                    codeunit "Hybrid Handle GP Upgrade Error" = X,
                    codeunit "Hybrid GP Management" = X,
                    codeunit "Hybrid GP Wizard" = X,
                    page "GP Account" = X,
                    table "GP Account" = X,
                    codeunit "GP Account Migrator" = X,
                    page "GP Fiscal Periods" = X,
                    table "GP Fiscal Periods" = X,
                    page "GP GLTransactions" = X,
                    table "GP GLTransactions" = X,
                    page "GP Customer" = X,
                    table "GP Customer" = X,
                    codeunit "GP Customer Migrator" = X,
                    page "GP Customer Transactions" = X,
                    table "GP Customer Transactions" = X,
                    table "GPIVBinQtyTransferHist" = X,
                    table "GPIVDistributionHist" = X,
                    table "GPIVLotAttributeHist" = X,
                    table "GPIVSerialLotNumberHist" = X,
                    table "GPIVTrxAmountsHist" = X,
                    table "GPIVTrxBinQtyHist" = X,
                    table "GPIVTrxDetailHist" = X,
                    table "GPIVTrxHist" = X,
                    table "GPPMHist" = X,
                    table "GPPOPBinQtyHist" = X,
                    table "GPPOPDistributionHist" = X,
                    table "GPPOPLandedCostHist" = X,
                    table "GPPOPPOHist" = X,
                    table "GPPOPPOLineHist" = X,
                    table "GPPOPPOTaxHist" = X,
                    table "GPPOPReceiptApply" = X,
                    table "GPPOPReceiptHist" = X,
                    table "GPPOPReceiptLineHist" = X,
                    table "GPPOPSerialLotHist" = X,
                    table "GPPOPTaxHist" = X,
                    table "GPRMHist" = X,
                    table "GPRMOpen" = X,
                    table "GPSOPBinQuantityWorkHist" = X,
                    table "GPSOPCommissionsWorkHist" = X,
                    table "GPSOPDepositHist" = X,
                    table "GPSOPDistributionWorkHist" = X,
                    table "GPSOPLineCommentWorkHist" = X,
                    table "GPSOPPaymentWorkHist" = X,
                    table "GPSOPProcessHoldWorkHist" = X,
                    table "GPSOPSerialLotWorkHist" = X,
                    table "GPSOPTaxesWorkHist" = X,
                    table "GPSOPTrackingNumbersWorkHist" = X,
                    table "GPSOPTrxAmountsHist" = X,
                    table "GPSOPTrxHist" = X,
                    table "GPSOPUserDefinedWorkHist" = X,
                    table "GPSOPWorkflowWorkHist" = X,
                    codeunit "GPForecastHandler" = X,
                    codeunit "GP PO Migrator" = X,
                    codeunit "GP Populate Hist. Tables" = X,
#if not CLEAN21
#pragma warning disable AL0432
#endif
                    table "GPForecastTemp" = X,
                    codeunit "Install GP SmartLists" = X,
#if not CLEAN21
#pragma warning restore AL0432
#endif
#if not CLEAN22
#pragma warning disable AL0432
                    table "GP POPPOHeader" = X,
                    table "GP POPPOLine" = X,
#pragma warning restore AL0432
#endif
                    page "GP Item" = X,
                    table "GP Item" = X,
                    table "GP Item Location" = X,
                    codeunit "GP Item Migrator" = X,
                    query "GP Item Transaction" = X,
                    query "GP Item Transaction Average" = X,
                    table "GP Item Transactions" = X,
                    query "GP Item Transaction Standard" = X,
                    table "GP Codes" = X,
                    table "GP Configuration" = X,
                    table "GP Payment Terms" = X,
                    page "GP Posting Accounts" = X,
                    table "GP Posting Accounts" = X,
                    table "GP Segments" = X,
                    Codeunit "Helper Functions" = X,
                    codeunit "Wizard Integration" = X,
                    table "GP Bank MSTR" = X,
                    table "GP Checkbook MSTR" = X,
                    table "GP Checkbook Transactions" = X,
                    codeunit "GP Intelligent Cloud Upgrade" = X,
                    page "GP Vendor" = X,
                    table "GP Vendor" = X,
                    codeunit "GP Vendor Migrator" = X,
                    page "GP Vendor Transactions" = X,
                    table "GP Vendor Transactions" = X,
                    page "GP Migration Settings List" = X,
                    page "Hybrid GP Errors Factbox" = X,
                    table "GP Company Migration Settings" = X,
                    table "GP Migration Errors" = X,
                    table "GP Segment Name" = X,
                    table "GP Company Additional Settings" = X,
                    table "GP SY40100" = X,
                    table "GP SY40101" = X,
                    table "GP CM20600" = X,
                    table "GP MC40200" = X,
                    table "GP SY06000" = X,
                    table "GP PM00100" = X,
                    table "GP PM00200" = X,
                    table "GP RM00101" = X,
                    table "GP RM00201" = X,
                    table "GP GL00100" = X,
                    table "GP GL10110" = X,
                    table "GP GL10111" = X,
                    table "GP GL40200" = X,
                    table "GP IV00101" = X,
                    table "GP IV00102" = X,
                    table "GP IV00105" = X,
                    table "GP IV00200" = X,
                    table "GP IV00300" = X,
                    table "GP IV10200" = X,
                    table "GP IV40201" = X,
                    table "GP IV40400" = X,
                    table "GP MC40000" = X,
                    table "GP PM00201" = X,
                    table "GP PM20000" = X,
                    table "GP RM00103" = X,
                    table "GP RM20101" = X,
                    table "GP SY00300" = X,
                    table "GP SY01100" = X,
                    table "GP SY01200" = X,
                    table "GP SY03300" = X,
                    table "GP GL00105" = X,
                    table "GP GL20000" = X,
                    table "GP GL30000" = X,
                    table "GP BM30200" = X,
                    table "GP Hist. Source Progress" = X,
                    table "GP Hist. Source Error" = X,
                    page "Hist. Migration Errors" = X,
                    page "Hist. Migration Status Factbox" = X,
                    table "GP POP10100" = X,
                    table "GP POP10110" = X,
                    table "GP PM00204" = X,
                    table "GP Known Countries" = X,
                    page "GP Company Migration Settings" = X,
                    query "GP Item Aggregate" = X,
                    codeunit "GP Migration Error Handler" = X,
                    page "GP Migration Error Overview" = X,
                    page "Hybrid GP Errors Overview Fb" = X,
                    table "GP Migration Error Overview" = X,
                    table "GP Upgrade Settings" = X,
                    codeunit "Data Migration Error Logging" = X;
}
