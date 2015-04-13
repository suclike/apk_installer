# APK Installer (Android)
This app allows you to make a typical double click on any `.apk` file. It will automatically run `adb install` command to the connected devices.

[Full Video Demo](https://www.youtube.com/watch?v=q-AqVJGGezY)

![Gif demo](apk_installer_demo.gif)

## Usage 1
Put APK Installer in the OS X Dock and then just Drag and drop any .apk file on it. **Currently connected devices** will have that apk installed inmediately.

## Usage 2
Double Click on any .apk file and get your app installed on **currently connected devices**.

To do it properly you must set up the file association first:

* `⌘ + i` on any .apk file.
* Click on "Open with" dropdown.
* Select **Other..**
* Navigate to your Applications if not already there and choose the APK Installer app.
* Finally click on Change All... button in the same Info window.

## Installation

* Make sure to have Android SDK downloaded and PATH set up in `.bash_profile` (See how to do it below).
* Download the `Apk Installer.app.zip`, uncompress it and drag and drop to your Applications.
* IMPORTANT: Don't forget to go "System Settings > Security & Privacy > Allow apps downloaded from". And press **Open anyway** if your system complains that this app was downloaded from unknown sources. 


## Setting up .bash_profile

* Open Terminal and write 
`touch ~/.bash_profile`
* Then 
`open -e ~/.bash_profile` which will open EditText. Do not close it yet.
* Open Finder.
* Navigate to the folder containing Android SDK.
* Drag and drop **platform-tools** folder from Finder window to Terminal window.
* Copy that path. Typically it looks like `/Users/<yourname>/Downloads/android-sdk/platform-tools`
* Go back to open EditText document and paste there the copied path prepending it with `export PATH=$PATH:`
* Save and close EditText document and Done!

Finally you should have something like this:
`export PATH=$PATH:/Users/<yourname>/Downloads/android-sdk/platform-tools`


## Credits

* This app was developed by @vitovalov

* Icon design by [ITMaryna](https://www.behance.net/ITMaryna)
