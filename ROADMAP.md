# FeatherWorks roadmap

What comes next for each app and shared library in the suite. This file is the
source of priorities: when a repository has its own detailed plan, that plan
follows the order set here.

Status: ✅ in good shape · 🟡 usable, needs work · 🔴 early stage

## Every app

- [ ] **Ribbon icons**: redraw the ones that still look rough, so every tab
      has a clear and consistent set (in `feather-ui`, shared by all apps). [#1](https://github.com/feather-works/feather-ui/issues/1)

## <img src="profile/imagens/feathersheet.svg" width="24"> FeatherSheet ✅

The most complete app. Formulas are in good shape.

- [ ] More languages (interface, function names and help beyond Portuguese
      and English; Spanish released, French interface released in v0.3.1). [#141](https://github.com/feather-works/feathersheet/issues/141)
- [ ] Faster formula recalculation. [#142](https://github.com/feather-works/feathersheet/issues/142)
- [ ] Better FeatherQuery (Power Query M ↔ FeatherQuery script and the queries saved inside .xlsx released in v0.3.0; renaming, folders, named steps, Excel .iqy Web queries, SQLite, PostgreSQL, MySQL and SQL Server databases and macro autocomplete released in v0.3.3). [#94](https://github.com/feather-works/feathersheet/issues/94), [#93](https://github.com/feather-works/feathersheet/issues/93), [#70](https://github.com/feather-works/feathersheet/issues/70)
- [ ] Test many more macros (real VBA files converted to JavaScript). [#143](https://github.com/feather-works/feathersheet/issues/143)
- [ ] Look for other integrations. [#144](https://github.com/feather-works/feathersheet/issues/144)
- [x] Sparklines in cells (v0.2.9).
- [x] Gantt today line and bars colored by status (released in v0.3.0; feather-charts v0.3.5 by tag since v0.3.1). [#133](https://github.com/feather-works/feathersheet/issues/133)
- [ ] Slicers and timelines for pivot tables. [#145](https://github.com/feather-works/feathersheet/issues/145)
- [ ] Community add-ons. [#146](https://github.com/feather-works/feathersheet/issues/146)
- [x] Password-protected `.xlsx` (open and save), Consolidate, 3D references (`Jan:Dec!B5`), grouped and calculated pivot items (released in v0.3.1).
- [x] Audit of 13/11/2026 (released in v0.3.3): formulas closer to Excel (a formula pointing at an empty cell is 0, wildcards and the 0 criterion in COUNTIF/SUMIF, errors in SUMIFS, IFERROR over arrays, INDEX with row 0, text dates, TEXT sections) and no lost work (Ctrl+Z after opening another file, saving while a macro runs, empty recovery copy, Ctrl+C of a whole column, delete sheet asks first).
- [x] From the same audit (released in v0.3.3): whole-column, row and sheet formatting, pictures and frozen panes saved back to `.xlsx`, links to other sheets, CSV with the shown values, PROCX return columns and search modes, copying `B:B` references, Delete on a filtered table. Shapes and text boxes are still not written to `.xlsx`.
- [ ] Excel-like screens still missing: micro mode (menus and search in the title bar), Arrange and the Selection Pane, Allow Edit Ranges, Spell check (F7) and Show Changes released in v0.3.3; Split window and Group shapes (Shift+click, Arrange ▸ Group, groups read from .xlsx) done for the next version; still missing New window and Themes. [#68](https://github.com/feather-works/feathersheet/issues/68), [#79](https://github.com/feather-works/feathersheet/issues/79), [#82](https://github.com/feather-works/feathersheet/issues/82), [#83](https://github.com/feather-works/feathersheet/issues/83), [#80](https://github.com/feather-works/feathersheet/issues/80)
- [x] Excel fidelity in `.xlsx` (19/11/2026, for v0.3.4): shrink to fit, vertical text, superscript/subscript, Center Across Selection, tab color and Show zeros now open and save; gradient/diagonal/hatch fills, rich text, unsupported validation and conditional formats, sheet autofilter and threaded comments are warned before Ctrl+S drops them. Paste special gained Paste link, Comments and Validation.
- [x] Click a sum, average or count in the status bar to copy it (19/11/2026, for v0.3.4).
- [x] Alt text on images (Format image panel, or right-click ▸ Alt text… on imported ones), saved to and read from `.xlsx` (19/11/2026, for v0.3.4).
- [x] Fill handle like Excel: thin-cross pointer over the handle; dragging it from an empty cell clears the cells it covers (19/11/2026, for v0.3.4).
- [x] Normal distribution functions exact to Excel (a rough erf was off from the 7th digit) and NORM.S.DIST reopens correctly from `.xlsx`; found by checking the gold sample with GridCraft (19/11/2026, for v0.3.4).
- [x] Saved `.xlsx` about 40% smaller (zip level 4; a million rows: 71 → 44 MB). Benchmarked against GridCraft: open+calc 1M rows 1.8 s vs 21 s, 50k lookups 1.1 s vs 98 s (19/11/2026, for v0.3.4).
- [x] Sorting a million rows with formatted cells: moving the rows went from 27 s to 0.3 s (styles were re-inserted cell by cell); found benchmarking against GridCraft (19/11/2026, for v0.3.4).
- [x] Sheets named like a cell (`S1`, `ABA1`) referenced without quotes now calculate instead of #NAME? (found benchmarking against GridCraft; 100 sheets: 0.45 s vs 8.2 s) (19/11/2026, for v0.3.4).
- [x] Named ranges no longer saved as functions (Taxa→RATE), cross-sheet chains update on edit, linked workbooks ~3× faster (checked against GridCraft: 288k formulas equal); charts from separate columns (A and D with Ctrl) like Excel (19/11/2026, for v0.3.4).
- [x] Charts from separate columns keep the range as A1:A3;C1:C3, and unnamed series are Series1, Series2… like Excel/LibreOffice (19/11/2026, for v0.3.4).
- [x] Inspect document (19/11/2026, for v0.3.4): ☰ Menu ▸ Info lists comments, personal data, hidden sheets/rows/columns, header and footer text, hidden shapes, names, links to other files and macros before sharing; removes comments and personal data (saved as `removePersonalInformation` in `.xlsx`).
- [x] View ▸ Limited grid: only the rows and columns in use plus one spare are drawn as cells, growing as you type (23/11/2026, for v0.3.5). [#164](https://github.com/feather-works/feathersheet/issues/164)
- [x] Iterative calculation, Excel-like thousands separator on typing/paste/CSV, engine messages and error codes in the app language, and startup on graphics cards without usable Vulkan/OpenGL (released in v0.3.2). [#163](https://github.com/feather-works/feathersheet/issues/163)

Detailed plan: [feathersheet/ROADMAP.md](https://github.com/feather-works/feathersheet/blob/main/ROADMAP.md).

## <img src="profile/imagens/featherdocs.svg" width="24"> FeatherDocs 🟡

- [ ] Usability across the editor. [#1](https://github.com/feather-works/featherdocs/issues/1)
- [ ] A better menu. [#2](https://github.com/feather-works/featherdocs/issues/2)
- [ ] Better LaTeX editing. [#3](https://github.com/feather-works/featherdocs/issues/3)
- [ ] Better document (`.docx`) support. [#4](https://github.com/feather-works/featherdocs/issues/4) (a file saved by LibreOffice now comes back the same: headings without stray numbers, header distance, note text style; still to check with a file saved by Word)
- [x] Filling in forms. [#5](https://github.com/feather-works/featherdocs/issues/5)
- [ ] Better MCP integration. [#6](https://github.com/feather-works/featherdocs/issues/6)
- [ ] Better charts and tables, and open them in FeatherSheet to edit. [#7](https://github.com/feather-works/featherdocs/issues/7)
- [x] Complete the en-US and es-ES translations (interface and F1 help). [#8](https://github.com/feather-works/featherdocs/issues/8) (released in v0.1.11)
- [x] Sort paragraphs A to Z, long sentences flagged in Review, reading and speaking time, and startup on graphics cards without usable Vulkan/OpenGL (released in v0.1.10).
- [x] Go to page (Ctrl+G, Edit → Go to page, Review → Go to) and exported Markdown escapes a paragraph that starts like a heading, quote or list ("1. Introduction" comes back as a paragraph), on main for the next release.
- [ ] Synonyms in English and Spanish. Character goal and AutoText (saved snippets with formatting, Insert → AutoText) done on 23/11/2026 for the next version.

## <img src="profile/imagens/featherslide.svg" width="24"> FeatherSlide 🟡

- [x] Fix layout drift: elements move slightly when an existing presentation
      is opened (embedded fonts, such as Barlow Condensed, are now measured and drawn with
      their own widths; released in v0.2.2). [#1](https://github.com/feather-works/featherslide/issues/1)
- [ ] Usability across the editor. [#2](https://github.com/feather-works/featherslide/issues/2)
- [ ] Usability of the MCP integration. [#3](https://github.com/feather-works/featherslide/issues/3)
- [ ] More templates. [#4](https://github.com/feather-works/featherslide/issues/4)
- [ ] More animations (slide transitions now open from and save to `.pptx`, 23/11/2026, for the next version). [#5](https://github.com/feather-works/featherslide/issues/5)
- [x] Go to a slide by number while presenting, footer "Start at", `.odp` inner margin, and the fix for `.fsdz` files that stopped opening after Replace or Outline (released in v0.2.1).
- [x] Spanish (and English) interface: menus, ribbon, messages and F1 help, chosen in Settings or from the system language (on main for the next release).
- [ ] Laser pointer, pen and slide grid while presenting (local date on Windows and macOS done on 23/11/2026 for the next version).

## <img src="profile/imagens/feathernotes.svg" width="24"> FeatherNotes ✅

Usability is fine.

- [ ] Optimize the remaining slow parts (most of it is likely in pelicano). [#4](https://github.com/feather-works/feathernotes/issues/4)
  - Measured on a 50 MB log (16/11/2026): typing no longer rescans the whole text for look-alike letters on every key (−37 ms per key; released in v0.1.17). Measured again on 16/11 (48 MB, 600k lines, release build): opening went from 146 to 75 ms (no extra copy of the text, one quick pass for broken accents) and the Properties panel from 215 to 150 ms (counts in one pass); on main for the next release. Still left, all in pelicano: an idle frame or a key ~25–29 ms (9 ms on a small note), the first frame 205 ms, Find 175–195 ms, Replace All ~540 ms, and ~60 ms per frame while a big selection is active (the item below).
- [x] Selection word and character count, and "Transform selection" (upper/lower case, Base64/JWT, URL, HTML, escapes), and startup on graphics cards without usable Vulkan/OpenGL (released in v0.1.16).
- [ ] Read-only hex viewer.
- [ ] pelicano: selection length or range, so the status bar does not copy the whole selection every frame.

## <img src="profile/imagens/feathercode.svg" width="24"> FeatherCode 🔴

Still very raw.

- [x] Editor basics: find and replace (Ctrl+F, Ctrl+H), go to line (Ctrl+G), ask before closing unsaved tabs, a warning when the agent changes a file you are still editing, right-click menus on files and tabs, new file and folder, file-type icons, Markdown preview, autosave, `file:line` links in the agent's replies, Commit and Push in one click.
- [x] Problems list from `cargo check` (with wavy underlines and "ask the agent to fix"), side-by-side diff, stage file by file, split editor.
- [x] Autocomplete from the file's own names and the language keywords (pelicano 0.1.31 `TextEditor::completions`). Since v0.0.8 the app is on pelicano 0.1.34 and feather-ui v0.3.16, both on the crates.io pelicano, so the `[patch]` is gone.
- [ ] A better interface. [#1](https://github.com/feather-works/feathercode/issues/1)
- [ ] A way to create apps and plugins from inside the editor. [#2](https://github.com/feather-works/feathercode/issues/2)

## <img src="profile/imagens/featherpdf.svg" width="24"> FeatherPDF 🟡

- [ ] Usability. [#1](https://github.com/feather-works/featherpdf/issues/1)
- [ ] Use less RAM (find a better way to load and keep pages; reading from the mapped file released in v0.1.6; measured on 16/11 and closing a PDF now gives back the image cache, 232 → 28 MB, released in v0.1.9; what is left while open is in hayro-syntax and lopdf). [#2](https://github.com/feather-works/featherpdf/issues/2)
- [ ] Other ways to make common tasks faster. [#3](https://github.com/feather-works/featherpdf/issues/3)
- [x] Autosave recovery: unsaved documents get a backup copy every minute and come back after a crash as "name (recovered).pdf" (23/11/2026, for v0.1.10).
- [x] No internet access, copy/paste pages, logical page numbers, edit bookmarks and links, field rules, paper size when printing, attach a file, rotate an image, zoom to area (released in v0.1.7).
- [x] Hardened against malicious PDFs (decompression caps, field formulas) and safer redaction (11/11/2026).
- [x] Dark page: logos on a white background and scanned pages now darken too; thin ribbon scrollbar in the dark theme (released in v0.1.8).
- [x] Audit of 13/11/2026 (released in v0.1.8): no lost files (Ctrl+Z after Save As, same PDF in two tabs, Remove password undo, Save As over a signed original), safer redaction (half-covered letters, XFA, glyph widths, fields and comments searched), no JavaScript injection through field names, scripts run in a separate process with a time limit, faster large PDFs, OCR without duplicated text and off the window thread, merging keeps bookmarks and named links.
- [x] From the audit: "Split by size" makes one copy per measure and few measures per part (measuring without saving left out: it would misjudge compression). The public IP lookup in signatures stays, by decision.
- [x] New start page ("continue where you left off", tool tiles, recent files with a page-1 thumbnail), warm graphite dark theme, thinner icons and a confirmation with Open file / Open folder after exporting or saving (released in v0.1.8).
- [x] Presentation mode (F5): full screen, one page at a time on black, arrows/space to move, Esc to leave (released in v0.1.8).
- [x] Date format in form fields (typed dates read and rewritten in the field's AFDate format, impossible dates refused) and rotate the view (Ctrl+Shift+= / Ctrl+Shift+-, screen only), released in v0.1.9.
- [x] Text (`.txt`) becomes an A4 PDF, auto-scroll (Ctrl+Shift+H), converted files keep their name, and a printable comments summary PDF (19/11/2026, for v0.1.10).
- [x] Compress cleanup removes links and leaf bookmarks that point to pages no longer in the file (19/11/2026, for v0.1.10).
- [x] Sanitize ▸ Attachments also removes embedded video, sound, 3D and RichMedia (19/11/2026, for v0.1.10).
- [x] Redaction's "also remove metadata" now strips page and image XMP and photo EXIF (camera, GPS), same as Sanitize (19/11/2026, for v0.1.10).
- [x] Move heavy work off the window thread (19/11/2026: Ctrl+F, redaction, password, attach, copy/cut pages and Send to FeatherDocs run in the background; a background edit is dropped if the document changed meanwhile. "Save before closing" stays on the window thread on purpose: the tab closes right after).

## <img src="profile/imagens/featherdb.svg" width="24"> FeatherDB 🔴

Lightweight database client (the idea of DBeaver, without the weight). Started on 2026-11-04:
PostgreSQL, MySQL/MariaDB, SQLite, MongoDB/Atlas and any database through ODBC (Datasphere, TDV…),
SQL editor, table tree (server › databases › tables) and result grid. Tested against a real PostgreSQL.
Since then: query tabs, name completion, Stop, warning on DELETE/UPDATE without WHERE, sort and filter
the grid, query history, format SQL, EXPLAIN, reconnect on a dropped connection.

- [ ] Test against real MySQL, MongoDB Atlas, Datasphere and TDV servers (Stop, grid editing, read-only and indexes/keys passed on a real PostgreSQL).
- [x] SSL options: verify or encrypt only, company CA and client certificate.
- [x] Edit data in the grid and see table DDL.
- [x] From the DBeaver survey: manual commit, read-only and production connections, SSH tunnel, new/delete rows,
  +1000 rows, value panel, copy as INSERT/JSON, indexes/foreign keys/triggers, drop table, import CSV,
  `:name` parameters, comment line, expand `*`, ER diagram and active sessions.
- [ ] Test the SSH tunnel against a real server (only the error path is tested).
- [ ] Native SQL Server without C: `tiberius` pulls `aws-lc` (C, cmake) through `tokio-rustls`; today SQL Server goes through ODBC.
- [ ] Bring the FeatherDB brand into `feather-ui` (`marca::Produto`); today the app recolors the feather itself.
- [x] Listed in the FeatherWorks Launcher (22/11/2026, Launcher 0.1.12).
- [x] First release: 0.1.0 on 2026-11-22 (`.deb`, `.tar.gz`, Windows installer and portable zip; `pacote/gerar.sh`).

## <img src="profile/imagens/feathercad.svg" width="24"> FeatherCAD 🔴

2D technical drawing (`.fcdz`, `.dxf`, PDF) with an MCP server that lets an assistant draw.
Left the FeatherOffice repository on 2026-11-16 and now lives in
[feather-works/feathercad](https://github.com/feather-works/feathercad). Still a Tauri window; comes after the office apps.

- [ ] Phase 2: read every DXF entity without losing data (DWG later).
- [ ] Phase 3: paper space (layouts and viewports).
- [ ] Native window with `pelicano`/`feather-ui`, like the other apps (today Tauri + TypeScript). In progress in `crates/feathercad`: every Tauri window ported (tabs with their own undo, layers, properties, settings, live MCP); still to do: real use on Linux and Windows, then delete the Tauri app.
- [x] First release: 0.1.0 alpha on 2026-11-16 (`.deb` and Windows installer; `.tar.gz` for the Launcher added on 2026-11-19).
- [ ] Run the Windows installer on a real Windows machine (it was cross-built on Linux).

## Shared libraries

### [pelicano](https://github.com/feather-works/pelicano) (UI toolkit)

- [ ] Finish the open items. [#3](https://github.com/feather-works/pelicano/issues/3)
- [ ] Make building screens much faster and simpler. [#4](https://github.com/feather-works/pelicano/issues/4)
- [ ] A way to validate screens (check layout and look automatically). [#5](https://github.com/feather-works/pelicano/issues/5)
- [ ] 3D support. [#6](https://github.com/feather-works/pelicano/issues/6)
- [x] 0.1.31 (05/11/2026): selecting text and moving the cursor from the app (`Task::select_all/move_cursor/select_range`, `Content::select/set_cursor`), Tab between fields, read-only editor, editor click and find-previous, `context_menu`, `virtual_list`, terminal Ctrl+click links, `Stack::fit_base`, `MouseArea::on_press_through`, tooltip with a bar, `svg().current_color()`, more styling on toggles and progress bars. Published on crates.io.

### [falcao](https://github.com/feather-works/falcao) (JavaScript engine)

Goal: the best JavaScript interpreter. It runs code from macros, so
**security comes first**: a JavaScript injection must never reach the user's
machine.

- [ ] Security: actively hunt for flaws (sandbox escapes, file and process
      access, memory bugs, runaway scripts) with fuzzing and hostile scripts. [#1](https://github.com/feather-works/falcao/issues/1)
- [ ] Implement N3, the optimizing JIT
      ([ARQUITETURA.md](https://github.com/feather-works/falcao/blob/main/ARQUITETURA.md), section 11). [#2](https://github.com/feather-works/falcao/issues/2)
- [ ] More optimizations across the engine. [#3](https://github.com/feather-works/falcao/issues/3)
