import os
import subprocess
import sys

def main():
    # Obtener ruta del usuario
    username = os.environ.get("USERNAME")
    
    # Construir ruta objetivo
    target_dir = os.path.join(
        "C:\\Users",
        username,
        "AppData",
        "Roaming",
        "Ambidextro",
        "steam_save_files"
    )

    # Crear carpeta si no existe
    if not os.path.exists(target_dir):
        try:
            os.makedirs(target_dir, exist_ok=True)
        except Exception:
            pass  # Silencioso, como pediste

    # Obtener ruta donde está el .exe/script
    if getattr(sys, 'frozen', False):
        base_path = os.path.dirname(sys.executable)
    else:
        base_path = os.path.dirname(os.path.abspath(__file__))

    # Ruta al ejecutable del juego
    game_path = os.path.join(base_path, "Ambidextro.exe")

    # Ejecutar el juego (sin abrir consola)
    try:
        subprocess.Popen(game_path, cwd=base_path)
    except Exception:
        pass  # Silencioso

if __name__ == "__main__":
    main()