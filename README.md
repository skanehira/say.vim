# say.vim
This is a vim plugin that plays text as audio using `play`.

## Support OS
Mac OS only.

## Requirements
- say

## Installtion
e.g dein.vim
```toml
[[plugins]]
repo = 'skanehira/say.vim'
```

## Usage
Say specified line.
```vim
:'<,'>Say
```

Say specified {text}.
```vim
:Say {text}
```
