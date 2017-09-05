// if you're not sure of the time of the unsubscribe, just set it to the current epoch

[
    {
        "event": "unsubscribe",
        "data": [
            {
                "e": "email1@emailprovider.com",  // email id that soft bounced
                "ts": 1504632929                  // time of the bounce
            },
            {
                "e": "email2@emailprovider2.com", // email id that soft bounced
                "ts": 1500630929                  // time of the bounce
            }
        ]
    }
]
