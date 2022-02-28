docs: clean docbuild process-archive

clean:
	rm -rf DerivedData
	rm -rf docs

docbuild:
	xcodebuild docbuild \
		-scheme StaticDocC \
		-derivedDataPath DerivedData \
		-destination 'platform=iOS Simulator,name=iPhone 13'

process-archive:
	/Applications/Xcode-beta.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/docc process-archive \
		transform-for-static-hosting "DerivedData/Build/Products/Debug-iphonesimulator/static-docc.doccarchive" \
		--output-path docs \
		--hosting-base-path "static-docc/"
