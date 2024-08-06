namespace Microsoft.Sustainability.Purchase;

using Microsoft.Purchases.History;

pageextension 6219 "Sust. Purch. Cr. Memo. Stats." extends "Purch. Credit Memo Statistics"
{
    layout
    {
        addafter(Vendor)
        {
            group(Sustainability)
            {
                Visible = EnableSustainability;
                field("Emission C02"; Rec."Emission C02")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Emission C02';
                }
                field("Emission CH4"; Rec."Emission CH4")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Emission CH4';
                }
                field("Emission N2O"; Rec."Emission N2O")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Emission N2O';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        EnableSustainabilityControl();
    end;

    trigger OnAfterGetCurrRecord()
    begin
        EnableSustainabilityControl();
    end;

    trigger OnAfterGetRecord()
    begin
        EnableSustainabilityControl();
    end;

    local procedure EnableSustainabilityControl()
    begin
        Rec.CalcFields("Sustainability Lines Exist");
        EnableSustainability := Rec."Sustainability Lines Exist";
    end;

    var
        EnableSustainability: Boolean;
}