## wac - wolfram-alpha cli
Query the Wolfram-alpha api from the command line.

> note: this is just an early working version. Needs more usage to find the bugs and see what could be done better.
If you're unfamiliar with wolfram-alpha, you can read more about it & also try it on their [website](https://www.wolframalpha.com)

### dependencies
* curl - for fething data
* jq - for parsing json

### install
You need a free api key form [wolfram-alpha](https://products.wolframalpha.com/api/).
Put the api key in an env variable named `WOLFRAM_APP_ID` or you can use a config file, see [config.example](https://github.com/Fraasi/wac/blob/main/config.example).
Download the [wac file](https://raw.githubusercontent.com/Fraasi/wac/main/wac) and put it somewhere in your path and make it executable.
For example:
```sh
curl https://raw.githubusercontent.com/Fraasi/wac/main/wac -o ~/.local/bin/wac
```
and then
```sh
chmod +x ~/.local/bin/wac
```
and you're good to go.

```sh
$ wac -h

Usage:
  wac [options] <your query>

  Options:
  -d    debug (with -f, dump json to result.json)
  -f    full api mode (default)
  -h    show this help
  -s    spoken mode
  -r    result mode
  -v    show version
  -w    query the web interface
```
