
dev:
	hugo server -D

deploy:
	rm -rf public
	hugo -D -b "http://gliderlabs.com"
	cd public && git init && git remote add origin $(shell git remote get-url origin)
	cd public && git add . && git commit -m "auto commit"
	cd public && git push origin -f master
	cd public && rm -rf .git