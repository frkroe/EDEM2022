# Git Commands


0. IDENTIFY: Sets the name and email address that will be attached to commits made in the current repository:
```bash
git config --global user.name "<name>"
git config --global user.email "<email>"
```
Please note: This is necessary to do only once. The --global flag sets the configuration for all repositories on the current computer. If you want to set the configuration for only the current repository, omit the --global flag.
1. INIT: Initializes a new Git repository in the current directory:
```bash
git init
```

2. CLONE: Creates a local copy of a remote repository:
```bash
2. git clone <repository>
```

3. ADD: Adds a file or changes to the staging area:
```bash
3. git add <file>
```
4. COMMIT: Saves the changes in the staging area to the Git repository with a descriptive message:
```bash
git commit -m "<message>"
```
5. STATUS: Displays the current status of the Git repository, including any untracked, modified, or staged files:
```bash
git status
```
6. PUSH: Uploads local commits to a remote repository:
```bash
git push
```
7. PULL: Updates the local repository with the latest changes from the remote repository:
```bash
git push origin <branch>
```
8. BRANCH: Lists all the branches in the repository:
```bash
git branch
```
9. CHECKOUT: Switches to a different branch:
```bash
git checkout <branch>
```
10. MERGE: Combines the changes from one branch into another branch:
```bash
git merge <branch>
```
Please note: The branch that is put into the merge command will be merged into the current branch.

11. REMOTE: Adds a new remote repository with a given name and URL:
```bash
git remote add <name> <url>
```
12. LOG: Displays a history of commits in the repository:
```bash
git log
```
13. RESET: Undoes commits by moving the branch pointer to a previous commit:
```bash
git reset <commit>
```
14. STASH: Saves changes that are not ready to be committed, allowing you to switch to a different branch:
```bash
git stash
```
15. PULL REQUEST: Initiates a pull request on a hosting platform like GitHub or GitLab to merge changes from one branch to another:
```bash
git pull request
```
