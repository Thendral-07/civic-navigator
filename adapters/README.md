# Using Civic Navigator in other chatbots

There are two routes, depending on what the chatbot supports.

## Route 1: the chatbot supports Agent Skills (SKILL.md folders)

Use `skill/civic-navigator/` as it is. The SKILL.md format is an open standard (agentskills.io), so any skills-compatible agent can load the folder. Check your tool's documentation for where skill folders go.

## Route 2: plain chatbots (no skill folders)

Use `adapters/universal-prompt.md`. It contains the full instructions plus the pack format and every pack in one file.

1. Open the file and copy all of it.
2. Paste it into the place where your chatbot accepts standing instructions: a system prompt, custom instructions, a custom assistant/GPT/Gem instructions box, or the first message of a chat.
3. If the platform has a size limit, paste the instructions first and upload or paste the pack files separately.
4. Test with a few questions, including one the pack cannot answer. The assistant should say "not in my verified data".

## Differences you should know about

- **No on-demand loading.** The whole prompt is read every time, so it costs more context than the native skill.
- **No live checking** unless the chatbot has web search. Without it, the assistant can only repeat the pack and must tell users to confirm dates and amounts on the official portal.
- **Behaviour varies by model.** Always run the test prompts on each chatbot you claim support for.

## Keep it in sync

After changing the skill or a pack, run `./adapters/build.sh` and commit the regenerated `universal-prompt.md`.

## The third route: MCP

MCP is an open protocol many chatbots and agents can connect to. The planned `mcp/` server (verified scheme search and eligibility checks, reading the same packs) will work across any MCP-compatible client.
