# aspace-deployment

Settings per environment to override defaults and configure plugins. Should
contain functionality-related configuration only. Do not include:

- plugins list (`AppConfig[:plugins]`)
- system settings (`AppConfig[:db_url]` etc.)
- secrets

If a setting needs to be secret (e.g., an api key for a plugin) then use an ENV
reference, e.g., `ENV.fetch('SUPER_SECRET_SETTING', nil)`. The secret will be
managed separately and deployed at runtime.
