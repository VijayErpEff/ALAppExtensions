// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Inventory.Intrastat;

using Microsoft.Purchases.Document;

pageextension 31323 "Purch. Return Ord. Subform CZ" extends "Purchase Return Order Subform"
{
    layout
    {
#if not CLEAN22
#pragma warning disable AL0432
        modify("Statistic Indication CZL")
#pragma warning restore AL0432
        {
            Enabled = not IntrastatEnabled;
        }
#endif
        addafter("Inv. Discount Amount")
        {
            field("Statistic Indication CZ"; Rec."Statistic Indication CZ")
            {
                ApplicationArea = PurchReturnOrder;
                ToolTip = 'Specifies the statistic indication code.';
#if not CLEAN22
                Enabled = IntrastatEnabled;
#endif
                Visible = false;
            }
        }
    }
#if not CLEAN22

    trigger OnOpenPage()
    begin
        IntrastatEnabled := IntrastatReportManagement.IsFeatureEnabled();
    end;

    var
        IntrastatReportManagement: Codeunit IntrastatReportManagement;
        IntrastatEnabled: Boolean;
#endif
}
