# Macintosh Script

**Macintosh Script** is a lightweight, self-contained Bash utility for macOS that fetches app icons directly from the [macOSicons API](https://macosicons.com). It works out-of-the-box on a fresh Mac without any dependencies—just `bash` and `curl`. Perfect for quickly building a local collection of macOS-style icons.

## Features

* Fetches icons for a predefined list of apps
* Saves icons as PNG files into a dedicated folder
* Fully self-contained, no additional installs required
* Works on **fresh macOS installations**

## Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/YOUR_USERNAME/Macintosh_Script.git
cd Macintosh_Script
```

### 2. Make the script executable

```bash
chmod +x Macintosh_Script.sh
```

### 3. Run the script

```bash
./Macintosh_Script.sh
```

The icons will be saved in a folder called `Macintosh_Script_Icons` in the same directory.

## Customization

* **Change the list of apps**: Edit the `APPS` array in `Macintosh_Script.sh`:

```bash
APPS=("Finder" "Safari" "Notes" "Mail")  # Add or remove apps here
```

* **Change save folder**: Edit the `SAVE_FOLDER` variable:

```bash
SAVE_FOLDER="Macintosh_Script_Icons"
```

## Notes

* Requires a **macOSicons API key**. Replace `API_KEY` in the script with your own key.
* Downloads the **first icon** returned for each app.
* No external dependencies—works on stock macOS Terminal.

## License

No license this time! Good luck!
