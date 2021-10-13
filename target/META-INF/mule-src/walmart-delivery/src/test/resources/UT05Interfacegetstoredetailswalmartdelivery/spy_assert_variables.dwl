%dw 2.0
import * from dw::test::Asserts
---
vars must [
  haveKey('address'),
  $['address'] must equalTo({
    "postalCode": "67501",
    "address": "1905 E 17th Ave",
    "city": "Hutchinson",
    "state": "KS",
    "country": "US"
  })
]