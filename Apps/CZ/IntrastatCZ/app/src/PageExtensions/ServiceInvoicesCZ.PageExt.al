// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Inventory.Intrastat;

using Microsoft.Service.Document;

pageextension 31404 "Service Invoices CZ" extends "Service Invoices"
{
    layout
    {
        addlast(Control1)
        {
            field("Intrastat Exclude CZ"; Rec."Intrastat Exclude CZ")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Intrastat Exclude';
                Visible = false;
                ToolTip = 'Specifies that entry will be excluded from intrastat.';
            }
        }
    }
}