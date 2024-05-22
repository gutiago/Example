
import SwiftSyntaxMacros
import SwiftCompilerPlugin

@main
struct MacrosPlugin: CompilerPlugin {
  let providingMacros: [Macro.Type] = [
    AddAsyncMacro.self,
  ]
}
