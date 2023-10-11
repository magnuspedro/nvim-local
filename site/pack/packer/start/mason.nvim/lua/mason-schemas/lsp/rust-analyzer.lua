-- THIS FILE IS GENERATED. DO NOT EDIT MANUALLY.
-- stylua: ignore start
return {properties = {["$generated-end"] = vim.empty_dict(),["$generated-start"] = vim.empty_dict(),["rust-analyzer.assist.emitMustUse"] = {default = false,markdownDescription = "Whether to insert #[must_use] when generating `as_` methods\nfor enum variants.",type = "boolean"},["rust-analyzer.assist.expressionFillDefault"] = {default = "todo",enum = { "todo", "default" },enumDescriptions = { "Fill missing expressions with the `todo` macro", "Fill missing expressions with reasonable defaults, `new` or `default` constructors." },markdownDescription = "Placeholder expression to use for missing expressions in assists.",type = "string"},["rust-analyzer.cachePriming.enable"] = {default = true,markdownDescription = "Warm up caches on project load.",type = "boolean"},["rust-analyzer.cachePriming.numThreads"] = {default = 0,markdownDescription = "How many worker threads to handle priming caches. The default `0` means to pick automatically.",maximum = 255,minimum = 0,type = "number"},["rust-analyzer.cargo.autoreload"] = {default = true,markdownDescription = "Automatically refresh project info via `cargo metadata` on\n`Cargo.toml` or `.cargo/config.toml` changes.",type = "boolean"},["rust-analyzer.cargo.buildScripts.enable"] = {default = true,markdownDescription = "Run build scripts (`build.rs`) for more precise code analysis.",type = "boolean"},["rust-analyzer.cargo.buildScripts.invocationLocation"] = {default = "workspace",enum = { "workspace", "root" },enumDescriptions = { "The command will be executed in the corresponding workspace root.", "The command will be executed in the project root." },markdownDescription = "Specifies the working directory for running build scripts.\n- \"workspace\": run build scripts for a workspace in the workspace's root directory.\n    This is incompatible with `#rust-analyzer.cargo.buildScripts.invocationStrategy#` set to `once`.\n- \"root\": run build scripts in the project's root directory.\nThis config only has an effect when `#rust-analyzer.cargo.buildScripts.overrideCommand#`\nis set.",type = "string"},["rust-analyzer.cargo.buildScripts.invocationStrategy"] = {default = "per_workspace",enum = { "per_workspace", "once" },enumDescriptions = { "The command will be executed for each workspace.", "The command will be executed once." },markdownDescription = "Specifies the invocation strategy to use when running the build scripts command.\nIf `per_workspace` is set, the command will be executed for each workspace.\nIf `once` is set, the command will be executed once.\nThis config only has an effect when `#rust-analyzer.cargo.buildScripts.overrideCommand#`\nis set.",type = "string"},["rust-analyzer.cargo.buildScripts.overrideCommand"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "Override the command rust-analyzer uses to run build scripts and\nbuild procedural macros. The command is required to output json\nand should therefore include `--message-format=json` or a similar\noption.\n\nBy default, a cargo invocation will be constructed for the configured\ntargets and features, with the following base command line:\n\n```bash\ncargo check --quiet --workspace --message-format=json --all-targets\n```\n.",type = { "null", "array" }},["rust-analyzer.cargo.buildScripts.useRustcWrapper"] = {default = true,markdownDescription = "Use `RUSTC_WRAPPER=rust-analyzer` when running build scripts to\navoid checking unnecessary things.",type = "boolean"},["rust-analyzer.cargo.extraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Extra arguments that are passed to every cargo invocation.",type = "array"},["rust-analyzer.cargo.extraEnv"] = {default = vim.empty_dict(),markdownDescription = "Extra environment variables that will be set when running cargo, rustc\nor other commands within the workspace. Useful for setting RUSTFLAGS.",type = "object"},["rust-analyzer.cargo.features"] = {anyOf = { {enum = { "all" },enumDescriptions = { "Pass `--all-features` to cargo" },type = "string"}, {items = {type = "string"},type = "array"} },default = {},markdownDescription = 'List of features to activate.\n\nSet this to `"all"` to pass `--all-features` to cargo.'},["rust-analyzer.cargo.noDefaultFeatures"] = {default = false,markdownDescription = "Whether to pass `--no-default-features` to cargo.",type = "boolean"},["rust-analyzer.cargo.sysroot"] = {default = "discover",markdownDescription = 'Relative path to the sysroot, or "discover" to try to automatically find it via\n"rustc --print sysroot".\n\nUnsetting this disables sysroot loading.\n\nThis option does not take effect until rust-analyzer is restarted.',type = { "null", "string" }},["rust-analyzer.cargo.sysrootSrc"] = {default = vim.NIL,markdownDescription = "Relative path to the sysroot library sources. If left unset, this will default to\n`{cargo.sysroot}/lib/rustlib/src/rust/library`.\n\nThis option does not take effect until rust-analyzer is restarted.",type = { "null", "string" }},["rust-analyzer.cargo.target"] = {default = vim.NIL,markdownDescription = "Compilation target override (target triple).",type = { "null", "string" }},["rust-analyzer.cargo.unsetTest"] = {default = { "core" },items = {type = "string"},markdownDescription = "Unsets `#[cfg(test)]` for the specified crates.",type = "array"},["rust-analyzer.cargoRunner"] = {default = vim.NIL,description = "Custom cargo runner extension ID.",type = { "null", "string" }},["rust-analyzer.check.allTargets"] = {default = true,markdownDescription = "Check all targets and tests (`--all-targets`).",type = "boolean"},["rust-analyzer.check.command"] = {default = "check",markdownDescription = "Cargo command to use for `cargo check`.",type = "string"},["rust-analyzer.check.extraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Extra arguments for `cargo check`.",type = "array"},["rust-analyzer.check.extraEnv"] = {default = vim.empty_dict(),markdownDescription = "Extra environment variables that will be set when running `cargo check`.\nExtends `#rust-analyzer.cargo.extraEnv#`.",type = "object"},["rust-analyzer.check.features"] = {anyOf = { {enum = { "all" },enumDescriptions = { "Pass `--all-features` to cargo" },type = "string"}, {items = {type = "string"},type = "array"}, {type = "null"} },default = vim.NIL,markdownDescription = 'List of features to activate. Defaults to\n`#rust-analyzer.cargo.features#`.\n\nSet to `"all"` to pass `--all-features` to Cargo.'},["rust-analyzer.check.invocationLocation"] = {default = "workspace",enum = { "workspace", "root" },enumDescriptions = { "The command will be executed in the corresponding workspace root.", "The command will be executed in the project root." },markdownDescription = "Specifies the working directory for running checks.\n- \"workspace\": run checks for workspaces in the corresponding workspaces' root directories.\n    This falls back to \"root\" if `#rust-analyzer.cargo.checkOnSave.invocationStrategy#` is set to `once`.\n- \"root\": run checks in the project's root directory.\nThis config only has an effect when `#rust-analyzer.cargo.buildScripts.overrideCommand#`\nis set.",type = "string"},["rust-analyzer.check.invocationStrategy"] = {default = "per_workspace",enum = { "per_workspace", "once" },enumDescriptions = { "The command will be executed for each workspace.", "The command will be executed once." },markdownDescription = "Specifies the invocation strategy to use when running the checkOnSave command.\nIf `per_workspace` is set, the command will be executed for each workspace.\nIf `once` is set, the command will be executed once.\nThis config only has an effect when `#rust-analyzer.cargo.buildScripts.overrideCommand#`\nis set.",type = "string"},["rust-analyzer.check.noDefaultFeatures"] = {default = vim.NIL,markdownDescription = "Whether to pass `--no-default-features` to Cargo. Defaults to\n`#rust-analyzer.cargo.noDefaultFeatures#`.",type = { "null", "boolean" }},["rust-analyzer.check.overrideCommand"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "Override the command rust-analyzer uses instead of `cargo check` for\ndiagnostics on save. The command is required to output json and\nshould therefore include `--message-format=json` or a similar option\n(if your client supports the `colorDiagnosticOutput` experimental\ncapability, you can use `--message-format=json-diagnostic-rendered-ansi`).\n\nIf you're changing this because you're using some tool wrapping\nCargo, you might also want to change\n`#rust-analyzer.cargo.buildScripts.overrideCommand#`.\n\nIf there are multiple linked projects, this command is invoked for\neach of them, with the working directory being the project root\n(i.e., the folder containing the `Cargo.toml`).\n\nAn example command would be:\n\n```bash\ncargo check --workspace --message-format=json --all-targets\n```\n.",type = { "null", "array" }},["rust-analyzer.check.targets"] = {anyOf = { {type = "null"}, {type = "string"}, {items = {type = "string"},type = "array"} },default = vim.NIL,markdownDescription = 'Check for specific targets. Defaults to `#rust-analyzer.cargo.target#` if empty.\n\nCan be a single target, e.g. `"x86_64-unknown-linux-gnu"` or a list of targets, e.g.\n`["aarch64-apple-darwin", "x86_64-apple-darwin"]`.\n\nAliased as `"checkOnSave.targets"`.'},["rust-analyzer.checkOnSave"] = {default = true,markdownDescription = "Run the check command for diagnostics on save.",type = "boolean"},["rust-analyzer.completion.autoimport.enable"] = {default = true,markdownDescription = "Toggles the additional completions that automatically add imports when completed.\nNote that your client must specify the `additionalTextEdits` LSP client capability to truly have this feature enabled.",type = "boolean"},["rust-analyzer.completion.autoself.enable"] = {default = true,markdownDescription = "Toggles the additional completions that automatically show method calls and field accesses\nwith `self` prefixed to them when inside a method.",type = "boolean"},["rust-analyzer.completion.callable.snippets"] = {default = "fill_arguments",enum = { "fill_arguments", "add_parentheses", "none" },enumDescriptions = { "Add call parentheses and pre-fill arguments.", "Add call parentheses.", "Do no snippet completions for callables." },markdownDescription = "Whether to add parenthesis and argument snippets when completing function.",type = "string"},["rust-analyzer.completion.limit"] = {default = vim.NIL,markdownDescription = "Maximum number of completions to return. If `None`, the limit is infinite.",minimum = 0,type = { "null", "integer" }},["rust-analyzer.completion.postfix.enable"] = {default = true,markdownDescription = "Whether to show postfix snippets like `dbg`, `if`, `not`, etc.",type = "boolean"},["rust-analyzer.completion.privateEditable.enable"] = {default = false,markdownDescription = "Enables completions of private items and fields that are defined in the current workspace even if they are not visible at the current position.",type = "boolean"},["rust-analyzer.completion.snippets.custom"] = {default = {["Arc::new"] = {body = "Arc::new(${receiver})",description = "Put the expression into an `Arc`",postfix = "arc",requires = "std::sync::Arc",scope = "expr"},["Box::pin"] = {body = "Box::pin(${receiver})",description = "Put the expression into a pinned `Box`",postfix = "pinbox",requires = "std::boxed::Box",scope = "expr"},Err = {body = "Err(${receiver})",description = "Wrap the expression in a `Result::Err`",postfix = "err",scope = "expr"},Ok = {body = "Ok(${receiver})",description = "Wrap the expression in a `Result::Ok`",postfix = "ok",scope = "expr"},["Rc::new"] = {body = "Rc::new(${receiver})",description = "Put the expression into an `Rc`",postfix = "rc",requires = "std::rc::Rc",scope = "expr"},Some = {body = "Some(${receiver})",description = "Wrap the expression in an `Option::Some`",postfix = "some",scope = "expr"}},markdownDescription = "Custom completion snippets.",type = "object"},["rust-analyzer.debug.engine"] = {default = "auto",description = "Preferred debug engine.",enum = { "auto", "vadimcn.vscode-lldb", "ms-vscode.cpptools" },markdownEnumDescriptions = { "First try to use [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb), if it's not installed try to use [MS C++ tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools).", "Use [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)", "Use [MS C++ tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)" },type = "string"},["rust-analyzer.debug.engineSettings"] = {default = vim.empty_dict(),markdownDescription = 'Optional settings passed to the debug engine. Example: `{ "lldb": { "terminal":"external"} }`',type = "object"},["rust-analyzer.debug.openDebugPane"] = {default = false,markdownDescription = "Whether to open up the `Debug Panel` on debugging start.",type = "boolean"},["rust-analyzer.debug.sourceFileMap"] = {const = "auto",default = {["/rustc/<id>"] = "${env:USERPROFILE}/.rustup/toolchains/<toolchain-id>/lib/rustlib/src/rust"},description = "Optional source file mappings passed to the debug engine.",type = { "object", "string" }},["rust-analyzer.diagnostics.disabled"] = {default = {},items = {type = "string"},markdownDescription = "List of rust-analyzer diagnostics to disable.",type = "array",uniqueItems = true},["rust-analyzer.diagnostics.enable"] = {default = true,markdownDescription = "Whether to show native rust-analyzer diagnostics.",type = "boolean"},["rust-analyzer.diagnostics.experimental.enable"] = {default = false,markdownDescription = "Whether to show experimental rust-analyzer diagnostics that might\nhave more false positives than usual.",type = "boolean"},["rust-analyzer.diagnostics.previewRustcOutput"] = {default = false,markdownDescription = "Whether to show the main part of the rendered rustc output of a diagnostic message.",type = "boolean"},["rust-analyzer.diagnostics.remapPrefix"] = {default = vim.empty_dict(),markdownDescription = "Map of prefixes to be substituted when parsing diagnostic file paths.\nThis should be the reverse mapping of what is passed to `rustc` as `--remap-path-prefix`.",type = "object"},["rust-analyzer.diagnostics.useRustcErrorCode"] = {default = false,markdownDescription = "Whether to use the rustc error code.",type = "boolean"},["rust-analyzer.diagnostics.warningsAsHint"] = {default = {},items = {type = "string"},markdownDescription = "List of warnings that should be displayed with hint severity.\n\nThe warnings will be indicated by faded text or three dots in code\nand will not show up in the `Problems Panel`.",type = "array"},["rust-analyzer.diagnostics.warningsAsInfo"] = {default = {},items = {type = "string"},markdownDescription = "List of warnings that should be displayed with info severity.\n\nThe warnings will be indicated by a blue squiggly underline in code\nand a blue icon in the `Problems Panel`.",type = "array"},["rust-analyzer.discoverProjectCommand"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "Sets the command that rust-analyzer uses to generate `rust-project.json` files. This command should only be used\n if a build system like Buck or Bazel is also in use. The command must accept files as arguments and return \n a rust-project.json over stdout.",type = { "null", "array" }},["rust-analyzer.files.excludeDirs"] = {default = {},items = {type = "string"},markdownDescription = "These directories will be ignored by rust-analyzer. They are\nrelative to the workspace root, and globs are not supported. You may\nalso need to add the folders to Code's `files.watcherExclude`.",type = "array"},["rust-analyzer.files.watcher"] = {default = "client",enum = { "client", "server" },enumDescriptions = { "Use the client (editor) to watch files for changes", "Use server-side file watching" },markdownDescription = "Controls file watching implementation.",type = "string"},["rust-analyzer.highlightRelated.breakPoints.enable"] = {default = true,markdownDescription = "Enables highlighting of related references while the cursor is on `break`, `loop`, `while`, or `for` keywords.",type = "boolean"},["rust-analyzer.highlightRelated.exitPoints.enable"] = {default = true,markdownDescription = "Enables highlighting of all exit points while the cursor is on any `return`, `?`, `fn`, or return type arrow (`->`).",type = "boolean"},["rust-analyzer.highlightRelated.references.enable"] = {default = true,markdownDescription = "Enables highlighting of related references while the cursor is on any identifier.",type = "boolean"},["rust-analyzer.highlightRelated.yieldPoints.enable"] = {default = true,markdownDescription = "Enables highlighting of all break points for a loop or block context while the cursor is on any `async` or `await` keywords.",type = "boolean"},["rust-analyzer.hover.actions.debug.enable"] = {default = true,markdownDescription = "Whether to show `Debug` action. Only applies when\n`#rust-analyzer.hover.actions.enable#` is set.",type = "boolean"},["rust-analyzer.hover.actions.enable"] = {default = true,markdownDescription = "Whether to show HoverActions in Rust files.",type = "boolean"},["rust-analyzer.hover.actions.gotoTypeDef.enable"] = {default = true,markdownDescription = "Whether to show `Go to Type Definition` action. Only applies when\n`#rust-analyzer.hover.actions.enable#` is set.",type = "boolean"},["rust-analyzer.hover.actions.implementations.enable"] = {default = true,markdownDescription = "Whether to show `Implementations` action. Only applies when\n`#rust-analyzer.hover.actions.enable#` is set.",type = "boolean"},["rust-analyzer.hover.actions.references.enable"] = {default = false,markdownDescription = "Whether to show `References` action. Only applies when\n`#rust-analyzer.hover.actions.enable#` is set.",type = "boolean"},["rust-analyzer.hover.actions.run.enable"] = {default = true,markdownDescription = "Whether to show `Run` action. Only applies when\n`#rust-analyzer.hover.actions.enable#` is set.",type = "boolean"},["rust-analyzer.hover.documentation.enable"] = {default = true,markdownDescription = "Whether to show documentation on hover.",type = "boolean"},["rust-analyzer.hover.documentation.keywords.enable"] = {default = true,markdownDescription = "Whether to show keyword hover popups. Only applies when\n`#rust-analyzer.hover.documentation.enable#` is set.",type = "boolean"},["rust-analyzer.hover.links.enable"] = {default = true,markdownDescription = "Use markdown syntax for links in hover.",type = "boolean"},["rust-analyzer.imports.granularity.enforce"] = {default = false,markdownDescription = "Whether to enforce the import granularity setting for all files. If set to false rust-analyzer will try to keep import styles consistent per file.",type = "boolean"},["rust-analyzer.imports.granularity.group"] = {default = "crate",enum = { "preserve", "crate", "module", "item" },enumDescriptions = { "Do not change the granularity of any imports and preserve the original structure written by the developer.", "Merge imports from the same crate into a single use statement. Conversely, imports from different crates are split into separate statements.", "Merge imports from the same module into a single use statement. Conversely, imports from different modules are split into separate statements.", "Flatten imports so that each has its own use statement." },markdownDescription = "How imports should be grouped into use statements.",type = "string"},["rust-analyzer.imports.group.enable"] = {default = true,markdownDescription = "Group inserted imports by the [following order](https://rust-analyzer.github.io/manual.html#auto-import). Groups are separated by newlines.",type = "boolean"},["rust-analyzer.imports.merge.glob"] = {default = true,markdownDescription = "Whether to allow import insertion to merge new imports into single path glob imports like `use std::fmt::*;`.",type = "boolean"},["rust-analyzer.imports.prefer.no.std"] = {default = false,markdownDescription = "Prefer to unconditionally use imports of the core and alloc crate, over the std crate.",type = "boolean"},["rust-analyzer.imports.prefix"] = {default = "plain",enum = { "plain", "self", "crate" },enumDescriptions = { "Insert import paths relative to the current module, using up to one `super` prefix if the parent module contains the requested item.", "Insert import paths relative to the current module, using up to one `super` prefix if the parent module contains the requested item. Prefixes `self` in front of the path if it starts with a module.", "Force import paths to be absolute by always starting them with `crate` or the extern crate name they come from." },markdownDescription = "The path structure for newly inserted paths to use.",type = "string"},["rust-analyzer.inlayHints.bindingModeHints.enable"] = {default = false,markdownDescription = "Whether to show inlay type hints for binding modes.",type = "boolean"},["rust-analyzer.inlayHints.chainingHints.enable"] = {default = true,markdownDescription = "Whether to show inlay type hints for method chains.",type = "boolean"},["rust-analyzer.inlayHints.closingBraceHints.enable"] = {default = true,markdownDescription = "Whether to show inlay hints after a closing `}` to indicate what item it belongs to.",type = "boolean"},["rust-analyzer.inlayHints.closingBraceHints.minLines"] = {default = 25,markdownDescription = "Minimum number of lines required before the `}` until the hint is shown (set to 0 or 1\nto always show them).",minimum = 0,type = "integer"},["rust-analyzer.inlayHints.closureReturnTypeHints.enable"] = {default = "never",enum = { "always", "never", "with_block" },enumDescriptions = { "Always show type hints for return types of closures.", "Never show type hints for return types of closures.", "Only show type hints for return types of closures with blocks." },markdownDescription = "Whether to show inlay type hints for return types of closures.",type = "string"},["rust-analyzer.inlayHints.closureStyle"] = {default = "impl_fn",enum = { "impl_fn", "rust_analyzer", "with_id", "hide" },enumDescriptions = { "`impl_fn`: `impl FnMut(i32, u64) -> i8`", "`rust_analyzer`: `|i32, u64| -> i8`", "`with_id`: `{closure#14352}`, where that id is the unique number of the closure in r-a internals", "`hide`: Shows `...` for every closure type" },markdownDescription = "Closure notation in type and chaining inaly hints.",type = "string"},["rust-analyzer.inlayHints.discriminantHints.enable"] = {default = "never",enum = { "always", "never", "fieldless" },enumDescriptions = { "Always show all discriminant hints.", "Never show discriminant hints.", "Only show discriminant hints on fieldless enum variants." },markdownDescription = "Whether to show enum variant discriminant hints.",type = "string"},["rust-analyzer.inlayHints.expressionAdjustmentHints.enable"] = {default = "never",enum = { "always", "never", "reborrow" },enumDescriptions = { "Always show all adjustment hints.", "Never show adjustment hints.", "Only show auto borrow and dereference adjustment hints." },markdownDescription = "Whether to show inlay hints for type adjustments.",type = "string"},["rust-analyzer.inlayHints.expressionAdjustmentHints.hideOutsideUnsafe"] = {default = false,markdownDescription = "Whether to hide inlay hints for type adjustments outside of `unsafe` blocks.",type = "boolean"},["rust-analyzer.inlayHints.expressionAdjustmentHints.mode"] = {default = "prefix",enum = { "prefix", "postfix", "prefer_prefix", "prefer_postfix" },enumDescriptions = { "Always show adjustment hints as prefix (`*expr`).", "Always show adjustment hints as postfix (`expr.*`).", "Show prefix or postfix depending on which uses less parenthesis, prefering prefix.", "Show prefix or postfix depending on which uses less parenthesis, prefering postfix." },markdownDescription = "Whether to show inlay hints as postfix ops (`.*` instead of `*`, etc).",type = "string"},["rust-analyzer.inlayHints.lifetimeElisionHints.enable"] = {default = "never",enum = { "always", "never", "skip_trivial" },enumDescriptions = { "Always show lifetime elision hints.", "Never show lifetime elision hints.", "Only show lifetime elision hints if a return type is involved." },markdownDescription = "Whether to show inlay type hints for elided lifetimes in function signatures.",type = "string"},["rust-analyzer.inlayHints.lifetimeElisionHints.useParameterNames"] = {default = false,markdownDescription = "Whether to prefer using parameter names as the name for elided lifetime hints if possible.",type = "boolean"},["rust-analyzer.inlayHints.maxLength"] = {default = 25,markdownDescription = "Maximum length for inlay hints. Set to null to have an unlimited length.",minimum = 0,type = { "null", "integer" }},["rust-analyzer.inlayHints.parameterHints.enable"] = {default = true,markdownDescription = "Whether to show function parameter name inlay hints at the call\nsite.",type = "boolean"},["rust-analyzer.inlayHints.reborrowHints.enable"] = {default = "never",enum = { "always", "never", "mutable" },enumDescriptions = { "Always show reborrow hints.", "Never show reborrow hints.", "Only show mutable reborrow hints." },markdownDescription = "Whether to show inlay hints for compiler inserted reborrows.\nThis setting is deprecated in favor of #rust-analyzer.inlayHints.expressionAdjustmentHints.enable#.",type = "string"},["rust-analyzer.inlayHints.renderColons"] = {default = true,markdownDescription = "Whether to render leading colons for type hints, and trailing colons for parameter hints.",type = "boolean"},["rust-analyzer.inlayHints.typeHints.enable"] = {default = true,markdownDescription = "Whether to show inlay type hints for variables.",type = "boolean"},["rust-analyzer.inlayHints.typeHints.hideClosureInitialization"] = {default = false,markdownDescription = "Whether to hide inlay type hints for `let` statements that initialize to a closure.\nOnly applies to closures with blocks, same as `#rust-analyzer.inlayHints.closureReturnTypeHints.enable#`.",type = "boolean"},["rust-analyzer.inlayHints.typeHints.hideNamedConstructor"] = {default = false,markdownDescription = "Whether to hide inlay type hints for constructors.",type = "boolean"},["rust-analyzer.interpret.tests"] = {default = false,markdownDescription = "Enables the experimental support for interpreting tests.",type = "boolean"},["rust-analyzer.joinLines.joinAssignments"] = {default = true,markdownDescription = "Join lines merges consecutive declaration and initialization of an assignment.",type = "boolean"},["rust-analyzer.joinLines.joinElseIf"] = {default = true,markdownDescription = "Join lines inserts else between consecutive ifs.",type = "boolean"},["rust-analyzer.joinLines.removeTrailingComma"] = {default = true,markdownDescription = "Join lines removes trailing commas.",type = "boolean"},["rust-analyzer.joinLines.unwrapTrivialBlock"] = {default = true,markdownDescription = "Join lines unwraps trivial blocks.",type = "boolean"},["rust-analyzer.lens.debug.enable"] = {default = true,markdownDescription = "Whether to show `Debug` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.enable"] = {default = true,markdownDescription = "Whether to show CodeLens in Rust files.",type = "boolean"},["rust-analyzer.lens.forceCustomCommands"] = {default = true,markdownDescription = "Internal config: use custom client-side commands even when the\nclient doesn't set the corresponding capability.",type = "boolean"},["rust-analyzer.lens.implementations.enable"] = {default = true,markdownDescription = "Whether to show `Implementations` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.location"] = {default = "above_name",enum = { "above_name", "above_whole_item" },enumDescriptions = { "Render annotations above the name of the item.", "Render annotations above the whole item, including documentation comments and attributes." },markdownDescription = "Where to render annotations.",type = "string"},["rust-analyzer.lens.references.adt.enable"] = {default = false,markdownDescription = "Whether to show `References` lens for Struct, Enum, and Union.\nOnly applies when `#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.references.enumVariant.enable"] = {default = false,markdownDescription = "Whether to show `References` lens for Enum Variants.\nOnly applies when `#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.references.method.enable"] = {default = false,markdownDescription = "Whether to show `Method References` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.references.trait.enable"] = {default = false,markdownDescription = "Whether to show `References` lens for Trait.\nOnly applies when `#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.run.enable"] = {default = true,markdownDescription = "Whether to show `Run` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.linkedProjects"] = {default = {},items = {type = { "string", "object" }},markdownDescription = "Disable project auto-discovery in favor of explicitly specified set\nof projects.\n\nElements must be paths pointing to `Cargo.toml`,\n`rust-project.json`, or JSON objects in `rust-project.json` format.",type = "array"},["rust-analyzer.lru.capacity"] = {default = vim.NIL,markdownDescription = "Number of syntax trees rust-analyzer keeps in memory. Defaults to 128.",minimum = 0,type = { "null", "integer" }},["rust-analyzer.lru.query.capacities"] = {default = vim.empty_dict(),markdownDescription = "Sets the LRU capacity of the specified queries.",type = "object"},["rust-analyzer.notifications.cargoTomlNotFound"] = {default = true,markdownDescription = "Whether to show `can't find Cargo.toml` error message.",type = "boolean"},["rust-analyzer.numThreads"] = {default = vim.NIL,markdownDescription = "How many worker threads in the main loop. The default `null` means to pick automatically.",minimum = 0,type = { "null", "integer" }},["rust-analyzer.procMacro.attributes.enable"] = {default = true,markdownDescription = "Expand attribute macros. Requires `#rust-analyzer.procMacro.enable#` to be set.",type = "boolean"},["rust-analyzer.procMacro.enable"] = {default = true,markdownDescription = "Enable support for procedural macros, implies `#rust-analyzer.cargo.buildScripts.enable#`.",type = "boolean"},["rust-analyzer.procMacro.ignored"] = {default = vim.empty_dict(),markdownDescription = "These proc-macros will be ignored when trying to expand them.\n\nThis config takes a map of crate names with the exported proc-macro names to ignore as values.",type = "object"},["rust-analyzer.procMacro.server"] = {default = vim.NIL,markdownDescription = "Internal config, path to proc-macro server executable (typically,\nthis is rust-analyzer itself, but we override this in tests).",type = { "null", "string" }},["rust-analyzer.references.excludeImports"] = {default = false,markdownDescription = "Exclude imports from find-all-references.",type = "boolean"},["rust-analyzer.restartServerOnConfigChange"] = {default = false,markdownDescription = "Whether to restart the server automatically when certain settings that require a restart are changed.",type = "boolean"},["rust-analyzer.runnableEnv"] = {anyOf = { {type = "null"}, {items = {properties = {env = {description = 'Variables in form of { "key": "value"}',type = "object"},mask = {description = "Runnable name mask",type = "string"}},type = "object"},type = "array"}, {description = 'Variables in form of { "key": "value"}',type = "object"} },default = vim.NIL,markdownDescription = "Environment variables passed to the runnable launched using `Test` or `Debug` lens or `rust-analyzer.run` command."},["rust-analyzer.runnables.command"] = {default = vim.NIL,markdownDescription = "Command to be executed instead of 'cargo' for runnables.",type = { "null", "string" }},["rust-analyzer.runnables.extraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Additional arguments to be passed to cargo for runnables such as\ntests or binaries. For example, it may be `--release`.",type = "array"},["rust-analyzer.rustc.source"] = {default = vim.NIL,markdownDescription = 'Path to the Cargo.toml of the rust compiler workspace, for usage in rustc_private\nprojects, or "discover" to try to automatically find it if the `rustc-dev` component\nis installed.\n\nAny project which uses rust-analyzer with the rustcPrivate\ncrates must set `[package.metadata.rust-analyzer] rustc_private=true` to use it.\n\nThis option does not take effect until rust-analyzer is restarted.',type = { "null", "string" }},["rust-analyzer.rustfmt.extraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Additional arguments to `rustfmt`.",type = "array"},["rust-analyzer.rustfmt.overrideCommand"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "Advanced option, fully override the command rust-analyzer uses for\nformatting. This should be the equivalent of `rustfmt` here, and\nnot that of `cargo fmt`. The file contents will be passed on the\nstandard input and the formatted result will be read from the\nstandard output.",type = { "null", "array" }},["rust-analyzer.rustfmt.rangeFormatting.enable"] = {default = false,markdownDescription = "Enables the use of rustfmt's unstable range formatting command for the\n`textDocument/rangeFormatting` request. The rustfmt option is unstable and only\navailable on a nightly build.",type = "boolean"},["rust-analyzer.semanticHighlighting.doc.comment.inject.enable"] = {default = true,markdownDescription = "Inject additional highlighting into doc comments.\n\nWhen enabled, rust-analyzer will highlight rust source in doc comments as well as intra\ndoc links.",type = "boolean"},["rust-analyzer.semanticHighlighting.operator.enable"] = {default = true,markdownDescription = "Use semantic tokens for operators.\n\nWhen disabled, rust-analyzer will emit semantic tokens only for operator tokens when\nthey are tagged with modifiers.",type = "boolean"},["rust-analyzer.semanticHighlighting.operator.specialization.enable"] = {default = false,markdownDescription = "Use specialized semantic tokens for operators.\n\nWhen enabled, rust-analyzer will emit special token types for operator tokens instead\nof the generic `operator` token type.",type = "boolean"},["rust-analyzer.semanticHighlighting.punctuation.enable"] = {default = false,markdownDescription = "Use semantic tokens for punctuations.\n\nWhen disabled, rust-analyzer will emit semantic tokens only for punctuation tokens when\nthey are tagged with modifiers or have a special role.",type = "boolean"},["rust-analyzer.semanticHighlighting.punctuation.separate.macro.bang"] = {default = false,markdownDescription = "When enabled, rust-analyzer will emit a punctuation semantic token for the `!` of macro\ncalls.",type = "boolean"},["rust-analyzer.semanticHighlighting.punctuation.specialization.enable"] = {default = false,markdownDescription = "Use specialized semantic tokens for punctuations.\n\nWhen enabled, rust-analyzer will emit special token types for punctuation tokens instead\nof the generic `punctuation` token type.",type = "boolean"},["rust-analyzer.semanticHighlighting.strings.enable"] = {default = true,markdownDescription = "Use semantic tokens for strings.\n\nIn some editors (e.g. vscode) semantic tokens override other highlighting grammars.\nBy disabling semantic tokens for strings, other grammars can be used to highlight\ntheir contents.",type = "boolean"},["rust-analyzer.server.extraEnv"] = {additionalProperties = {type = { "string", "number" }},default = vim.NIL,markdownDescription = "Extra environment variables that will be passed to the rust-analyzer executable. Useful for passing e.g. `RA_LOG` for debugging.",type = { "null", "object" }},["rust-analyzer.server.path"] = {default = vim.NIL,markdownDescription = "Path to rust-analyzer executable (points to bundled binary by default).",scope = "machine-overridable",type = { "null", "string" }},["rust-analyzer.showUnlinkedFileNotification"] = {default = true,markdownDescription = "Whether to show a notification for unlinked files asking the user to add the corresponding Cargo.toml to the linked projects setting.",type = "boolean"},["rust-analyzer.signatureInfo.detail"] = {default = "full",enum = { "full", "parameters" },enumDescriptions = { "Show the entire signature.", "Show only the parameters." },markdownDescription = "Show full signature of the callable. Only shows parameters if disabled.",type = "string"},["rust-analyzer.signatureInfo.documentation.enable"] = {default = true,markdownDescription = "Show documentation.",type = "boolean"},["rust-analyzer.trace.extension"] = {default = false,description = "Enable logging of VS Code extensions itself.",type = "boolean"},["rust-analyzer.trace.server"] = {default = "off",description = "Trace requests to the rust-analyzer (this is usually overly verbose and not recommended for regular users).",enum = { "off", "messages", "verbose" },enumDescriptions = { "No traces", "Error only", "Full log" },scope = "window",type = "string"},["rust-analyzer.typing.autoClosingAngleBrackets.enable"] = {default = false,markdownDescription = "Whether to insert closing angle brackets when typing an opening angle bracket of a generic argument list.",type = "boolean"},["rust-analyzer.typing.continueCommentsOnNewline"] = {default = true,markdownDescription = "Whether to prefix newlines after comments with the corresponding comment prefix.",type = "boolean"},["rust-analyzer.workspace.symbol.search.kind"] = {default = "only_types",enum = { "only_types", "all_symbols" },enumDescriptions = { "Search for types only.", "Search for all symbols kinds." },markdownDescription = "Workspace symbol search kind.",type = "string"},["rust-analyzer.workspace.symbol.search.limit"] = {default = 128,markdownDescription = "Limits the number of items returned from a workspace symbol search (Defaults to 128).\nSome clients like vs-code issue new searches on result filtering and don't require all results to be returned in the initial search.\nOther clients requires all results upfront and might require a higher limit.",minimum = 0,type = "integer"},["rust-analyzer.workspace.symbol.search.scope"] = {default = "workspace",enum = { "workspace", "workspace_and_dependencies" },enumDescriptions = { "Search in current workspace only.", "Search in current workspace and dependencies." },markdownDescription = "Workspace symbol search scope.",type = "string"}},title = "rust-analyzer",type = "object"}