
require 'cgi'
cgi = CGI.new


cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['datagoyamere']


  "<html>
    <body>
      <p>Voici les informations sur les goyas dont le cessionnaire n'est pas en autoconsommation: </p>
      String：#{get}
    </body>
  </html>"
}
