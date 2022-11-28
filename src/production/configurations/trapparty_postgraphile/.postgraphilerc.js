const fs = require('fs');

module.exports = {
    options: {
        connection: fs.readFileSync('/run/secrets/trapparty_postgraphile_connection', 'utf8'),
        defaultRole: 'trapparty_anonymous',
        enhanceGraphiql: true,
        host: '0.0.0.0',
        ignoreRBAC: false,
        ownerConnection: fs.readFileSync('/run/secrets/trapparty_postgraphile_owner-connection', 'utf8'),
        schema: ['trapparty'],
        watch: true
    },
};
