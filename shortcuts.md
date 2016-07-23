### Visual mode
`vfs` - Select everything from cursor to letter "s"

`viw` - Select word

`viW` - Select selection to next white space

`vaw` - select word and white space 

`vaw` - select selection to next white space and select this white space

`vip` - select all paragraph

`vap` - select all paragraph and line after that

`vit` - select all words on paragraph. Example: `<p>Hello vim</p>`. If you type 

`vit`, will be select Hello vim

`vat` - select words and tags. Example: `<p>Hello vim</p>` vat will selected `<p>Hello World</p>`.

`vi` + "character" - Example: `function sum(arg1, arg2)` cursor must be into "(" or 
")". `vi(` will selected "arg1, arg2".

`va` + "character" - `Example: function sum(arg1, arg2)` cursor must be into "(" or 
")". `va(` will selected "(arg1, arg2)".

### Moving

`h` - right

`l` - left

`j` - bottom

`k` - top


`gj` - moving one line into wrap text

`gk` 


`w` - jump word to word

`W` - jump to next white space


`b` - back word to word

`0` - moving cursor into begin of line

`$` - moving cursor into end of line

`g0` - moving cursor into begin of wrapped line

`g$` - moving cursor into end of wrapped line

`e` - moving cursor into last letter of word


`gg` - top of the file

`<Shitft-G>` - end of the file


`}` - move to paragraph forward

`}` - move to paragraph backward

### Letter navigation

`f and letter` - navigate forward to this letter

`F and letter` - navigate backward to this letter


`t and letter` - navigate before this letter

`T and letter` - navigate after this letter

`2f and letter` - go to second letter

`fs and ;` - will repeat last fs command.


`*` - will highlight word where is cursor.

`#` - will place cursor to previous highlight word.

`%` - moving end of ( or {

### Commands set numbers

`:set number` - show numbers

`:column number`

### Delete

`dw` - delete word

`daw` - delete word and white space 

`dd` - delete all line


`cc` - delete all line and insert into Insert mode

`c + i + letter` - delete everything wrap this letter.


`cit` - Delete everything wrapped from tag. Example: `<p>Hello World</p>`. Cursor should 
be between `<p>` and `</p>` tags and command will delete Hello World


`ci + "charachter"` - Example: `function sum(arg1, arg2)`. Cursor should be placed between
"(" and ")", ci) command will select "arg1, arg2" and delete this selection and change mode to 
insert mode.


`ca + "charachter"` - Example: function sum(arg1, arg2). Cursor must be placed between
"(" and ")", ca( command will select "(arg1, arg2)" and delete this selection and change mode to
insert mode.

### Copy & Paste

`u` - undo

`p` - copy after cursor

`P` - copy before cursor

`y` - copy word

`yy` - copy line

`yaW` - copy all selection to white space

`.` - repeat last action.

### Comamnds for Searching

`:set incsearch` - incremental search

`:set ignorecase` - ignore case

`:set hlsearch` - Turn on Highlight search

`:nohlsearch` - Turn off Highlight search 

### Macros

`%` - all file

`:%s/Ember/Amber/g` - Replace all Ember with Amber

`q` - Create macros and exit of macros

`@ and macros letter` - execute macros

### Scroll

`<CTRL-d>` - scroll down half of screen

`<CTRL-u>` - scroll up half of screen

`<CTRL-f>` - scroll down all screen

`<CTRL-b>` - scroll top all screen


`H` - go of upper line

`M` - go to middle line

`L` - go to bottom line

### Cursor Position

`zt` - cursor position is set to top line

`zb` - cursor position is set to bottom line

`zz` - cursor position is set to middle line

### Markers

`m + letter for name of the marker`

`‘ + letter name navigate`

`‘’ + go again to navigate position`


### Terminal Commands

`:!` - use terminal commands

### Buffers

`bp` - load previous buffer

`bn` - load next buffer

`b#` - load last buffer

`:ls` - show buffers

`:tabs` - open tab

### Windows

`:split path` - load windows horizontal

`:vsplit path` - load windows vertical

`ctrl + w + l` - go to left window

`ctrl + w + h` - go to right window

`:sb and number of buffer` - horizontal split window. Example: `:sb2`

`:vert and number of buffer` - vertical split window. Example: `:vert sb2`


`gt` - go to next tab

`gT` - go previous tab

### Code formatting

##### Command mode:

`>>` - add 1 tab

`<<` - remove 1 tab

##### Insert mode:

with control key can be use for run commands from normal mode. Example `<CTRL-w>`

`<CTRL-t>` - add 1 tab

`<CTRL-d>` - remove 1 tab

`:set shiftwidth=3`- change tab spaces for >>

`:set softtabstop=3` - change tab spaces for tab into insert mode 

`<SHIFT-v>` - get selection

`gv` - get last selection

`:set smartindent`

`gg=G` - format indent of all file

### Folds

`zf5` - Create 5 collapse and expand lines. Create fold

`zo` - expand lines

`zc` - collapse lines

`zd` - delete fold

`z%` - try to create fold for code block

## Mapping

`:map ,rs :!bundle exec spec<CR>` - add new shortcut. ,rs will run command “bundle exec spec”. <CR> is enter command.

`:vmap ,rs :!bundle exec spec<CR>` - ,rs command can be run into visual mode.

### Mouse

`:set mouse=a`

### Registers

`"add` - Will create new register and copy information will be stored into register "a".

`"ap` - will copy information from register "a".

`"0p` - Register 0 store last yy stored info and copy this information.

`"0p` - Register 0 store last yy stored info and copy this information.

`"qd` - Override macros "q" and delete insert mode line info.

`:reg` - To access all currently defined registers type. Source: http://stackoverflow.com/questions/1497958/how-to-use-vim-registers

### Insert mode

with control key can be use for run commands from normal mode. Example `<CTRL-w>`

`<ctrl + o >` - mode will be (insert) next command will be run into normal mode, 
after that will be return again into Insert mode

`<ctrl + r> "` - will paste last saved register.

`<ctrl + r> 0` - will paste last saved copy register

`<ctrl + r> =` - Now we can run commands from command mode.

### Commands for bind keys

`nmap` - normal mode 

`map` - global mode

`imap` - insert mode

`vmap` - visual mode

Example: `nmap x dd` and `nmap z x`. If you press x will run command dd. If you run
z will x, but x will run command dd.

To avoid this should be use:

`nnoremap` - normal mode

`noremap` - global mode

`inoremap` - insert mode

`visual mode` - visual mode

Now if you press `z` only command for x will be run.

### Vim surround plugin

#### Normal mode: 

`ds(` - will delete () for out cursor position. Example `(two)` -> `ds(` will return
`two`.

`cs({` - will replace () with { }.

`ysiw` - will wrap word with ".

`ysaw{` - will wrap word with { and will space word.

`ySiw<em>` - will wrapped word with `<em>` tag and text will go to new line.

`yss'` - will wrap all line content with '.

`ySS'` - will wrap all line content with ' and will indent line content to new line.

#### Visual mode: 

`S[` - will wrap text with "[".

#### Commands

Change tabs with spaces / spaces wit intervals

```bash
# Create new piple line
:args file1 file2 file3

# Execute retab command for each file
:argdo retab


# Save all files
:wall
```
