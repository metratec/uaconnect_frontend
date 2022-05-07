# UA Connect Frontend 

Routes have to be generated before start:

`flutter pub run build_runner build`

This currently only supports "web" as target.

Build with:

`flutter build web --release`

Then deploy content to Netlify via "build-and-push.sh"


../../../flutter/bin/flutter run -d web-server --web-port 8080 --web-hostname 0.0.0.0

