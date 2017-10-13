sdist:
	rm -rf dist
	cp README.md README
	python setup.py sdist
	ls -l dist/nanosql*.tar.gz
	sleep 5
	cd dist && mkdir tmp && cd tmp && tar xzvf ../nanosql*.tar.gz && cd nanosql*[0-9] && ./setup.py build
	python setup.py sdist
	twine upload dist/nanosql*.tar.gz
	rm -rf dist
	rm README
