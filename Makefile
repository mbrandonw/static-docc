docs: docbuild process-archive

docbuild:
	xcodebuild docbuild \
		-scheme StaticDocC \
		-derivedDataPath DerivedData \
		-destination 'platform=iOS Simulator,name=iPhone 13'

process-archive:
	$(xcrun --find docc) process-archive \
		transform-for-static-hosting "DerivedData/Build/Products/Debug-iphonesimulator/static-docc.doccarchive" \
		--output-path docs \
		--hosting-base-path "www.fewbutripe.com/static-docc"