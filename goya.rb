require 'cgi'
cgi = CGI.new


cgi.out("type" => "text/html", "charset" => "UTF-8") {

  get = cgi['goya']


  "<html>
    <body>
      <p>La taille de la courge amère et les informations de la personne qui l'a vendu sont les suivantes: </p>
      String：#{get}
    </body>
  </html>"
}
