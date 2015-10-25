class Scene
  let children: Array[Actor] = Array[Actor](0)

  fun ref addActor(a: Actor) =>
    children.push(a)

  fun ref removeActor(a: Actor) ? =>
    children.delete(children.find(a))
