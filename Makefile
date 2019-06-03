STATIC = database/static
SCSS = scss
compile-scss:
	pysassc $(SCSS)/output.scss $(STATIC)/output.css -s compressed

compile-scss-debug:
	pysassc $(SCSS)/output.scss $(STATIC)/output.css --sourcemap

watch-scss:
	watchmedo shell-command --patterns=*.scss --recursive --command="make compile-scss-debug" $(SCSS)

run:
	python manage.py runserver 0.0.0.0:8000

migrations-check:
	python manage.py makemigrations --check --dry-run

	