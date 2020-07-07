Some tips for using vim!



##### Bind caps lock to escape key

- Make entering command mode a lot easier
- https://www.jeffgeerling.com/blog/2017/remapping-caps-lock-key-escape-macos-sierra for how to remap the keys.

**<C-a> <C-e> key bindings**

- I was very familiar with C-e for end of line and C-a for beginning of line (from emacs), you can bind these to the equivalent for vim ($ and 0):

  ```
  :map <c-a> 0
  :map <c-e> $
  
  ```

**How to tab a bunch of lines at the same time**

- Shift + v for visual mode
- j or k to select the lines you need
- Shift + . or Shift + , (> or < sign) depending on where you want to ident
- Can also for example do something like 5>, which indents 5 times



**How to add a character to the beginning of sequential lines**

- Press Control V for visual block mode
- Select lines that you want to modify
- Shift + i and type the text
- CapsLk, after 1s the inserted text will appear everywhere.
- from https://stackoverflow.com/questions/253380/how-to-insert-text-at-beginning-of-a-multi-line-selection-in-vi-vim/253391#253391

** Key repeat stuff **

- First, sys preferences -> keyboard -> enable key repeat, fast, short time until detection

- VSCode vim: run this command defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

- VSCode vim: allow vimrc keybinds to work with VSCode vim

  - Need to add them into your settings.json

  - Mine is at /Users/rvarm1/Library/Application Support/VSCode /User/settings.json

  - Add the following:

    ```
    "vim.insertModeKeyBindings": [
            // {
            //     "before": ["j", "j"],
            //     "after": ["<esc>"]
            // },
            {
                "before": ["<c-a>"],
                "after": ["<esc>", "0", "i"]
            },
            {
                "before": ["<c-e>"],
                "after": ["<esc>", "$", "a"]
            }
       ],
    ```

    the ctrl + a will take you to the beginning of the line and put you in insert mode, the ctrl + e will take you to the end of the line and put you in insert mode

    you should also be able to find this settings.json file and edit it from searching for it within VSCode itself.
