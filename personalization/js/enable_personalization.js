// in your JS embed code, be sure to include clevertap.enablePersonalization = true; as shown below
<head>
    <script type="text/javascript">
    var clevertap = {event:[], profile:[], account:[]};
    clevertap.account.push({"id": "Your CleverTap Account ID"});
    clevertap.enablePersonalization = true; // enables Personalization
    (function () {
           var wzrk = document.createElement('script');
           wzrk.type = 'text/javascript';
           wzrk.async = true;
       	   wzrk.src = ('https:' == document.location.protocol ? 'https://d2r1yp2w7bby2u.cloudfront.net' : 'http://static.clevertap.com') + '/js/a.js';
	         var s = document.getElementsByTagName('script')[0];
           s.parentNode.insertBefore(wzrk, s);
       })();
    </script>
</head>