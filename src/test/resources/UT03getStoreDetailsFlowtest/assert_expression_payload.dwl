%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "address": "1905 E 17th Ave,Hutchinson,KS,US(67501)"
})