# TT2L Group 7 - Final Report Guide
# Due: 21 June 2026, 11:59 PM

---

## STEP 1 - Setup (Everyone must do this first)

### Prerequisites
- Install **Node.js** (v18 or above): https://nodejs.org
- Install **pnpm**: open terminal and run:
  ```
  npm install -g pnpm
  ```

### Clone and Build
Open terminal, run these one by one:
```
git clone https://github.com/MelvinSiaw/software-evolution.git
cd software-evolution
pnpm install
pnpm approve-builds
pnpm build
```
> When `pnpm approve-builds` asks, press **A** then **Enter** to approve all.

### View the Demo Mind Map
After build is done:
```
.\preview.ps1 demo.md
```
A browser will open with the mind map. This is what you use for screenshots.

---

## STEP 2 - Screenshots Needed (Assign to one person)

Take these screenshots and save them with the names below:

### Screenshot 1 — `ss_overlap_before.png`
**What:** Show that WITHOUT the fix, nodes overlap.
- Open this link in browser: https://markmap.js.org/
- Paste the content of `overlap-test.md` into the editor
- Zoom in on Branch A Level 7 nodes
- **Take screenshot showing nodes crowded/overlapping**

### Screenshot 2 — `ss_overlap_after.png`
**What:** Show that WITH the fix, nodes are properly spaced.
- Run `.\preview.ps1 overlap-test.md`
- Zoom in on the deep nested nodes (Level 7 siblings)
- **Take screenshot showing clean spacing between nodes**

### Screenshot 3 — `ss_toolbar_buttons.png`
**What:** Show the toolbar with PNG and SVG export buttons.
- Run `.\preview.ps1 demo.md`
- Zoom into the bottom-right toolbar
- **Take screenshot of the toolbar showing all buttons**

### Screenshot 4 — `ss_png_export.png`
**What:** Show PNG export working.
- Run `.\preview.ps1 demo.md`
- Click the **PNG export button** (image icon, last button)
- A file `markmap.png` will download
- **Take screenshot of the downloaded PNG file opened**

### Screenshot 5 — `ss_svg_export.png`
**What:** Show SVG export working.
- Run `.\preview.ps1 demo.md`
- Click the **SVG export button** (second last button)
- A file `markmap.svg` will download
- **Take screenshot of the downloaded SVG file opened in browser**

### Screenshot 6 — `ss_demo_fullview.png`
**What:** Full mind map showing all features.
- Run `.\preview.ps1 demo.md`
- Press the **Fit** button in toolbar (4 arrows icon) to fit full map
- **Take screenshot of the entire mind map**

### Screenshot 7 — `ss_code_calculateNodeSpacing.png`
**What:** Show the fix code in VS Code.
- Open file: `packages/markmap-view/src/view.ts`
- Scroll to the `calculateNodeSpacing` function (around line 60-80)
- **Take screenshot of the function code**

### Screenshot 8 — `ss_toolbar_code.png`
**What:** Show the PNG/SVG export code in VS Code.
- Open file: `packages/markmap-toolbar/src/toolbar.tsx`
- Scroll to `exportSvg` or `exportPng` section (around line 135-195)
- **Take screenshot of the export code**

---

## STEP 3 - Report Sections (Assign each section to one person)

### Person 1 — Executive Summary + Introduction
Write about:
- What is Markmap (open-source Markdown mind map tool)
- Why we chose it (active project, real bug to fix, TypeScript)
- What improvements we made (4 improvements)
- Keep it short: 1 paragraph each

### Person 2 — Improvement #1: SVG Node Overlap Fix
Write about:
- **What was the problem:** When mind map had deep nested nodes with long text, nodes overlapped each other making it unreadable
- **Where in the code:** `packages/markmap-view/src/view.ts`, function `calculateNodeSpacing()`
- **What we changed:** Added depth-based spacing calculation so deeper nodes get more space
- **Before/After:** Use `ss_overlap_before.png` and `ss_overlap_after.png`
- **Code snippet:** Copy the `calculateNodeSpacing` function

### Person 3 — Improvement #2 & #3: PNG Export + SVG Export
Write about:
- **What was missing:** Original markmap had no way to save/export the mind map as an image
- **PNG Export:** Used Canvas API — converts SVG to image, draws on canvas at 2x resolution, downloads as PNG. Supports dark mode background.
- **SVG Export:** Used XMLSerializer — serializes the SVG element to string, downloads as .svg file
- **Where in code:** `packages/markmap-toolbar/src/toolbar.tsx`, functions `exportPng` and `exportSvg`
- **Screenshots:** Use `ss_toolbar_buttons.png`, `ss_png_export.png`, `ss_svg_export.png`

### Person 4 — Improvement #4: Documentation + Reflection
Write about:
- **What was missing:** Original repo had minimal README, no contributor guide
- **What we added:** 
  - `README.md` — Quick Start, Project Structure, Contributing section
  - `CONTRIBUTING.md` — Full contributor guide with setup steps, commit format, PR guide
- **Why it matters:** New contributors can now set up the project and understand the codebase
- **Individual Reflection:** Each member writes 3-5 sentences:
  - What did you learn?
  - What was challenging?
  - What would you do differently?

---

## STEP 4 - Report Structure (Follow this order)

```
1. Executive Summary               (1 page)
2. Introduction                    (1 page)
3. Code Analysis (original code)   (1-2 pages)
4. Improvement #1: Overlap Fix     (1-2 pages + screenshots)
5. Improvement #2: PNG Export      (1-2 pages + screenshots)
6. Improvement #3: SVG Export      (1 page + screenshots)
7. Improvement #4: Documentation   (1 page + screenshots)
8. Testing & Validation            (1 page + screenshots)
9. Individual Reflections          (1 paragraph per member)
10. Conclusion                     (half page)
11. RUBRIC PAGE (attach as last page)
```

---

## STEP 5 - Submission Checklist

- [ ] All screenshots taken and labelled
- [ ] All report sections written and combined into ONE Word/PDF
- [ ] Rubric attached as LAST PAGE of PDF
- [ ] GitHub link in README: https://github.com/MelvinSiaw/software-evolution
- [ ] ZIP file contains: Final Report PDF + project files
- [ ] Submit to TT2L before 11:59 PM tonight

---

## GitHub Link
https://github.com/MelvinSiaw/software-evolution

## Quick Commands Reference
| Task | Command |
|------|---------|
| Install dependencies | `pnpm install` |
| Build all packages | `pnpm build` |
| View demo mind map | `.\preview.ps1 demo.md` |
| View overlap test | `.\preview.ps1 overlap-test.md` |
