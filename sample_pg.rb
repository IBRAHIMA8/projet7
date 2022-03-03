# pgUtiliser la bibliothèque
require 'pg'

# PG::connect(dbname: "goya") Par ruby à partir de goyaDB Se connecter à
# Stocker les informations de connexion dans une variable nommée connection
connection = PG::connect(dbname: "goya")
connection.internal_encoding = "UTF-8"
begin
  # Manipuler PostgreSQL à l'aide de variables de connexion
  # Dans .exec, goyaDB "select weight, give_for from crop;"
  # Exécutez directement l'instruction SQL ci-dessus et stockez le résultat dans la variable de résultat.
  result = connection.exec("select weight, give_for from crops;")

  # Traiter chaque ligne récupérée
  result.each do |record|
# Prenez chaque ligne et affichez-la sur le terminal avec put
      puts "La taille de la courge amère：#{record["weight"]}　Qui a vendu：#{record["give_for"]}"
  end
ensure
  # Enfin, utilisez .finish pour vous déconnecter de la base de données
  connection.finish
end
