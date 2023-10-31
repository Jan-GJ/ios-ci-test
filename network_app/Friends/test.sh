xcodebuild \
-project project.xcodeproj \
-scheme project \
-sdk iphonesimulator \
-destination 'platform=i0S Simulator,name=iPhone 15, 0S=17.0.1' \
CODE_SIGN_IDENTITY="" \
CODE_SIGNING_REQUIRED=NO \
DEVELOPMENT_TEAM=CODE_SIGNING_ALLOWED=NO \
test
