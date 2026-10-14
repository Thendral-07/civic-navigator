# Civic Navigator

A [Claude skill](https://docs.claude.com) that helps ordinary people find and understand government schemes, benefits and scholarships, **without guessing**.

It behaves like a good help-desk officer: it asks only the questions that matter, matches the person to verified scheme entries, cites an official source and a last-verified date for every fact, and says plainly when it does not know.

> Status: **v0.1 starter**. One pack (Tamil Nadu, education, 2 schemes). Not legal advice. Final eligibility is always decided by the department.

## Why

Scheme details (amounts, deadlines, portals) change often, and many websites copy each other's mistakes. A confident wrong answer can cost someone a deadline. So this skill is built around **evidence and honesty**, not around having an answer for everything.

## How it works

- **Core skill** (`skill/civic-navigator/SKILL.md`): a country-agnostic method (ask, match, cite, say "I don't know").
- **Packs** (`skill/civic-navigator/packs/`): verified scheme entries per place and topic. Anyone can add a pack for their own country or state.
- **Evidence tiers:** Tier 1 = official government pages. Tier 2 = news/aggregators, always labelled "please confirm". Deadlines and amounts are only stated as confirmed when Tier 1 supports them.

## Install

Zip the folder `skill/civic-navigator/` (or download the packaged `.skill` from Releases when available) and add it as a skill in Claude.

## Example

> "My brother finished Class 12 in a government school and has joined a regular college. Any scheme?"

The skill asks which state and whether the course is regular, then (using the Tamil Nadu pack) points to Tamil Pudhalvan, shows the official source, marks the amount and deadline as "confirm on the portal", lists the documents to prepare, and gives the helpline as the next step.

## Contribute a pack

See [CONTRIBUTING.md](CONTRIBUTING.md). **No Tier 1 source, no entry.**

## Roadmap

- [ ] Test with 10 real prompts (including "not in my data" cases)
- [ ] Confirm deadlines/amounts on official pages
- [ ] More Tamil Nadu schemes
- [ ] More countries/states via community packs
- [ ] MCP server (`mcp/`) reading the same packs, for live verified search and eligibility checks

## License

Code and skill text: MIT. Pack data is compiled from official public sources and may change; always verify on the official portal.
