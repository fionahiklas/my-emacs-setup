## Overview 

I'm collecting various Emacs modes and config and thought having a central 
place for all this might make sense.

See the `.emacs` file and `.emacs.d` directory for the setup and Lisp code
for each mode I've added.

Details of there the source is and any interesting config are given below.

Yes, I probably should be using MELPA but I haven't got around to doing that 
yet and kind of like to muck around with lisp code anyway :D


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

