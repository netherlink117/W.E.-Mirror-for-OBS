# W.E. Mirror for OBS
This is a container that focus on mirror Wallpaper Engine without the debug panel at the right side of the debug web UI.
In simple words, it clones the wallpaper from Wallpaper Engine to a web page that can be accessed by OBS via Web Browser resource.
## How to install
To install there are some requirements for containers, there are no other requirements than containers being able to run in the PC with Wallpaper Engine already installed.
1. Clone this repository.
```bash
git clone https://github.com/netherlink117/W.E.-Mirror-for-OBS.git
```
2. Set up the CEF port at Wallpaper Engine > Settings > General > Developers. By default this container looks on 8090.
3. If you are not using 8090 for Wallpaper Engine CEF port, you must change the port address at `proxy.php` file at the 4th line.
```php
$url = "http://" . $out[0] . ":8090/json/list?t=" . (time() * 1000); // change this line if youre using different port
```
4. If you are not using 8090 for Wallpaper Engine CEF port, you must change also the port address at `index.html` file at the 25th line.
```javascript
const ws = new WebSocket("ws://localhost:8090/devtools/page/" + responseJSON[0].id); // change this line if youre using different port
```
5. Install Docker if you dont have it installed yet. There an official guide at this [link](https://docs.docker.com/get-docker/), just choose you right operative system.
6. If you are using Windows operative system you can double click the `build.cmd` file. Or you can optionally build the docker image with you own parameters if you know what you are doing.
7. Once build, if you build using the `build.cmd` file, you can run a container using the run button at Docker Desktop > Images > netherlink117:we-mirror-for-obs > run.
Note that you must bind the port 9998 of the docker container to your machine.
8. Test, enter to [http://localhost:9998/](http://localhost:9998/) if you are using the default Docker port. You shoud be able to watch you wallpaper.
9. If the previous address worked, you can use the it to show your wallpaper into OBS by adding a Web Browser resource.
## License
The code shared on this repository is shared under [The Unlicense](https://unlicense.org/) license.
