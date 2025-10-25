import subprocess, sys

def run_command():
    args = sys.argv[1:]  # everything after start.exe
    process = subprocess.Popen(
        ["cmd", "/c", "start.bat", *args],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        bufsize=1
    )

    try:
        for line in process.stdout:
            print(line, end="")
    except KeyboardInterrupt:
        print("\nStopping process...")
        process.terminate()
    finally:
        process.wait()

if __name__ == "__main__":
    run_command()