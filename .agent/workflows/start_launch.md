---
description: Move a launch ticket from backlog to active and trigger the pipeline.
---

# Workflow: Start Launch

1.  **Ask User:** "Which backlog project do you want to launch?"
2.  **Verify:** Check `launch_ticket.md` for Protocol Zero.
3.  **Action:** Move folder `launches/backlog/[project_name]/` to `launches/active/`.
4.  **Trigger:** Run `@launch-vibe` with the project path.
