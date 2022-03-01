# Lancer un programme CGI qui reçoit et renvoie des données
require 'cgi'
cgi = CGI.new

# Après avoir reçu les données, renvoyez une réponse au format HTML
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # Sortez les données reçues avec cgi ['input'] et assignez-les à une variable locale
     # Obtenir des informations à partir de l''entrée' du point de repère
  get = cgi['input']

  # Renvoyer la réponse en HTML
  "<html>
    <body>
      <p>La chaîne reçue est la suivante</p>
      <p>Chaîne de caractères：#{get}</p>
    </body>
  </html>"
}
