// Copy and paste the below code snippet inside the <head></head> section of your website

<script type="text/javascript">
 var clevertap = {event:[], profile:[], account:[], notifications:[]};
 // replace with the CLEVERTAP_ACCOUNT_ID with the actual ACCOUNT ID value from your Dashboard -> Settings page
 clevertap.account.push({"id": "CLEVERTAP_ACCOUNT_ID"});
 (function () {
		 var wzrk = document.createElement('script');
		 wzrk.type = 'text/javascript';
		 wzrk.async = true;
		 wzrk.src = ('https:' == document.location.protocol ? 'https://d2r1yp2w7bby2u.cloudfront.net' : 'http://static.clevertap.com') + '/js/a.js';
		 var s = document.getElementsByTagName('script')[0];
		 s.parentNode.insertBefore(wzrk, s);
  })();
</script>
