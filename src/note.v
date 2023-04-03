module main

import json

[table: 'Notes']
struct Note {
	id int [primary; sql: serial]
	message string [sql: 'detail'; unique]
	status bool [nonull]
}

fn (n Note) to_json() string {
	return json.encode(n)
}