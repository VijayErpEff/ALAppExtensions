// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.AutomaticAccounts;

using Microsoft.Sales.Document;

pageextension 4865 "AutoAcc Sales Order Subform" extends "Sales Order Subform"
{
    layout
    {
        addafter("Appl.-to Item Entry")
        {
            field("Automatic Account Group"; Rec."Automatic Account Group")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies a code relating to an automatic account group.';
            }
        }
    }
}
