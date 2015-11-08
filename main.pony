// primitive Fib
  // fun apply(0): U64 => 0


class Test
  let _env: Env
  new create(env: Env) =>
    env.out.print("EFSF")
    _env = env
    beta()

  fun beta() =>
    _env.out.print("test")

actor Main
  new create(env: Env) =>
    var sc : Scene = Scene("menu")
    App.start(env, sc)
        // env.out.print(GL.point().string())
    // env.out.print(GL(Lines).string())
    // env.out.print(Linear.apply_duration(10, 20, 11).string())
    // env.out.print(Linear(32).string())
    // let vet = Test(env)
    // vet.beta()
    // @glViewport[None]()

// Pt is a length.
//
// The unit Pt is a typographical point, 1/72 of an inch (0.3527 mm).
//
// It can be be converted to a length in current device pixels by
// multiplying with PixelsPerPt after app initialization is complete.
// type Pt float32

// // Px converts the length to current device pixels.
// func (p Pt) Px(pixelsPerPt float32) float32 { return float32(p) * pixelsPerPt }

// // String returns a string representation of p like "3.2pt".
// func (p Pt) String() string { return fmt.Sprintf("%.2fpt", p) }

// // Point is a point in a two-dimensional plane.
// type Point struct {
//   X, Y Pt
// }

// // String returns a string representation of p like "(1.2,3.4)".
// func (p Point) String() string { return fmt.Sprintf("(%.2f,%.2f)", p.X, p.Y) }

// // A Rectangle is region of points.
// // The top-left point is Min, and the bottom-right point is Max.
// type Rectangle struct {
//   Min, Max Point
// }

// // String returns a string representation of r like "(3,4)-(6,5)".
// func (r Rectangle) String() string { return r.Min.String() + "-" + r.Max.String() }
