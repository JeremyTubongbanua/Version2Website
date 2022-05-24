# version2_website

Website for Version2 LLC.

## Website

https://version2.llc/#/

## Developer Notes

Firebase Hosting:

1. Login to firebase: `firebase login`
2. Download the FlutterFire CLI: `dart pub global activate flutterfire_cli`
3. Configure the following project with the firebase application: `flutterfire configure --project=<project_name>` Replace <project_name> with your project.
4. `dart pub get firebase_core`
5. `firebase init`
6. `firebase deploy`

Google Domains:

1. Go to DNS
2. Go to Custom Records
3. Add a Custom Record
4. Get the Host Name for type TXT and get the value <- all from Firebase Hosting.
