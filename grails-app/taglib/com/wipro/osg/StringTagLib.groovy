package com.wipro.osg

class StringTagLib {
	static namespace = "str"

	def shorten = { attrs ->
		log.debug "attrs: $attrs"
		def max = attrs.remove("max") ?: 40
		def value = attrs.remove("value")

		if (value?.length() > max) {
			out << value.substring(0, max).trim() + "..."
		} else {
			out << value
		}
	}
}