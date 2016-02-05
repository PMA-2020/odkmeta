pr write_odkmeta_ado
	vers 11.2

	matamac

	_find_project_root
	#d ;
	writeado
		using `"`r(path)'/src/build/odkmeta.ado"',
		stata(main/odkmeta.do)
		class_declarations(
			Collection
			Group
			Repeat
			Field
		)
		mata(
			Collection
			Group
			Repeat
			Field
			string
			io
			stata
			error
			DoFileWriter
			AttribProps
			Attrib
			AttribSet
			List
			write_do_start
			write_do_end
			write_survey
			write_choices
		)
	;
	#d cr
end
