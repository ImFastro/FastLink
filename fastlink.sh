#!/usr/bin/env bash
# PAGE - Terminal Script

clear
cat <<'BANNER'
  ____                 
 |  _ \ __ _  __ _  ___ 
 | |_) / _` |/ _` |/ _ \
 |  __/ (_| | (_| |  __/
 |_|   \__,_|\__, |\___|
             |___/      
        FastLink v1.0
===========================================
BANNER

pause() {
  read -rp "Tekan Enter untuk kembali..." _dummy
}

show_templates() {
  echo
  echo "Templates tersedia:"
  echo "  1) Facebook"
  echo "  2) Instagram"
  echo "  3) Google (Gmail)"
  echo "  4) Twitter"
  echo "  5) Exit to main menu"
  echo
  read -rp "Pilih template (1-5): " tmpl
  case "$tmpl" in
    1) echo ">> Template Facebook dipilih";;
    2) echo ">> Template Instagram dipilih";;
    3) echo ">> Template Google dipilih";;
    4) echo ">> Template Twitter dipilih";;
    5) return;;
    *) echo "Input tidak valid."; show_templates;;
  esac
  echo "Template siap dijalankan."
  pause
}

simulate_start() {
  echo
  echo "Menjalankan server..."
  for i in 1 2 3; do
    printf "    Memuat modul %d...\n" "$i"
    sleep 1
  done
  echo "Server berhasil dijalankan."
  echo "URL: https://fastlink.example/connect"
  pause
}

about() {
  clear
  cat <<'INFO'
FastLink v1.0
Tool multi-template berbasis terminal.
INFO
  pause
}

main_menu() {
  while true; do
    clear
    cat <<'MENU'
=== PAGE MAIN MENU ===
1) Pilih template
2) Mulai server
3) Tentang
4) Keluar
MENU
    read -rp "Pilih (1-4): " opt
    case "$opt" in
      1) show_templates ;;
      2) simulate_start ;;
      3) about ;;
      4) echo "Keluar." ; exit 0 ;;
      *) echo "Pilihan tidak dikenal." ; sleep 1 ;;
    esac
  done
}

main_menu
