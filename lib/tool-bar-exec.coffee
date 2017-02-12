module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-exec')
    require('atom-package-deps').install('ask-stack')
    require('atom-package-deps').install('export-html')
    require('atom-package-deps').install('project-manager')
    require('atom-package-deps').install('git-projects')
    require('atom-package-deps').install('platformio-ide-terminal')
    require('atom-package-deps').install('git-plus')
    require('atom-package-deps').install('git-control')
    require('atom-package-deps').install('merge-conflicts')
    require('atom-package-deps').install('git-time-machine')
    require('atom-package-deps').install('git-history')
    require('atom-package-deps').install('blame')
    require('atom-package-deps').install('git-diff-details')
    require('atom-package-deps').install('split-diff')
    require('atom-package-deps').install('navigate')
    require('atom-package-deps').install('atom-keyboard-macros')
    require('atom-package-deps').install('todo-show')
  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'

    @toolBar.addButton
      callback: 'settings-view:open'
      tooltip: 'Open Settings View'
      icon: 'gears'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      tooltip: 'Reload Window'
      callback: 'window:reload'
      icon: 'android-sync'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'export-html:export'
      tooltip: 'Print'
      icon: 'android-print'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'ask-stack:ask-question'
      tooltip: 'Ask Stack'
      icon: 'stack-overflow'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      tooltip: 'List projects'
      callback: 'project-manager:list-projects'
      icon: 'file-submodule'

    @toolBar.addButton
      callback: 'git-projects:toggle'
      tooltip: 'Git Projects'
      icon: 'github-square'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'command-palette:toggle'
      tooltip: 'Toggle Command Palette'
      icon: 'atom-original'
      iconset: 'devicon'

    @toolBar.addButton
      tooltip: 'terminal'
      callback: 'platformio-ide-terminal:toggle'
      icon: 'terminal'

    @toolBar.addButton
      tooltip: 'git-plus'
      callback: 'git-plus:menu'
      icon: 'git-plain'
      iconset: 'devicon'

    @toolBar.addSpacer()

    @toolBar.addButton
      tooltip: 'Git Control'
      callback: 'git-control:toggle'
      icon: 'sourcetree-plain'
      iconset: 'devicon'

#    @toolBar.addButton
#      tooltip: 'Atomatigit'
#      callback: 'atomatigit:toggle'
#      icon: 'terminal'
#      iconset: 'fa'

    @toolBar.addButton
      tooltip: "Merge Conflicts"
      callback: "merge-conflicts:detect"
      icon: "pull-request"
      iconset: "ion"

    @toolBar.addButton
      tooltip: 'git-time-machine'
      callback: 'git-time-machine:toggle'
      icon: 'clock'
      iconset: 'ion'

    @toolBar.addButton
      tooltip: 'git-history'
      callback: 'git-history:show-file-history'
      icon: 'git-commit'

    @toolBar.addButton
      tooltip: 'git-blame'
      callback: 'blame:toggle'
      icon: 'person-stalker'
      iconset: 'ion'

    @toolBar.addButton
      callback: 'git-diff-details:toggle-git-diff-details'
      tooltip: 'Git DIFF Details'
      icon: 'fork-repo'
      iconset: 'ion'

    @toolBar.addButton
      callback: 'split-diff:toggle'
      tooltip: 'Split Diff'
      icon: 'network'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'navigate:forward'
      tooltip: 'Follow CALL'
      icon: 'level-down'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'navigate:back'
      tooltip: 'RETURN from call'
      icon: 'level-up'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'core:move-to-top'
      tooltip: 'TOP'
      icon: 'arrow-up'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'go-to-line:toggle'
      tooltip: 'Go to line'
      icon: 'arrow-down'
      iconset: 'fa'

    @toolBar.addButton
      callback: ''
      tooltip: 'Check Compile Errors'
      icon: 'exclamation-triangle'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'editor:auto-indent'
      tooltip: 'Auto Indent Selection'
      icon: 'indent'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'editor:upper-case'
      tooltip: 'Up CASE'
      icon: 'arrow-circle-o-up'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'editor:lower-case'
      tooltip: 'Down CASE'
      icon: 'arrow-circle-o-down'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'atom-keyboard-macros:start_kbd_macro'
      tooltip: 'Record Macro'
      icon: 'video-camera'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'atom-keyboard-macros:end_kbd_macro'
      tooltip: 'Stop Recording'
      icon: 'stop-circle'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'atom-keyboard-macros:call_last_kbd_macro'
      tooltip: 'Run Macro Once'
      icon: 'play-circle'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'atom-keyboard-macros:repeat_last_kbd_macro'
      tooltip: 'Run Macro # of Times'
      icon: 'step-forward'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'atom-keyboard-macros:execute_macro_to_bottom'
      tooltip: 'Repeat Macro to Bottom'
      icon: 'fast-forward'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'bookmarks:toggle-bookmark'
      tooltip: 'Toggle bookmark'
      icon: 'pinpoint'
      iconset: 'ion'

    @toolBar.addButton
      callback: 'bookmarks:view-all'
      tooltip: 'View bookmarks'
      icon: 'search-minus'
      iconset: 'fa'

    @toolBar.addButton
      icon: 'search-plus'
      callback: 'project-find:toggle'
      tooltip: 'search in directory'
      iconset: 'fa'

    @toolBar.addButton
      icon: 'search'
      callback: 'find-and-replace:toggle'
      tooltip: 'Find in record'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      callback: 'todo-show:find-in-workspace'
      tooltip: 'TODO Show (Workspace)'
      icon: 'check-square-o'
      iconset: 'fa'

    @toolBar.addButton
      callback: 'todo-show:find-in-open-files'
      tooltip: 'TODO Show (Open Files)'
      icon: 'list-ul'
      iconset: 'fa'

# DEV mode only features
    if atom.inDevMode()
      @toolBar.addSpacer()

      @toolBar.addButton
        icon: 'terminal'
        callback: ->
          require('remote').getCurrentWindow().toggleDevTools()
        tooltip: 'Toggle Developer Tools'
