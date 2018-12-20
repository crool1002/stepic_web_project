def app(environ, start_response):
	#print environ
        print environ['QUERY_STRING'].split('&')
	#data = b"Hello, World!\n"	
	data = [bytes(str(i).encode('utf-8') + '\n','ascii') for i in environ['QUERY_STRING'].split('&')]
        start_response("200 OK", [
            ("Content-Type", "text/plain"),
            ("Content-Length", str(len(data)))
        ])
        return iter([data])
