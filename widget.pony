use "collections"

trait TWidget
  fun ref addWidget(w: TWidget, delay: U32 = 0)
  fun ref removeWidget(w: TWidget, delay: U32 = 0) ?

class Widget is TWidget
  let name: String
  let _children: Array[TWidget]

  new create(name': String) =>
    name = name'
    _children = Array[TWidget]

  fun ref addWidget(w: TWidget, delay: U32 = 0) =>
    _children.push(w)

  fun ref removeWidget(w: TWidget, delay: U32 = 0) ? =>
    _children.delete(_children.find(w)?)?
