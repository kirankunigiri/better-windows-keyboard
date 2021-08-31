# Better Windows Keyboard
Scripts/tools to vastly improve the Windows keyboard experience. It also brings many macOS keyboard shortcuts to Windows.

## Why?
I used a MacBook for many years before I finally switched to a Windows computer, and found a lot of things to be worse compared to the macOS keyboard. There are also several Windows apps that can greatly enhance productivity using your keyboard.

---

## Feature 1: Bringing macOS shortcuts to Windows

The macOS keyboard layout has many advantages over the Windows keyboard keys, especially for ergonomics by using the command key over the awkwardly positioned Control key, and many better text navigation shortcuts.

I created a script that brings the Option and Command key functionality to the Win and Alt keys on Windows to greatly improve ergonomics and productivity. 

* **Alt Key will mimic the Command Key from macOS**
* **Windows key will mimic the Option key from macOS**
* **Control Key will mimic the original Windows key**

### Why these shortcuts are much better:

* The control key is not ergonomic at all; it forces you to constantly stretch your pinky finger and to shift your entire left hand to reach key combinations
  * On macOS, the Command key uses your thumb, and you can use your index finger for shortcut keys which is much more comfortable
* There are very few shortcuts for text navigation on Windows. It's limited to using the Ctrl+Left/Right to seek through words. On macOS, you can use the Command key to seek to the beg/end of lines, and option to seek to each word. Cmd+Up/Down also let you go to the beg/end of a page. The home/end keys can do this on Windows, but some laptops don't even have those keys, and having to move your hand all the way to the right just to use them is a waste of time.

### Setup Part 1: SharpKeys

[Install SharpKeys](https://github.com/randyrants/sharpkeys/releases) and add the maconwin.skl file to the app (or manually remap the keys shown below). It will automatically remap the following keys, which is the base of our remapping.
```
Win → Alt
Alt → Control
Control → Win
```

### Setup Part 2: AutoHotKey

Now that the base key remapping is done, we can add specific macOS-like functionality.  You can use shift with text navigation shortcuts to highlight as well.

[Install AutoHotKey](https://www.autohotkey.com/download/ahk-install.exe) and  run the maconwin.ahk script by double clicking it. You will need to run this script each time you restart, or you can add it to your startup items.
```
Command Key (Alt)
Alt+Left		→ Beg of line
Alt+Right		→ End of line
Alt+Up			→ Beg of Page
Alt+Down		→ End of Page
Alt+Bkspce		→ Delete (useful to delete files)

Option Key (Win)
Win+Left		→ Prev word
Win+Right		→ Next word
```

Alt+Tab will still work to change app windows. This mimics macOS exactly, so changing tabs in apps like Chrome or VSCode will use Win+Tab, while all other shortcuts like new tab, close tab, etc. will use the Alt key.

### Setup Part 3 (optional): macOS Spotlight

Now that Win and Alt are remapped to functional keys, the original Windows key has been mapped to Control. This is because I personally find the Win key to be completely useless and I almost never use it. If you want to keep Win on the original key, you can change the remapping to use Control as the Option key instead of Win. 

However, I highly recommend using an app like Listary or Wox instead of depending on the Windows key. These apps replicate the macOS spotlight search feature and can bring up apps and files much faster than the Cortana windows key menu. I personally map it to Alt+Space to replicate the Cmd+Space Spotlight shortcut from macOS.

---


## Feature 2: Text Expansion

Text expander apps allow you to get text snippets using shortcut keys. There are many different apps, but I recommend aText. It's free on the Microsoft store. You can also run functions (like getting the current date). It's really handy for things like names, emails, etc.

**Examples**
* myemail → bobjones@gmail.com
* myname → Bob Jones
* getdate → 07/24/21