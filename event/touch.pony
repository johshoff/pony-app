class TouchEvent
  """
  Sequence identifies a sequence of touch events.
  Sequence is the sequence number. The same number is shared by all events
  in a sequence. A sequence begins with a single TypeBegin, is followed by
  zero or more TypeMoves, and ends with a single TypeEnd. A Sequence
  distinguishes concurrent sequences but its value is subsequently reused.
  """
  let x: F32
  let y: F32
  let seq: U32
  let etype: TouchType

  new create(x': F32, y': F32, seq': U32, etype': TouchType) =>
    x = x'
    y = y'
    seq = seq'
    etype = etype'

primitive TouchBegin
  """
  TouchBegin is a user first touching the device.
  On Android, this is a AMOTION_EVENT_ACTION_DOWN.
  On iOS, this is a call to touchesBegan.
  """

primitive TouchMove
  """
  TouchMove is a user dragging across the device.
  A TouchMove is delivered between a TouchBegin and TouchEnd.
  On Android, this is a AMOTION_EVENT_ACTION_MOVE.
  On iOS, this is a call to touchesMoved.
  """

primitive TouchEnd
  """
  TouchEnd is a user no longer touching the device.
  On Android, this is a AMOTION_EVENT_ACTION_UP.
  On iOS, this is a call to touchesEnded.
  """

type TouchType is (TouchBegin | TouchMove | TouchEnd)
  """The type of Touch Event"""
