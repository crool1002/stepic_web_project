def app (environ, start_response):                                              
        print(environ['QUERY_STRING'])                                          
        status = '200 OK'                                                       
        response_headers = [('Content-type','text/plain')]                      
        start_response(status, response_headers)                                
        resp = environ['QUERY_STRING'].split("&")
        print(resp)
        resp = [item+'\r\n' for item in resp]                    
        return resp
