**Host Bitfocus Companion on your Pi/Odroid/HassOS as a Home Assistant Add-on**

This setup allows you to run Companion directly within Home Assistant. It integrates smoothly with the Stream Deck Companion plugin and is likely compatible with Companion Satellite as well.

**Installation Instructions:**

    Open Home Assistant.

    Go to Add-ons.

    Click the button to add a new repository.

    Click the three dots in the upper right corner and select Repositories.

    Add this link:
    https://github.com/avdmr/bitfocus-companion-hass-addon

    Click Save.

    Install the Companion add-on and start hosting Bitfocus Companion!

**To get started:**

    Create a Companion button on a Stream Deck page.

    Click "Open Companion Plugin General Configuration".

    Enter the IP address of your Home Assistant instance to connect.
    
    
**Troubleshooting**

Apparently, the add-on may cause problems with other add-ons that use USB devices plugged into the device running HassOS.
To work around this issue:

    Stop the other add-on(s) that use a USB device
    
    Restart the Companion add-on
    
    Then restart the other add-on(s)


**Want to add your companion buttons to home assitant?**
Check out Bitfocus Companion Bridge, a custom Home Assistant integration that imports Bitfocus Companion page exports as Home Assistant entities.

It can automatically create button, switch, and sensor entities from your exported Companion pages, allowing you to use your Companion buttons in Home Assistant automations.

You can find the integration here:
https://github.com/avdmr/Bitfocus-Companion-HA-Bridge
