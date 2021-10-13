%dw 2.0
import * from dw::test::Asserts
---
attributes must [
  beObject(),
  $[*"queryParams"] must haveSize(1),
  $[*"requestPath"] must haveSize(1),
  $[*"queryParams"][0] must equalTo({
    "usItemId": "55885487"
  }),
  $[*"requestPath"][0] must equalTo("/api/productdetails")
]