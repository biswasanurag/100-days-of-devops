# Introduction

Secure Root SSH Access

# Why it is needed?

The need to disable direct SSH root login stems from security best practices to protect a Linux server from remote attacks.

Here is a breakdown of why this measure is essential:

## 🛡️ Primary Security Reasons

**1. Mitigation Against Brute-Force Attacks**
The root username is universal and known on all Linux systems. An attacker attempting a brute-force attack (repeated, automated password guesses) only has to guess one thing: the password.

By disabling direct root login, attackers must first successfully guess a standard user's name and that user's password, which dramatically increases the complexity of the attack and lowers the success rate.

**2. Accountability and Auditing**
When a non-root user logs in and then uses sudo (Substitute User Do) or su (Switch User) to elevate privileges, the system records who (the initial user) performed the action.

If a team shares the root password and logs in directly as root, it becomes difficult, if not impossible, to determine which specific person was responsible for any changes or errors, compromising the audit trail.

**3. Reducing the Risk of Error**
The root user has the highest privileges and can execute any command, including those that can instantly and permanently damage the operating system (e.g., deleting critical system files).

Forcing administrators to log in as a standard user and consciously use sudo serves as a mental checkpoint, reducing the chance of accidentally running destructive commands with full privileges.

**4. Enforcing SSH Key Authentication**
While PermitRootLogin no disables all root login, a common alternative configuration is often used: PermitRootLogin prohibit-password.

This setting specifically disables password-based root login while still allowing root login via SSH keys. This is still more secure than passwords, as keys are nearly impossible to brute-force. However, setting it to no is the ultimate security measure, requiring all privileged work to go through a standard, identifiable user.
