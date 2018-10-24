#!/bin/bash
curl -X POST -H "Content-Type:text/xml" \
    -H "Accept: text/xml,multipart/related" \
    -H "Host: datdb.cphbusiness.dk:8080" \
    -H "SOAPAction:"http://service.web.credit.bank.org/CreditScoreService/creditScoreRequest"" \
    --data @soap_request.xml \
    http://datdb.cphbusiness.dk:8080/CreditScoreService/CreditScoreService | \
xmllint --format -