# RTX Remix PKG Extractor

A simple batch script that allows you to extract PKG files from RTX Remix mods (like Half-Life 2 RTX, Portal RTX, etc.) using a graphical folder picker. You can choose to extract a single PKG file or all of them from the selected mod folder.

## Features

- Select a folder containing `.pkg` files using Windows File Explorer.
- Automatically detects all available `.pkg` files (mod_00.pkg, mod_01.pkg, ..., mod_XX.pkg).
- Option to extract **one specific PKG file** or **all PKG files**.
- Extracts the contents to a folder named after the selected mod.

## Requirements

- **Windows** (Batch script and PowerShell are built into Windows).
- **RTX Remix PKG Extractor tool** (RtxIoResourceExtractor.exe) must be in the same folder as this script.
  
## Installation

1. **Download the repository** or clone it using:
   ```bash
   git clone https://github.com/your-username/rtx-remix-pkg-extractor.git
Place RtxIoResourceExtractor.exe (RTX Remix extractor) in the same directory as this script.
Make sure your PKG files are located in a folder ready for extraction.
Usage
Run the Batch Script:
Double-click the extract_pkgs.bat file to launch the script.
Select the Folder:
A File Explorer window will pop up for you to select the folder containing the .pkg files.
Choose Extraction Option:
The script will scan the folder for .pkg files and display:
Extract one specific PKG file by entering the number (e.g., mod_00.pkg).
Extract all PKG files at once.
Extraction:
The script will extract the files into a folder named after the mod in the current directory.
Example
For example, if the mod folder contains mod_00.pkg, mod_01.pkg, and mod_02.pkg, the script will:

Let you choose to extract any of them individually.
Or, you can choose to extract all of them.
Output:
All extracted files will be placed in a folder named after the mod, for example Half-Life 2 RTX.
Troubleshooting
No PKG files found: Ensure that you have the .pkg files in the folder and that they follow the naming convention mod_XX.pkg (e.g., mod_00.pkg, mod_01.pkg).
No folder selected or invalid path: This error appears if no folder is selected during the process. Please ensure you choose the correct folder when prompted.
License
This script is open-source and released under the MIT License.
