# 🐍 PassGPY — Password Generator made in Python

---
A very simple and minimal password generator CLI Program made using [Typer](https://github.com/fastapi/typer)

---

# 🚀 Installation

Is is recommended to run the program using Docker: `docker run --rm -it  ghcr.io/iaguinho1727/passgpy generate`


# 💻 Usage

Custom Length:

`docker run --rm -it ghcr.io/iaguinho1727/passgpy generate --length 50`

Write to a file:

`docker run --rm -it ghcr.io/iaguinho1727/passgpy generate --output passwords.txt`

Multiple passwords:

`docker run --rm -it ghcr.io/iaguinho1727/passgpy generate --count 10`

# 💄 GUI Mode

There is a GUI version of this program you can use it with the fallowing command:

`docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -it ghcr.io/iaguinho1727/passgpy:0.0.1 gui`


![GUI of passGPY](assets/gui.png)



