// Going to Tie all actions to an Actor
trait Action
  fun getActor(): Actor
  fun getTarget(): Actor
  fun ref setActor(self: Actor)
  fun ref setTarget(target: Actor)
  fun act(delta: F32): Bool
  fun restart()
  fun reset()

// class BaseAction is Action
//   """The actor this action is attached to, or nil if it is not attached."""
//   let current: Actor
//   let target: Actor

//   new create(current': Actor, target': Actor) =>
//     current = current'
//     target = target'

//   fun getActor(): Actor => current
//   fun getTarget(): Actor => target

//   fun ref setActor(current': Actor) => current = current'
//   fun ref setTarget(target': Actor) => target = target'

//   fun act(delta: F32): Bool => true
//   fun restart() =>
//     """
//     """
//   fun reset() =>
//     """
//     """

// class AddAction is Action
//   let base: BaseAction = BaseAction()
