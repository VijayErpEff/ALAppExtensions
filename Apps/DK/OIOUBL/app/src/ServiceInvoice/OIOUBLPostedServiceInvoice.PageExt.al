﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Service.History;

using Microsoft.EServices.EDocument;

pageextension 13682 "OIOUBL-Posted Service Invoice" extends "Posted Service Invoice"
{
    layout
    {
        addafter("Contact Name")
        {
            field("OIOUBL-Contact Role"; "OIOUBL-Contact Role")
            {
                Tooltip = 'Specifies the role of the contact person at the customer. This is used in the exported electronic document.';
                Editable = False;
                ApplicationArea = Service;
            }
        }

        addafter("Bill-to Contact")
        {
            field("OIOUBL-GLN"; "OIOUBL-GLN")
            {
                Tooltip = 'Specifies the GLN location number for the customer, based on the GLN field in the original sales order. This is used in the exported electronic document.';
                ApplicationArea = Service;
                Editable = False;
            }
            field("OIOUBL-Account Code"; "OIOUBL-Account Code")
            {
                Tooltip = 'Specifies the account code of the customer who you will send the invoice to. This is used in the exported electronic document.';
                ApplicationArea = Service;
                Editable = False;
            }
            field("OIOUBL-Profile Code"; "OIOUBL-Profile Code")
            {
                Tooltip = 'Specifies the profile that this customer requires for electronic documents. This is used in the exported electronic document.';
                ApplicationArea = Service;
                Editable = False;
            }
        }
    }

    actions
    {
        addbefore(SendCustom)
        {
            group("OIOUBL-F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";

                action(CreateElectronicInvoices)
                {
                    Caption = 'Create Electronic Invoice';
                    Tooltip = 'Create an electronic version of the current document.';
                    ApplicationArea = Service;
                    Ellipsis = True;
                    Promoted = True;
                    Image = ElectronicDoc;
                    PromotedCategory = Process;

                    trigger OnAction();
                    var
                        ServiceInvHeader: Record "Service Invoice Header";
                    begin
                        ServiceInvHeader := Rec;
                        ServiceInvHeader.SETRECFILTER();

                        REPORT.RUNMODAL(REPORT::"OIOUBL-Create Elec. Srv. Inv.", TRUE, FALSE, ServiceInvHeader);
                    end;
                }
            }
        }
    }
}
