package pages

import geb.Page

class CalendarPage extends Page {
	static url = "calendar"

	static at = {
		title ==~ /WOSG Calendar/
	}

	static content = {
	}
}