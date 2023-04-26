//To get particular field from the xml I used filter & contains

%dw 2.0
output application/json
var v= payload

// here im taking varibale v as payload 
---
{
"ActOn": (v.Document.*Field filter (item,index) -> (item.@name contains "xFndVirusScanDate"))[0]
}
//if i want a particular field from the xml payload i can use filter and contains