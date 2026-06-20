---
title: Markmap Demo - TT2L Group 7
markmap:
  colorFreezeLevel: 2
---

# Markmap Feature Demo

## SVG Node Overlap Fix
- Branch A
  - A Level 2
    - A Level 3
      - A Level 4
        - A Level 5
          - A Level 6
            - A Level 7 sibling one with long text that wraps
            - A Level 7 sibling two with long text that wraps
            - A Level 7 sibling three with long text that wraps
            - A Level 7 sibling four with long text that wraps
- Branch B
  - B Level 2
    - B Level 3
      - B Level 4
        - B Level 5
          - B Level 6
            - B Level 7 sibling one with long text that wraps
            - B Level 7 sibling two with long text that wraps
            - B Level 7 sibling three with long text that wraps
            - B Level 7 sibling four with long text that wraps

## Text Formatting
- **Bold text**
- *Italic text*
- ~~Strikethrough~~
- ==Highlight==
- `inline code`
- [x] Checkbox done
- [ ] Checkbox pending

## Links
- [Markmap Website](https://markmap.js.org/)
- [GitHub Repository](https://github.com/MelvinSiaw/software-evolution)

## Math (KaTeX)
- $x = {-b \pm \sqrt{b^2-4ac} \over 2a}$
- $E = mc^2$

## Code Block
```js
// Example: calculateNodeSpacing fix by TT2L Group 7
function calculateNodeSpacing(a, b, sameParent, spacingVertical, lineWidth) {
  const maxDepth = Math.max(a.state.depth, b.state.depth);
  const depthSpacing = Math.max(0, maxDepth - 2) * 6;
  return (sameParent ? spacingVertical : spacingVertical * 2)
    + depthSpacing + lineWidth(a) + lineWidth(b);
}
```

## Table
| Feature | Status |
|-|-|
| SVG Overlap Fix | Done |
| PNG Export | Done |
| SVG Export | Done |
| Documentation | Done |

## Image
![Markmap Logo](https://markmap.js.org/favicon.png)
