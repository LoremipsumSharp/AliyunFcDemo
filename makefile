
PROJECT = AliyunFcDemo

publish:
	rm -rf ./dist
	dotnet publish -c Release -r linux-x64 -o ./dist --self-contained
	cd dist && mv $(PROJECT)  bootstrap && chmod 755 bootstrap
	
zip:publish
	zip -r code.zip -j ./dist/*
