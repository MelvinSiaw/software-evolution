# How to Run Markmap on Windows
# TT2L Group 7

---

## Prerequisites (Install these first)

1. **Node.js v18+** — https://nodejs.org → click "LTS" → install
2. **Git** — https://git-scm.com → install with default settings
3. **pnpm** — after Node.js is installed, open PowerShell and run:
   ```
   npm install -g pnpm
   ```

---

## Step 1 — Allow PowerShell Scripts (Run once)

Open **PowerShell** and run:
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
Type **Y** and press Enter.

---

## Step 2 — Clone the Repository

```
git clone https://github.com/MelvinSiaw/software-evolution.git
cd "software-evolution"
```

---

## Step 3 — Install Dependencies

```
pnpm install
```

When asked by `pnpm approve-builds`, press **A** then **Enter**.

---

## Step 4 — Build the Project

```
pnpm build
```

Wait 1-2 minutes. Ignore warnings, only errors matter.

---

## Step 5 — View the Mind Map

```
.\preview.ps1 demo.md
```

Browser opens automatically with the full demo mind map.

To view the overlap test:
```
.\preview.ps1 overlap-test.md
```

---

## Toolbar Buttons (bottom-right of browser)

| Button | What it does |
|--------|-------------|
| + | Zoom in |
| - | Zoom out |
| Four arrows | Fit to screen |
| Square icon | Toggle fold recursively |
| Half circle | Toggle dark/light mode |
| Lines icon | Export as SVG |
| Image icon | Export as PNG |

---

## Common Errors

| Error | Fix |
|-------|-----|
| "running scripts is disabled" | Run Set-ExecutionPolicy step again |
| "pnpm not found" | Run `npm install -g pnpm` again |
| "git not found" | Install Git from git-scm.com |
| Build fails | Run `pnpm install` again then `pnpm build` |
| Browser does not open | Manually open the `.html` file in the project folder |
