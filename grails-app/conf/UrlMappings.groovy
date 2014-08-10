class UrlMappings {

	static mappings = {
		// Top level
		"/"(controller: "pages", action: "home")
		"/archive"(controller: "pages", action: "archive")
		"/archived"(controller: "pages", action: "archived") // TODO: ??? test page
		"/calendar"(controller: "pages", action: "calendar")
		"/location"(controller: "pages", action: "location")
		"/group"(controller: "pages", action: "group")
		"/home"(controller: "pages", action: "home")
		"/index"(controller: "pages", action: "home")
		"/talks"(controller: "pages", action: "archive")

		// Admin
		// TODO: ??? should be secured, also add check for them in a list ["presentation", "speaker"]
		"/admin"(view: '/admin/index')
		"/admin/presentation/$action?/$id?"(controller: "presentation")
		"/admin/speaker/$action?/$id?"(controller: "speaker")

		// "/admin/$controller/$action?/$id" {
		// 	constraints {
		//		controller(inList: ['presentation', 'speaker'])
		//	}
		// }

		// Un-map default
		"/presentation/$action?/$id?"(view: '/error')
		"/speaker/$action?/$id?"(view: '/error')

		// General
		"/$controller/$action?/$id?" {
			constraints {
				// Apply constraints here
			}
		}

		"500"(view: '/error')
	}
}
