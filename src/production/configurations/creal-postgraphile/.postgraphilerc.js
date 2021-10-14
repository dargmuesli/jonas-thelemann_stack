const fs = require('fs');

module.exports = {
    options: {
        connection: fs.readFileSync('/run/secrets/creal-postgraphile_connection', 'utf8'),
        defaultRole: 'creal_anonymous',
        host: '0.0.0.0',
        ignoreRBAC: false,
        ownerConnection: fs.readFileSync('/run/secrets/creal-postgraphile_owner-connection', 'utf8'),
        schema: ['creal'],
        watch: true
    },
};
