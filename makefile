
PROJECT = AliyunFcDemo

publish:
	rm -rf ./dist
	dotnet publish -c Release -r linux-x64 -o ./dist --self-contained
	cd dist && mv $(PROJECT)  bootstrap && chmod 755 bootstrap
#	cd .. && zip -r code.zip  ./dist -j
zip:publish
	zip -r code.zip -j ./dist/*