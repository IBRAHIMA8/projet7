require 'cgi'
cgi = CGI.new


cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['quality']

  
  "<html>
    <body>
      <p>Voici la liste exhaustive des goyas de mauvaise qualité</p>
      String：#{get}
    </body>
  </html>"
}
