#!/bin/bash

# Current script path
script_path="$(pwd)/$(basename "$0")"

# Set the installation folder
install_folder="/opt/ledger-live"

# Base64-encoded image string
ledger_logo_encoded="iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
AXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAmHSURBVHgB7dnBTStZFEXR65YD8M+gHAmfiHAI
kAFkBJHYGeAM3MCInvQACgnYa0kngRo8bdXdzMxlAICUfwYAyBEAABAkAAAgSAAAQJAAAIAgAQAA
QQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAA
QJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIA
ABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIE
AAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAg
AQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAg
SAAAQJAAAIAgAQAAQQIAAIK2w6dcLpeB9/b7/ZxOp2E9y7LM8XgceG+z2Qwf5w8AAAQJAAAIEgAA
ECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQA
AAQJAAAIEgAAECQAACBoO3w7j4+P8/T0NPxM5/N5WNfrN727uxt+pqurq/n79+/w/Vzs4/sKt7e3
P+obmJn9317ftK/wk77Bd5wTAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAA
CBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIA
AIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAA
AIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAk
AAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAICg7fApp9Np1vb8/DwA
v8Xrm/YVbyWfs3nZZQCAFCcAAAgSAAAQJAAAIEgAAECQAACAIAEAAEECAACCBAAABAkAAAgSAAAQ
JAAAIEgAAECQAACAIAEAAEECAACCBAAABAkAAAgSAAAQJAAAIEgAAECQAACAIAEAAEHbAVZ1OBxm
t9vNmh4fH98GsBYBACu7ubmZZVlmbQIAWJMTAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIA
AIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAA
AIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAk
AAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAE
CQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAA
QQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAA
QJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIA
ABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIE
AAAECQAACBIAABAkAAAgSAAAQJAAAICgzcsuA6zmeDzOsiyzpvP5/Laq0+k019fXA6xnO8C3t9vt
3gawFicAAAgSAAAQJAAAIEgAAECQAACAIAEAAEECAACCBAAABAkAAAgSAAAQJAAAIEgAAECQAACA
IAEAAEECAACCBAAABAkAAAgSAAAQJAAAIGg7wKoeHh5mt9sN6zmfzwOsa/OyywAAKU4AABAkAAAg
SAAAQJAAAIAgAQAAQQIAAIIEAAAECQAACBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIIEAAAECQAA
CBIAABAkAAAgSAAAQJAAAIAgAQAAQQIAAIK2w6ccj8dZ2/39/Tw8PAzAb3BzczOHw2HWtt/vh48T
AJ+0LMus7c+fPwPwW7y+aV/xVvI5TgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAA
ECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQA
AAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCAB
AABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBI
AABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAgrbDt3N1dTW3
t7fDz3R/fz/n83lYz263m8PhMPxMr28a38/mZZfhwy4Xn4//2u/3czqdhvUsyzLH43Hgvc1mM3yc
EwAABAkAAAgSAAAQJAAAIEgAAECQAACAIAEAAEECAACCBAAABAkAAAgSAAAQJAAAIEgAAECQAACA
IAEAAEECAACCBAAABAkAAAgSAAAQJAAAIGjzsssAACn+AABAkAAAgCABAABBAgAAggQAAAQJAAAI
EgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAA
ggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAA
gCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQA
ACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJ
AAAIEgAAECQAACBIAABAkAAAgCABAABBAgAAggQAAAQJAAAIEgAAECQAACBIAABAkAAAgCABAABB
AgAAggQAAAQJAAAIEgAAEPQvraDgxBsmDNsAAAAASUVORK5CYII="

# Function to get the software version from the URL
get_version() {
  local url="$1"
  grep -oP 'ledger-live-desktop-\K[\d.]+' <<< "$url"
}

# Function to create ledger-live.desktop file
create_desktop_file() {
  local user="$1"
  local applications_path="/home/${user}/.local/share/applications"
  local user_desktop="$(su -c 'xdg-user-dir DESKTOP' $user)"
  local desktop_content="[Desktop Entry]
Type=Application
Terminal=false
Version=${stored_version}
Name=Ledger Live
StartupWMClass=Ledger
Exec=${install_folder}/ledger-live.AppImage
Categories=Finances
Icon=${install_folder}/ledger-live.png"

  # Check if ~/.local/share/applications directory exists
  if [ -d "${applications_path}" ]; then
    # Create the desktop file
    file="${applications_path}/ledger-live.desktop"
    echo "${desktop_content}" > "${file}"

    # Set ownership and permissions for the desktop file
    chown "${user}:${user}" "${file}"
    chmod 700 "${file}"

    echo "ledger-live.desktop created for user: ${user}"

    # Copy desktop file to the user's desktop
    cp -v "${file}" "${user_desktop}"

    file="${user_desktop}/ledger-live.desktop"

    chown "${user}:${user}" "${file}"
    chmod 700 "${file}"

    echo "ledger-live.desktop copied to ${user}'s desktop."
  else
    echo "Error: ~/.local/share/applications directory not found for user: ${user}"
  fi
}

# Function to perform the update
perform_update() {
  # Download the update
  curl -L "${url}" --output "${install_folder}/ledger-live.AppImage"

  # Set ownership and permissions for the AppImage
  chown root:root "${install_folder}/ledger-live.AppImage"
  chmod 755 "${install_folder}/ledger-live.AppImage"

  # Store the new version in version.txt
  echo "${software_version}" > "${install_folder}/version.txt"

  # Decode and write the base64 string to an image file
  echo "${ledger_logo_encoded}" | base64 -d > "${install_folder}/ledger-live.png"

  # Set ownership and permissions for the image file
  chown root:root "${install_folder}/ledger-live.png"
  chmod 644 "${install_folder}/ledger-live.png"

  # Set ownership and permissions for the install folder
  chown root:root "${install_folder}"
  chmod 755 "${install_folder}"

  # Loop through user directories and create desktop files
  for user in /home/*; do
    if [ -d "$user" ]; then
      create_desktop_file "$(basename "$user")"
    fi
  done

  echo "Update successful. Version ${software_version} installed."
  echo "Image file 'ledger-live.png' created."
}

# Check if running as root
if [ "$(id -u)" != 0 ]; then
  echo "This script requires root permissions. Please run with sudo."
  exit 1
fi

# Check if version.txt exists
if [ -e "${install_folder}/version.txt" ]; then
  # Read stored version from version.txt
  stored_version=$(cat "${install_folder}/version.txt")
else
  stored_version=""
fi

# Get the software version from the URL
url=$(curl -sI 'https://download.live.ledger.com/latest/linux' --head | grep -i 'location' | awk '{print $2}' | tr -d '\r')
software_version=$(get_version "${url}")

# Compare stored version with software version
if [ "${stored_version}" != "${software_version}" ]; then
  # Prompt user for update
  if [ -e "${install_folder}/ledger-live.AppImage" ]; then
    read -p "New version available. Do you want to update from ${stored_version} to ${software_version}? (y/n): " choice
  else
    read -p "Ledger Live is not installed. Do you want to install the ${software_version} version? (y/n): " choice
  fi

  if [ "${choice}" == "y" ]; then
    # Create directories if they don't exist
    mkdir -p "${install_folder}"

    # Perform the update
    perform_update

    file="${install_folder}/ledger-live-update"
    cp -v "${script_path}" "${file}"
    chown root:root "${file}"
    chmod 755 "${file}"
  else
    echo "Update declined. Using current version ${stored_version}."
  fi
else
  echo "You are already using the latest version ${stored_version}."
fi
