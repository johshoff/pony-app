use "files"

primitive Asset
  """
  Provides access to application-bundled assets.

  On Android, assets are accessed via android.content.res.AssetManager.
  These files are stored in the assets/ directory of the app. Any raw asset
  can be accessed by its direct relative name. For example assets/img.png
  can be opened with Open("img.png").

  On iOS an asset is a resource stored in the application bundle.
  Resources can be loaded using the same relative paths.

  For consistency when debugging on a desktop, assets are read from a
  directory named assets under the current working directory.
  """
  fun open(name: String) ? =>
    let caps = recover val FileCaps.set(FileRead).set(FileStat) end
    if Platform.windows() or Platform.linux() or Platform.osx() then
      // OpenFile(FilePath(env.root, Path.join("assets", name), caps)) as File
      name
    else
      error
    end
