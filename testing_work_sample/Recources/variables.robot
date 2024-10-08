*** Variables ***

${BASE_URL}      https://restful-booker.herokuapp.com/booking
${AUTH_TOKEN}    Basic YWRtaW46cGFzc3dvcmQxMjM=
${created_booking_id}

&{booking_dates}
...    checkin=2020-01-01  
...    checkout=2020-02-01

&{test_booking}  
...    firstname=Margaret
...    lastname=Lunch
...    totalprice=100
...    depositpaid=True
...    bookingdates=&{booking_dates}
...    additionalneeds=Breakfast

