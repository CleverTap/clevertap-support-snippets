// if you're not sure of the time of the bounce, just set it to the current epoch

[
    {
        "event": "softbounce",
        "data": [
            {
                "e": "email1@emailprovider.com",  // email id that soft bounced
                "ts": 1435322805                  // time of the bounce
            },
            {
                "e": "email2@emailprovider2.com", // email id that soft bounced
                "ts": 1435322805                  // time of the bounce
            }
        ]
    },
    {
        "event": "hardbounce",
        "data": [
            {
                "e": "email3@emailprovider.com",   // email id that hard bounced
                "ts": 1435322805
            }
        ]
    }
]