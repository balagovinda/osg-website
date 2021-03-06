<r:script disposition="head">
	function insertAgenda(data) {
		var content = '';

		if (data.feed.entry.length > 0) {
			content += "<h2>Next Upcoming Event</h2>" + "<div class='event first-event'>" + data.feed.entry[0].content.$t + "</div>";
		}

		if (data.feed.entry.length > 2) {
			content += "<h3>Future Upcoming Events</h3>";

			for (var i = 1; i < data.feed.entry.length; i++) {
				content += "<div class='event'>" + data.feed.entry[i].content.$t + "</div>";
			}
		}
		content = content.replace(/Replaces event originally scheduled for.*>/gi, '');
		content = content.replace(/<.*Who: Wipro Opensource Community/gi, '');
		content = content.replace(/<.*Where: Wipro Technologies, Infopark Rd, Kakkanad, Kerala 682030/gi, '');
		content = content.replace(/<.*Event Status: confirmed/gi, '');

		$("#events").append(content);
	}
</r:script>
