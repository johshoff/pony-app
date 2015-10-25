class PaintEvent
  """
  Event indicates that the app is ready to paint the next frame of the GUI. A
  frame is completed by calling the App's EndPaint method.
  """
  let generation: U32
  new create(gen: U32) =>
    generation = gen
