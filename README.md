# Sobrio theme

![Screen shot](./images/screenshot.png)

## About this theme

This is a theme for **Vim** and **Neovim**, with sober colors (at least for me), hence the name.
It has support for italic fonts, too. The font used in the screenshots is Victor Mono. At the moment, I only tested it in Neovim, but I think it should work with Vim as well. For the best experience, make sure your terminal supports at least 256 colors.

---

## Manual installation

To use it, follow these steps:

1. Copy the `colors/sobrio.vim` file to your colors directory, usually `~/.config/nvim/colors/` for Neovim or `./vim/colors/` for Vim.
2. Set the color scheme: `:colorscheme sobrio`.
3. ???
4. Profit!

---

## Using Vim-Plug

Add this repo in the Vim-Plug section of your config file:

```vim
call plug#begin()
	Plug 'elvessousa/sobrio'
call plug#end()
```

After sourcing the file (or restarting the editor), run `:PlugInstall` and restart Vim/Neovim.

---

## Using Vundle

Add this repo in the Vundle section of your config file:

```vim
call vundle#begin()
	Plugin 'elvessousa/sobrio'
call vundle#end()
```

After sourcing the file (or restarting the editor), run `:PluginInstall` and restart Vim/Neovim.

---

## Using NeoBundle

Add this repo in the Vundle section of your config file:

```vim
call neobundle#begin()
	NeoBundleFetch 'elvessousa/sobrio'
call neobundle#end()
```

After sourcing the file (or restarting the editor), run `:NeoBundleInstall` and restart Vim/Neovim.

---

## Setting it as your default

If you want to make it your default, just add this line to your `init.vim` or `.vimrc`:

```vim
colorscheme sobrio
```

## Screenshots

### HTML

![HTML](./images/html.png)

### JavaScript / Typescript

![JavaScript](./images/js.png)

### React

![JavaScript](./images/jsx.png)

### CSS

![CSS](./images/css.png)

### SCSS

![SCSS](./images/scss.png)

### Sass

![Sass](./images/sass.png)

### SVG

![SVG](./images/svg.png)

### YAML

![YAML](./images/yaml.png)

### JSON

![JSON](./images/json.png)

### Python

![Python](./images/python.png)

### PHP

![PHP](./images/php.png)

### Elixir

![Elixir](./images/elixir.png)

### Rust

![Rust](./images/rust.png)

### C++

![C++](./images/cpp.png)

## Airline theme

![Normal](./images/airline/normal.jpg)
![Insert](./images/airline/insert.jpg)
![Visual](./images/airline/visual.jpg)
![Command](./images/airline/command.jpg)
![Replace](./images/airline/replace.jpg)

### Installation

1. Copy the `./autoload/airline/themessobrio.vim` file to your NVIM airline themes directory, usually `~/.config/nvim/autoload/airline/themes/`
2. Set the color scheme: `:AirlineTheme sobrio`.

### Setting it as your default

If you want to make your default Airline theme, add this to your `init.vim`:

```vim
let g:airline_theme='sobrio'
```

Take care!
