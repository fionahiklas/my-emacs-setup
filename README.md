# My Emacs Setup

## Overview 

__NOTE:__ Originally I was creating a `.emacs.d` directory to hold all of the code for 
          the various modes.  I've changed the setup to use MELPA instead so the 
			  only useful code is in the `.emacs` file.  I'm leaving the notes on modes
			  for now as reference


## Emacs mini howto

### Reload .emacs after changes

You can use `M-x load-file` and enter `~/.emacs` to reload the file
as mentioned in this [post][emacs-reload-post]

### Add file variables

Use `M-x add-file-local-variable-prop-line` as per the 
[documentation][emacs-file-variables]



## Modes

### Jenkinsfile mode

[Jenkins file mode](https://github.com/john2x/jenkinsfile-mode)

This depends on

* [groovy-mode](https://github.com/Groovy-Emacs-Modes/groovy-emacs-modes)
* [dash library](https://github.com/magnars/dash.el)


### Docker-file-mode

[Spotify Dockerfile mode](https://github.com/spotify/dockerfile-mode)

This depends on 

* [emacs-s](https://guix.gnu.org/packages/emacs-s-1.12.0/)


### Markdown-mode

[Jason Blevins Markdown Mode](https://github.com/jrblevin/markdown-mode)


### Autosave mode 

[Tom Willemse Git Auto Commit mode](https://github.com/ryuslash/git-auto-commit-mode)

This is incredibly useful for the notes that I take for config and projects 
that I'm working on.  I essentially record notes in Markdown files and find it 
handy to store/back these up to private git repos.  Previously I've used 
Google Drive or other cloud storage but they can be problematic and not always 
available across platforms - SSH and git (and Emacs) pretty much works 
everywhere :)

I have the following `.dir-locals.el` file in every note-taking directory/repo
which ensures that any changes get committed automatically when I hit save.

```
;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((nil
  (mode . git-auto-commit))
 (markdown-mode
  (gac-automatically-push-p . 1)))
```


### Lua Mode

Mode for [editing lua code](https://github.com/immerrr/lua-mode)


### BATS Mode

For [BATS][bats-repo] test scripts: 
[github repo](https://github.com/dougm/bats-mode)

[bats-repo](https://github.com/bats-core/bats-core)




[emacs-reload-post]: https://stackoverflow.com/questions/2580650/how-can-i-reload-emacs-after-changing-it
[emacs-file-variables]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Specifying-File-Variables.html

