%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "manufacturerName": "NortonLifeLock",
  "productID": "4TRQQWB9OCB8",
  "productName": "Norton 360 Deluxe, Antivirus, 3 Devices, 1 Year with Auto Renewal, PC/Mac/Mobile Download",
  "productType": "Computer Software",
  "pricePerUnit": "24.99\$",
  "maxOrderLimit": 12,
  "availabilityStatus": "IN_STOCK",
  "sellers": [
    {
      "sellerName": "Walmart.com",
      "sellerDisplayName": "Walmart.com",
      "sellerPhone": 9123467897,
      "sellerEmail": "walmartdelivery@walmartapi.com",
      "sellerId": "F55CDC31AB754BB68FE0B39041159D63",
      "sellerType": "INTERNAL"
    }
  ]
})