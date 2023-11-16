﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.Compensations;

using Microsoft.Purchases.Payables;

pageextension 31273 "Vendor Ledger Entries CZC" extends "Vendor Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("Compensation CZC"; Rec."Compensation CZC")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies, whether the entry was created by posting a compensation.';
                Visible = false;
            }
            field("Compensation Amount (LCY) CZC"; Rec."Compensation Amount (LCY) CZC")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the amount on the unposted compensation.';
                Visible = false;
            }
        }
    }
}
