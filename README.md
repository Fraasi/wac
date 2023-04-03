## wac - wolfram|alpha cli
Query the wolfram|alpha api from the command line.

> If you're unfamiliar with wolfram|alpha, you can read more about it and try it on their [website](https://www.wolframalpha.com)

### dependencies
* curl - for fething data
* jq - for parsing json

### install
You need a free api key form [wolfram|alpha](https://products.wolframalpha.com/api/).
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
  -f    full query mode (default)
  -h    show this help
  -s    spoken mode
  -t    show tips on how to use
  -U    update wac
  -r    result mode
  -v    show version
  -w    query the web interface
```
