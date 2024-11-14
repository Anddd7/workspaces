module.exports = {
    disableEmoji: false,
    format: '{emoji}{type}{scope}: {subject}',
    list: ['feat', 'fix', 'docs', 'test', 'refactor', 'style', 'ci', 'perf', 'misc'],
    maxMessageLength: 64,
    minMessageLength: 3,
    questions: ['type', 'scope', 'subject'],
    scopes: [],
    types: {
        misc: {
            description: 'Build process or auxiliary tool changes',
            emoji: '🍺',
            value: 'misc'
        },
        ci: {
            description: 'CI related changes',
            emoji: '🤖',
            value: 'ci'
        },
        docs: {
            description: 'Documentation only changes',
            emoji: '📝',
            value: 'docs'
        },
        feat: {
            description: 'A new feature',
            emoji: '✨',
            value: 'feat'
        },
        fix: {
            description: 'A bug fix',
            emoji: '🐛',
            value: 'fix'
        },
        perf: {
            description: 'A code change that improves performance',
            emoji: '⚡️',
            value: 'perf'
        },
        refactor: {
            description: 'A code change that neither fixes a bug or adds a feature',
            emoji: '💡',
            value: 'refactor'
        },
        release: {
            description: 'Create a release commit',
            emoji: '🔖',
            value: 'release'
        },
        style: {
            description: 'Markup, white-space, formatting, missing semi-colons...',
            emoji: '💄',
            value: 'style'
        },
        test: {
            description: 'Adding missing tests',
            emoji: '🧪',
            value: 'test'
        },
        messages: {
            type: 'Select the type of change that you\'re committing:',
            customScope: 'Select the scope this component affects:',
            subject: 'Write a short, imperative mood description of the change:\n',
            body: 'Provide a longer description of the change:\n ',
            breaking: 'List any breaking changes:\n',
            footer: 'Issues this commit closes, e.g #123:',
            confirmCommit: 'The packages that this commit has affected\n',
        },
    }
};
