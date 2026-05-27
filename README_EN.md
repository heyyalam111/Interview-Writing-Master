# Interview Writing Master

Language: [中文](README.md) | English

`Interview-Writing-Master` is a business-interview writing Skill repository. It uses reference articles, adaptive interviewing, and self-review to turn spoken or written interview material into a sub-1000-character WeChat-style business story.

## Features

- Read reference articles from `interview/style-reference/` and infer title patterns, openings, rhythm, tone, and quote density.
- Interview the user through multiple adaptive follow-up questions.
- Extract background, conflict, concrete scenes, emotions, and reflection.
- Generate 3 title options and article bodies.
- Self-check quote density, rhythm, opening hook, ending, and style consistency.
- Provide a three-agent team plan: style researcher, story interviewer, and writer.

## Repository Layout

```text
.
├── interview/
│   ├── SKILL.md
│   ├── agent-team-plan.md
│   ├── agent-team-prompt.txt
│   ├── interview-team.bat
│   ├── install-bashrc.bat
│   ├── .bashrc
│   └── style-reference/
│       ├── 1.md
│       ├── 2.md
│       ├── 3.md
│       ├── 4.md
│       └── 5.md
└── How+to+create+Skills+for+Claude+steps+and+examples++Claude (1).md
```

## Installation

Place the `interview/` directory in a `skills/` directory discoverable by Claude Code:

```text
skills/
└── interview/
    ├── SKILL.md
    └── style-reference/
```

Keep at least 5 reference articles in `style-reference/`; the Skill reads them to learn the desired style.

## Triggers

```text
/interview 张三的创业故事
/访谈 我最近的一次失败经历
写一篇访谈文章
帮我生成公众号文章
把访谈整理成文章
```

You can also provide a material file path so the Skill can read existing material before asking follow-up questions.

## Workflow

1. Read all reference articles.
2. Analyze title style, opening hooks, paragraph rhythm, quote density, and endings.
3. Read user-provided material or spoken input.
4. Ask adaptive interview questions to fill story gaps and scene details.
5. Decide whether the material is strong enough for an article.
6. Generate 3 title options and article bodies.
7. Self-review and refine the opening, rhythm, quotes, and ending.

## Output Format

```markdown
---
title: Title option 1
---

Article body

---
title: Title option 2
---

Article body

---
title: Title option 3
---

Article body
```

## Agent Team Mode

`interview/agent-team-plan.md` describes a three-agent workflow:

- Style researcher: reads reference articles and produces a style guide.
- Story interviewer: interviews the user and produces a story package.
- Writer: combines style and material into 3 title options and article bodies.

Use the prompt in `interview/agent-team-prompt.txt` to start the team workflow.

## Notes

- Without `style-reference/`, the Skill cannot perform style imitation.
- If information is insufficient, the Skill asks follow-up questions instead of inventing details.
- For sensitive content, anonymize names or details before publishing.

## License

Proprietary
