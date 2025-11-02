# Introduction

SElinux Installation and Configuration

# Different Types of SELinux mode

## SELinux Mode = Enforcing (The Strict Guard)

**What it does?**
The guard is fully active. He checks the ID and a specific rulebook for every single action. If an action is not on the approved list, he blocks it immediately and writes a detailed incident report.

**Default/Secure Mode:** A web server gets hacked. The attacker tries to read the password file. The Strict Guard says, "Wait, the rulebook only lets the web server talk about web files! DENIED!" The attack is stopped dead.

## SELinux Mode = Permissive (The Note-Taking Guard)

**What it does?**
The guard is active, loaded with the rulebook, but he's told not to block anyone. He watches every action and says, "That would have been a violation, but I'll let it pass this time," while logging the potential violation.

**Troubleshooting Mode:** You install a new database program. It's not working, but you don't know why. You switch to Permissive. The database runs, but the Guard logs, "The database tried to write to the wrong log folder." You check the log, see the problem, fix the folder's permissions, and switch back to Enforcing.

## SELinux Mode = Disabled (The Unplugged System)

**What it does?**
The guard is completely unplugged and inactive. No rules are checked, no reports are written. Only the basic door locks (Linux permissions) are left for protection.

**System Upgrade/Vendor Requirement:** A complex software vendor tells you their installation process is old and will definitely be blocked by the Guard. To get the new software installed without headache, you unplug the Guard entirely. You are less secure, but you get the job done quickly.
