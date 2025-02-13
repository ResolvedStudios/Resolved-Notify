# Resolved Notify

Resolved Notify is a lightweight and easy-to-implement notification system designed specifically for standalone FiveM servers. With just a simple trigger event, this system allows server administrators to display styled notifications that are fully customizable. Unlike other notification systems, Resolved Notify is standalone, meaning it doesn't require additional frameworks or dependencies to work.

It offers a clean, user-friendly interface with customizable colors, icons, and positions for different notification types such as success, information, and error messages. The notifications automatically fade out after a set duration, ensuring a smooth user experience without any clutter. Whether you're managing server events, informing players of important messages, or simply adding aesthetic appeal to your server, Resolved Notify provides a seamless and straightforward solution.

### Features:
- Easy to integrate with standalone FiveM servers.
- Fully customizable notification styles, including colors, icons, and positions.
- Smooth fade-out animations for notifications.
- Configurable sound effects for added interactivity.
- Lightweight and requires no external dependencies.

![image](https://github.com/user-attachments/assets/9b29361d-280a-442a-aca2-37b38cabaace)


# Install
### Step 1: Download Resolved Notify
- Download the Resolved Notify resource file from the repository or from the source where it's available.

### Step 2: Extract the Files
- Extract the downloaded files to your server's resources directory.

> [!IMPORTANT]
> ### Step 3: Add the Resource to Your Server Configuration
> - Open your server.cfg file. 
> - Make sure you put this line **ensure Resolved-Notify** into your CFG to insure it loads correctly.

___

# Adding Custom Triggers To Your Script

> [!TIP]
> Change 'Type' to 'success', 'error', or 'info' based on your message type.
> Don't want a notification sound? just remove the "Trigger notification sound" line
### You will need this line of code to enable the trigger
```LUA
-- Trigger notification 
 TriggerEvent('customNotify:Send', 'Type', 'MESSAGE GOES HERE', 4000) 

-- Trigger notification sound
TriggerEvent('customNotify:PlaySound', 'notify') -- Optional: This will play a notification sound
```
## [Resolved Greenzones](https://github.com/ResolvedStudios/Resolved-Greenzones)
In this script, I used Resolved Notify to notify the player of entering and exiting a zone!


If the link does not work.. Here is a direct link: https://github.com/ResolvedStudios/Resolved-Greenzones
