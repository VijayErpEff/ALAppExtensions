﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.TaxEngine.ScriptHandler;

using Microsoft.Finance.TaxEngine.Core;

page 20176 "Action Number Expr. Subform"
{
    Caption = 'Tokens';
    PageType = ListPart;
    DataCaptionExpression = '';
    InsertAllowed = false;
    DeleteAllowed = false;
    ShowFilter = false;
    PopulateAllFields = true;
    SourceTable = "Action Number Expr. Token";
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Token; Token)
                {
                    Editable = false;
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the Token Name from expression.';
                }
                field(ValueVariable; ValueVariable2)
                {
                    Caption = 'Value';
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the value of token.';
                    trigger OnValidate();
                    begin
                        if LookupMgmt.ConvertLookupToConstant(
                            "Case ID",
                            "Script ID",
                            "Value Type",
                            Value,
                            "Lookup ID",
                            ValueVariable2,
                            "Symbol Data Type"::NUMBER)
                        then
                            Validate(Value);

                        FormatLine();
                    end;

                    trigger OnAssistEdit();
                    var

                    begin
                        if LookupMgmt.ConvertConstantToLookup(
                            "Case ID",
                            "Script ID",
                            "Value Type",
                            Value,
                            "Lookup ID")
                        then begin
                            CurrPage.Update(true);
                            Commit();

                            LookupMgmt.OpenLookupDialogOfType(
                                "Case ID",
                                "Script ID",
                                "Lookup ID",
                                "Symbol Data Type"::NUMBER);
                            Validate("Lookup ID");
                        end;

                        FormatLine();
                    end;
                }
            }
        }
    }

    local procedure FormatLine();
    begin
        ValueVariable2 := LookupSerialization.ConstantOrLookupText(
            "Case ID",
            "Script ID",
            "Value Type",
            Value,
            "Lookup ID",
            "Symbol Data Type"::NUMBER);
    end;

    trigger OnAfterGetRecord();
    begin
        FormatLine();
    end;

    trigger OnAfterGetCurrRecord();
    begin
        FormatLine();
    end;

    var
        LookupSerialization: Codeunit "Lookup Serialization";
        LookupMgmt: Codeunit "Lookup Mgmt.";
        ValueVariable2: Text;
}
