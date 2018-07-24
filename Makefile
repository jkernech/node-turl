.PHONY: test

deps:
	npm install

cover:
	node_modules/.bin/istanbul cover node_modules/.bin/_mocha -- tests.js --exit

lint:
	node_modules/.bin/eslint .

test:
	make lint
	make cover

sonar:
	make test

	sed '/sonar.projectVersion/d' ./sonar-project.properties > tmp && mv tmp sonar-project.properties
	echo sonar.projectVersion=`cat package.json | python -c "import json,sys;obj=json.load(sys.stdin);print obj['version'];"` >> sonar-project.properties
	wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.8.zip
	unzip sonar-scanner-2.8.zip
	@sonar-scanner-2.8/bin/sonar-scanner -Dsonar.organization=$(SONAR_ORGANIZATION)  -Dsonar.host.url=$(SONAR_CLOUD_URL) -Dsonar.login=$(SONAR_TOKEN)
	rm -rf sonar-scanner* coverage
