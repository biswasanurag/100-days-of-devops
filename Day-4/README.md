# Introduction

Script Execution Permissions

# Why it is needed?

## 🔒 The Need for Explicit Execution Permission

Here’s why this step is necessary:

**Security by Default:** When a file is created (especially if it's a new file copied or downloaded), the system typically does not automatically grant executable permission as a security measure. This prevents accidental execution of data files or malicious scripts. A script file might just be treated as a plain text document until you explicitly mark it as executable.

**The Linux File Permissions Model:** Every file in Linux has an associated set of permissions for three user categories:

1. User (Owner)
2. Group
3. Others (Everyone else)

And three permission types:

1. r (Read)
2. w (Write)
3. x (Execute)

**Script Execution Requirement:** For the shell (like Bash) to run a file as a program or a script, the file must have the execute (x) permission set for the user attempting to run it. If the x permission is missing, attempting to run the file (e.g., with ./xfusioncorp.sh) will result in a "Permission denied" error, even if you can read the file's contents.

**Meeting the Requirement:** The task specifically requires that the script be executable by all users on App Server 2, meaning the permissions must be set for the User (owner), Group, and Others categories. The command chmod a+x achieves this by adding the execute bit to all categories (a for all).

This process ensures the script can run as intended while maintaining the operating system's strict security controls.
