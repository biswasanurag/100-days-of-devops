# Introduction
Linux user setup with non-interactive shell

# Why it is needed?
Using a non-interactive shell for a user is a crucial security practice for system and service accounts. This limits potential damage by preventing human users from logging into and directly executing commands on accounts intended only for automated processes.

# Primary reasons for using a non-interactive shell
## Security
**Preventing human login:** System accounts, such as www-data or postgres, are created by applications and are not meant for a human administrator to log into directly. Assigning a non-interactive shell like /sbin/nologin or /bin/false to these accounts prevents any person from using them to gain a command prompt on the system.

**Limiting potential damage:** If a service account is compromised, a non-interactive shell ensures that an attacker cannot use that account to browse the file system, install malicious software, or execute arbitrary commands. The account will only be able to perform the specific, limited actions it was designed for.

**Restricting privileges:** A dedicated service account with a non-interactive shell can be granted only the minimum necessary privileges to perform its job. For example, a "backup" user might have read-only access to certain directories but no other permissions, which significantly reduces the potential attack surface. 

## Automation and system processes
**Running automated tasks:** Cron jobs, scheduled backups, and other automated maintenance tasks are often run by a system account with a non-interactive shell. The system logs in and executes the command or script on the account's behalf, but no human intervention is needed or allowed.

**Executing scripts safely:** When a shell script is executed, it runs in a non-interactive subshell. This ensures the script executes without waiting for or accepting any human input, making it ideal for background and batch operations.

**Separating user from process:** For multi-user systems, non-interactive shell accounts help clearly delineate system processes from human user sessions. This makes it easier to monitor and audit system activities. 

## System stability
**Preventing misconfigurations:** Since no human can log in and issue commands, a non-interactive shell prevents the account's environment from being accidentally altered. This ensures that the automated process that relies on the account will not be affected by manual changes.

**Reliability for background services:** Services that run in the background (such as a web server, database, or email agent) depend on their designated user to function correctly. A non-interactive shell guarantees that the account is used only for its intended purpose, preventing interference that could disrupt the service.
