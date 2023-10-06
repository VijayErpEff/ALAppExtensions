// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Inventory.Intrastat;

using System.IO;

codeunit 10854 "Intrastat Rep. Filter Shpt. FR"
{
    TableNo = "Data Exch.";

    trigger OnRun()
    var
        IntrastatReportLine: Record "Intrastat Report Line";
        IntrastatReportLineFilters: Text;
        InStreamFilters: InStream;
        OutStreamFilters: OutStream;
    begin
        Rec."Table Filters".CreateInStream(InStreamFilters);
        InStreamFilters.ReadText(IntrastatReportLineFilters);
        IntrastatReportLine.SetView(IntrastatReportLineFilters);
        IntrastatReportLine.SetRange(Type, IntrastatReportLine.Type::Shipment);

        Clear(Rec."Table Filters");
        Rec."Table Filters".CreateOutStream(OutStreamFilters);
        OutStreamFilters.WriteText(IntrastatReportLine.GetView());
        Rec.Modify(true);
    end;
}