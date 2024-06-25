namespace Microsoft.Integration.Shopify;

/// <summary>
/// Table Shpfy Invoice Header (ID 30156).
/// </summary>
table 30156 "Shpfy Invoice Header"
{
    Caption = 'Shopify Invoice Header';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Shopify Order Id"; BigInteger)
        {
            Caption = 'Shopify Order Id';
        }
    }

    keys
    {
        key(PK; "Shopify Order Id")
        {
            Clustered = true;
        }
    }
}