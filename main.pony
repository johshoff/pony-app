actor Main
  new create(env: Env) =>
    let app = App(env, "Demo", 800, 480)
    app.start()
