class MouseEvent
  """
  Button is the mouse button being pressed or released. Its value may be
  zero, for a mouse move or drag without any button change.
  Modifiers is a bitmask representing a set of modifier keys:
  key.ModShift, key.ModAlt, etc.
  Direction is the direction of the mouse event: DirPress, DirRelease,
  or DirNone (for mouse moves or drags).
  """
  let x: F32
  let y: F32
  let button: Button
  let direction: Direction

  new create(x': F32, y': F32, button': Button, direction': Direction) =>
    x = x'
    y = y'
    button = button'
    direction = direction'

primitive ButtonNone
primitive ButtonLeft
primitive ButtonMiddle
primitive ButtonRight
primitive ButtonWheelUp
primitive ButtonWheelDown
type Button is (
  ButtonNone
  | ButtonLeft
  | ButtonMiddle
  | ButtonRight
  | ButtonWheelUp
  | ButtonWheelDown
  )

primitive DirNone
primitive DirPress
primitive DirRelease
type Direction is (DirNone | DirPress | DirRelease)
  """Direction is the direction of the mouse event."""
