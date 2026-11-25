README.md: guessinggame.sh
	@echo "# Jeu de devinette du nombre de fichiers (Guessing Game)" > README.md
	@echo "" >> README.md
	@echo "- **Date et heure d'exécution de make :** $$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	@echo "- **Nombre de lignes de code dans guessinggame.sh :** $$(wc -l < guessinggame.sh)" >> README.md
