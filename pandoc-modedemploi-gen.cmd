@REM AVANT DE GÉNÉRER AVEC PANDOC
@REM Vérifier que le docx est à jour et bien sauvegardé une fois en "Page web, filtrée (*.htm, *.html)"
@REM pour disposer d’une liste d’images à jour correctement nommées dans ./indix_fichiers

@REM -f format de l’entrée
@REM -t format du généré
@REM -o nom du fichier généré
@REM -s option generate a standalone html document (not a html fragment)

@REM E:\Install\pandoc-3.10.2\pandoc-3.10.2\pandoc.exe index-modedemploi.docx -f docx -o index-modedemploi.html -t html -s --resource-path=index_fichiers --embed-resources=true
 E:\Install\pandoc-3.10.2\pandoc-3.10.2\pandoc.exe index-modedemploi.docx -f docx -o index-modedemploi.html -t html -s --resource-path=index_fichiers
@pause

@REM APRÈS GÉNÉRATION DU FICHIER, IL FAUT :
@REM - Copier dans .\media les fichiers se trouvant dans .\index_fichiers
@REM - Renommer dans le source du fichier html généré par pandoc :
@REM     media/image en media/image0
@REM     les fichiers image/media0n.jpg ou png en image/media00n.jpg ou png en 
@REM     .jpeg en .jpg
@REM - Vérifier que les extensions des fichiers images générés par Word puis Pandoc sont les bonnes (.jpeg vs. .png)
@REM - Compléter le style td { } avec la ligne : border-bottom: 1px solid #1a1a1a;



