import Lake
open Lake DSL

package greeting where
  -- add package configuration options here

lean_lib Greeting where
  -- add library configuration options here

@[default_target]  -- this makes `lean_exe UserGreeting` the default target of a `lake build` command
lean_exe UserGreeting where
  root := `Main
  -- Enables the use of the Lean interpreter by the executable (e.g.,
  -- `runFrontend`) at the expense of increased binary size on Linux.
  -- Remove this line if you do not need such functionality.
  supportInterpreter := true
