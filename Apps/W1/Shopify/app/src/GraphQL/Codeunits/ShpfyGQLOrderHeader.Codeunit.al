namespace Microsoft.Integration.Shopify;

codeunit 30207 "Shpfy GQL OrderHeader" implements "Shpfy IGraphQL"
{
    Access = Internal;

    procedure GetGraphQL(): Text
    begin
        exit('{"query": "query { order(id: \"gid:\/\/shopify\/Order\/{{OrderId}}\") { legacyResourceId name createdAt confirmed updatedAt cancelReason cancelledAt closed closedAt currentSubtotalLineItemsQuantity test email phone poNumber customer { legacyResourceId email phone defaultAddress { id phone }} displayAddress { id firstName lastName company address1 address2 zip city provinceCode province countryCode country phone } shippingAddress { id name firstName lastName company address1 address2 zip city provinceCode province countryCode country phone latitude longitude } billingAddressMatchesShippingAddress billingAddress { id name firstName lastName company address1 address2 zip city provinceCode province countryCode country phone } publication { name } app { name } currencyCode presentmentCurrencyCode fullyPaid unpaid note customAttributes { key value } discountCode displayFinancialStatus displayFulfillmentStatus edited totalWeight refundable returnStatus riskLevel risks(first: 10) { level display message } tags paymentGatewayNames processedAt requiresShipping sourceIdentifier paymentTerms { id dueInDays paymentTermsName paymentTermsType translatedName } taxesIncluded cartDiscountAmountSet { presentmentMoney { amount } shopMoney { amount }} currentCartDiscountAmountSet { presentmentMoney { amount } shopMoney { amount }} currentSubtotalPriceSet { presentmentMoney { amount } shopMoney { amount }} currentTotalDiscountsSet { presentmentMoney { amount } shopMoney { amount }} currentTotalDutiesSet { presentmentMoney { amount } shopMoney { amount }} currentTotalPriceSet { presentmentMoney { amount } shopMoney { amount }} currentTotalTaxSet { presentmentMoney { amount } shopMoney { amount }} netPaymentSet { presentmentMoney { amount } shopMoney { amount }} originalTotalDutiesSet { presentmentMoney { amount } shopMoney { amount }} originalTotalPriceSet { presentmentMoney { amount } shopMoney { amount }} refundDiscrepancySet { presentmentMoney { amount } shopMoney { amount }} subtotalPriceSet { presentmentMoney { amount } shopMoney { amount }} totalCapturableSet { presentmentMoney { amount } shopMoney { amount }} totalDiscountsSet { presentmentMoney { amount } shopMoney { amount }} totalOutstandingSet { presentmentMoney { amount } shopMoney { amount }} totalPriceSet { presentmentMoney { amount } shopMoney { amount }} totalReceivedSet { presentmentMoney { amount } shopMoney { amount }} totalRefundedSet { presentmentMoney { amount } shopMoney { amount }} totalRefundedShippingSet { presentmentMoney { amount } shopMoney { amount }} totalShippingPriceSet { presentmentMoney { amount } shopMoney { amount }} totalTaxSet { presentmentMoney { amount } shopMoney { amount }} totalTipReceivedSet { presentmentMoney { amount } shopMoney { amount }} taxLines { channelLiable rate ratePercentage title priceSet { presentmentMoney { amount } shopMoney { amount }}} refunds { legacyResourceId updatedAt } returns(first: 20) { pageInfo { endCursor hasNextPage } nodes { id }} purchasingEntity { ... on PurchasingCompany { company { id name mainContact { id customer { legacyResourceId email phone }}} location { id }}}}}"}');
    end;

    procedure GetExpectedCost(): Integer
    begin
        exit(64);
    end;
}