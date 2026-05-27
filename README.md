# Interview Writing Master

语言：中文 | [English](README_EN.md)

`Interview-Writing-Master` 是一个商业人物访谈写作 Skill 仓库。它通过风格参考文章、多轮访谈和自检优化，把口述素材或访谈素材整理成 1000 字以内、适合公众号阅读的商业故事文章。

## 核心能力

- 读取 `interview/style-reference/` 中的参考文章，提炼标题、开头、节奏、语气和金句风格。
- 基于用户已有素材或口述内容进行多轮追问。
- 挖掘背景、冲突、细节、情感和升华。
- 生成 3 个标题选项和对应正文。
- 输出前执行金句密度、节奏、开头、结尾和风格一致性自检。
- 提供三人 Agent Team 协作方案：风格研究员、故事挖掘师、写手。

## 仓库结构

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

## 安装

将 `interview/` 目录放入 Claude Code 可发现的 `skills/` 目录中，目录结构应类似：

```text
skills/
└── interview/
    ├── SKILL.md
    └── style-reference/
```

`style-reference/` 至少保留 5 篇参考文章，Skill 会读取这些文章来学习风格。

## 触发方式

```text
/interview 张三的创业故事
/访谈 我最近的一次失败经历
写一篇访谈文章
帮我生成公众号文章
把访谈整理成文章
```

也可以提供已有素材文件路径，让 Skill 先读取素材再开始追问。

## 工作流程

1. 读取全部风格参考文章。
2. 分析标题句式、开头钩子、段落节奏、金句密度和结尾方式。
3. 读取用户提供的素材文件或口述内容。
4. 动态访谈追问，补齐故事线和细节场景。
5. 判断素材是否足够支撑文章。
6. 生成 3 个标题选项和正文。
7. 自检并优化开头、节奏、金句和结尾。

## 输出格式

```markdown
---
title: 标题选项1
---

正文

---
title: 标题选项2
---

正文

---
title: 标题选项3
---

正文
```

## Agent Team 模式

`interview/agent-team-plan.md` 提供了三人团队协作方案：

- 风格研究员：读取参考文章，输出风格指南。
- 故事挖掘师：与用户多轮访谈，输出故事素材包。
- 写手：综合风格和素材，输出 3 个标题选项与正文。

可使用 `interview/agent-team-prompt.txt` 中的提示词启动协作。

## 注意事项

- 缺少 `style-reference/` 时，Skill 无法完成风格模仿。
- 信息不足时，Skill 会继续追问，不会直接编造故事细节。
- 涉及敏感信息时，应先确认是否需要匿名化或隐去细节。

## 许可证

Proprietary
