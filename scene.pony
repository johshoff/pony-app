use "collections"

class Stage
  let scenes: Map[String, Scene]

  new create() =>
    scenes = Map[String, Scene](30)

  fun addScene(name: String, scene: Scene) =>
    """
    """
    // scenes(name) = scene

  fun setScene(name: String, delay: U32 = 0) =>
    """
    """


class Scene
  let children: Array[Actor] = Array[Actor](0)
  let name: String

  new create(name': String) =>
    name = name'

  fun ref addActor(a: Actor, delay: U32 = 0) =>
    children.push(a)

  fun ref removeActor(a: Actor, delay: U32 = 0) ? =>
    children.delete(children.find(a))

  fun ref setBackgorund() =>
    """"""

  fun ref removeBackground() =>
    """"""
