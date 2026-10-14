# Pack format

A pack is one Markdown file per place and topic, for example `packs/tamil-nadu-education.md` or `packs/kenya-agriculture.md`. Keep a pack small (5 to 15 schemes). A small, correct pack is worth more than a large, stale one.

## Header

```
# <Place> - <Topic> pack
- Place: <country / state>
- Topic: <education | agriculture | health | ...>
- Pack last verified: YYYY-MM-DD
- Maintainer: <name or GitHub handle>
```

## Scheme entry (copy this block for each scheme)

```
## <Scheme name> (local-language name if any)
- Department: 
- Who it is for: <plain-language eligibility, one fact per bullet>
  - 
- What it gives: <benefit, and whether the amount is Tier 1 or Tier 2>
- How to apply: <portal / office / who submits (student or college)>
- Documents to prepare: <list; mark each as Tier 1 or Tier 2>
- Helpline: 
- Facts NOT confirmed by an official source: <deadlines, amounts, extra rules reported only by secondary sources>
- Sources:
  - Tier 1: <official URL> (checked YYYY-MM-DD)
  - Tier 2: <URL> (checked YYYY-MM-DD)
- Last verified: YYYY-MM-DD
```

## Evidence tiers

- **Tier 1:** official government portals and department pages.
- **Tier 2:** news, aggregators, blogs. These can only support a fact that is labelled as unconfirmed.

## Rules for contributors

1. No Tier 1 source, no entry.
2. Put every deadline, amount or window that only a Tier 2 source supports under "Facts NOT confirmed by an official source".
3. Update "Last verified" only when you actually re-checked the official page.
4. Do not include personal data, phone numbers of individuals, or anything copied from a login-only page.
5. If a scheme is closed or replaced, mark it `Status: closed` and keep the entry for 90 days with the replacement named.
