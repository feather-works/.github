# FeatherWorks roadmap

What comes next for each app and shared library in the suite. This file is the
source of priorities: when a repository has its own detailed plan, that plan
follows the order set here.

Status: ✅ in good shape · 🟡 usable, needs work · 🔴 early stage

## Every app

- [ ] **Ribbon icons**: redraw the ones that still look rough, so every tab
      has a clear and consistent set (in `feather-ui`, shared by all apps).

## <img src="profile/imagens/feathersheet.svg" width="24"> FeatherSheet ✅

The most complete app. Formulas are in good shape.

- [ ] More languages (interface, function names and help beyond Portuguese
      and English).
- [ ] Faster formula recalculation.
- [ ] Better OpenQuery.
- [ ] Test many more macros (real VBA files converted to JavaScript).
- [ ] Look for other integrations.

Detailed plan: [feathersheet/ROADMAP.md](https://github.com/feather-works/feathersheet/blob/main/ROADMAP.md).

## <img src="profile/imagens/featherdocs.svg" width="24"> FeatherDocs 🟡

- [ ] Usability across the editor.
- [ ] A better menu.
- [ ] Better LaTeX editing.
- [ ] Better document (`.docx`) support.
- [ ] Filling in forms.
- [ ] Better MCP integration.
- [ ] Better charts and tables, and open them in FeatherSheet to edit.

## <img src="profile/imagens/featherslide.svg" width="24"> FeatherSlide 🟡

- [ ] Fix layout drift: elements move slightly when an existing presentation
      is opened.
- [ ] Usability across the editor.
- [ ] Usability of the MCP integration.
- [ ] More templates.
- [ ] More animations.

## <img src="profile/imagens/feathernotes.svg" width="24"> FeatherNotes ✅

Usability is fine.

- [ ] Optimize the remaining slow parts (most of it is likely in pelicano).

## <img src="profile/imagens/feathercode.svg" width="24"> FeatherCode 🔴

Still very raw.

- [ ] A better interface.
- [ ] A way to create apps and plugins from inside the editor.

## <img src="profile/imagens/featherpdf.svg" width="24"> FeatherPDF 🟡

- [ ] Usability.
- [ ] Use less RAM (find a better way to load and keep pages).
- [ ] Other ways to make common tasks faster.

## Shared libraries

### [pelicano](https://github.com/feather-works/pelicano) (UI toolkit)

- [ ] Finish the open items.
- [ ] Make building screens much faster and simpler.
- [ ] A way to validate screens (check layout and look automatically).
- [ ] 3D support.

### [falcao](https://github.com/feather-works/falcao) (JavaScript engine)

Goal: the best JavaScript interpreter. It runs code from macros, so
**security comes first**: a JavaScript injection must never reach the user's
machine.

- [ ] Security: actively hunt for flaws (sandbox escapes, file and process
      access, memory bugs, runaway scripts) with fuzzing and hostile scripts.
- [ ] Implement N3, the optimizing JIT
      ([ARQUITETURA.md](https://github.com/feather-works/falcao/blob/main/ARQUITETURA.md), section 11).
- [ ] More optimizations across the engine.
