.PHONY: test

deps:
	npm install

lint:
	node_modules/.bin/eslint .

test:
	make lint
	make cover

cover:
	node_modules/.bin/istanbul cover  node_modules/.bin/_mocha -- tests.js 
