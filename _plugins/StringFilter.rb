module MyStandard
	module StringFilter
		def start_with(input, *prefixes)
			input.start_with?(*prefixes)
		end
		def delete_prefix(input, prefix)
			input.delete_prefix(prefix)
		end
		def end_with(input, *suffixes)
			input.end_with?(*suffixes)
		end
		def delete_suffix(input, suffix)
			input.delete_suffix(suffix)
		end
	end
end

Liquid::Template.register_filter(MyStandard::StringFilter)
