## NimQml aims to provide binding to the QML for the Nim programming language

template debugMsg(message: string) =
  when defined(debug):
    echo "NimQml: ", message

template debugMsg(typeName: string, procName: string) =
  when defined(debug):
    var message = typeName
    message &= ": "
    message &= procName
    debugMsg(message)

include private.nimqmltypes
var qobjectRegistry = initTable[ptr QObjectObj, bool]()
include private/qvariant.nim
include private/qqmlapplicationengine.nim
include private/qqmlcontext.nim
include private/qapplication.nim
include private/qguiapplication.nim
include private/qobject.nim
include private/qquickview.nim
include private/qmodelindex.nim
include private/qhashintbytearray.nim
include private/qabstractlistmodel.nim
include private.nimqmlmacros
