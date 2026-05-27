# Global Preferences / 全局偏好

## 模型 / Model

- 如果你是deepseek模型，thinking应该用中文

## 语言 / Language

- 对话使用中文回复 / Respond in Chinese (zh_CN)
- 代码注释、PR 评论和描述使用英文 / Use English for code comments, PR comments, and descriptions

## 子代理 / Subagents

- API 速率限制时重试直到完成，不要放弃 / On rate limits, retry until complete — never give up
- 多个子代理并行时，每个完成后推送通知 / With parallel subagents, push a notification on each completion

## 工具 / Tooling

- bun 安装包时添加 `--registry https://registry.npmmirror.com` / Always use `--registry https://registry.npmmirror.com` with bun installs

## Git 提交规范 / Commit Convention

- 格式：`type(scope): description`（Conventional Commits）
- 类型：`feat` / `fix` / `refactor` / `chore` / `docs` / `test` / `perf`
- 全英文，祈使句，首字母小写，不加句号 / English only, imperative mood, lowercase, no trailing period

## 危险操作 / Dangerous Operations

以下操作执行前须告知我 / Always notify me before:

- `git push --force`
- `git reset --hard`（有未提交变更时 / with uncommitted changes）
- 批量删除文件 / bulk file deletion (`rm -rf`)
- 删除或截断数据库表 / dropping or truncating tables

## 测试 / Testing

- 修改业务逻辑必须附带测试 / Business logic changes require tests
- 配置、文案、样式变更无需测试 / Config, copy, and style changes are exempt
- 给 Pi 做扩展时，以 TDD（测试驱动开发）方式驱动：先写测试，再写实现 / When building Pi extensions, drive development with TDD: write tests first, then implement

## 代码审查 / Code Review

- 审查报告整理为编号列表，便于后续引用 / Present all findings as a numbered list for easy reference
- PR 评论反馈先用中文解释，再执行代码操作 / Explain PR review feedback in Chinese before making any code changes
- 检查合并目标是否为 `main`；若不是，指出 diff 可能含无关变更 / Check if merge target is `main`; if not, flag possible unrelated changes in the diff
- 只关注 PR 引入的变更，忽略既存问题 / Focus only on changes introduced by this PR; ignore pre-existing issues
- 审查结束后询问："是要依次处理，还是指定处理？" / After review, ask: "Handle in order, or pick specific items?" — if user chooses in-order, first present the next item's content and wait for confirmation before making any changes; after resolving, present the next item the same way, one at a time
