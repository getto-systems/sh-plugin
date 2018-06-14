# sh-plugin

install shell scripts

```
. /path/to/sh-plugin.sh
. /path/to/plugins.sh

sh_plugin_update # update plugins
```


###### Table of Contents

- [Requirements](#Requirements)
- [Usage](#Usage)
- [License](#License)

<a id="Requirements"></a>
## Requirements

- Bash


<a id="Usage"></a>
## Usage

### plugins.sh

list up your repositories

```
SH_PLUGIN_ROOT=$HOME/.plugins

sh_plugin https://github.com/USER/REPOSITORY.git
```

### install

```
git clone https://github.com/getto-systems/sh-plugin.git
```


<a id="License"></a>
## License

sh-plugin is licensed under the [MIT](LICENSE) license.

Copyright &copy; since 2018 AUTHOR
