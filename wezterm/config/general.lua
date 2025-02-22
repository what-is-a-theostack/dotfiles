UnDo
   scrollback_lines = 20000,
g@?L
g@?H
g@?K
   -- behaviours
&   automatically_reload_config = true,
^   exit_behavior = 'CloseOnCleanExit', -- if the shell program exited with a successful status
'   exit_behavior_messaging = 'Verbose',
!   status_update_interval = 1000,
   scrollback_lines = 20000,
   hyperlink_rules = {
(      -- Matches: a URL in parens: (URL)
      {
'         regex = '\\((\\w+://\\S+)\\)',
         format = '$1',
         highlight = 1,
      },
*      -- Matches: a URL in brackets: [URL]
      {
'         regex = '\\[(\\w+://\\S+)\\]',
         format = '$1',
         highlight = 1,
      },
.      -- Matches: a URL in curly braces: {URL}
      {
'         regex = '\\{(\\w+://\\S+)\\}',
         format = '$1',
         highlight = 1,
      },
0      -- Matches: a URL in angle brackets: <URL>
      {
#         regex = '<(\\w+://\\S+)>',
         format = '$1',
         highlight = 1,
      },
1      -- Then handle URLs not wrapped in brackets
      {
1         regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
         format = '$0',
      },
      -- implicit mailto link
      {
3         regex = '\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b',
         format = 'mailto:$0',
      },
   },5
