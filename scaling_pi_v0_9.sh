 #!/bin/bash
  # Print Pre-text Containing Script Version Info & Creator Info (please leave current credits intact and add a separate line if you modify the script & pass it on)
  clear
  echo "Timos Backup Script"
  echo ""
  echo "V0.8"
  echo ""
  read -p "Please Press ENTER To Continue..." waitForEnter
  echo ""
  echo "Now changing into the MEDIA-Directory..."
  echo ""
  cd /media && pwd
  #cd / && pwd
  echo ""
  echo "Please chose a folder to copy FROM..."
  echo ""
  select d in */*/*/ */*/ */; do test -n "$d" && break; echo ">>> Invalid Selection"; done
  echo ""
  echo "Please chose a folder to copy TO..."
  echo ""
  select e in */*/*/ */*/ */; do test -n "$e" && break; echo ">>> Invalid Selection"; done
  echo ""
  read -p "Do you want to copy $d into $e?" waitForEnter
  echo ""
  rsync -ru --progress "$d" "$e"
  echo ""
  read -p "Done. Press ENTER to end this script..." waitForEnter
  echo ""
  # End Of Backup.sh Script
