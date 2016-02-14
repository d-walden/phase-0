## 1.5 Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes.
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

Tracking changes is useful because it allows developers to keep track of the revision history of files. A commit is a save point in version control. A user will identify which files have been modified and save the changes as a commit. Commit messages should read like commands (use the imperative.) They should identify which files have been changed and what changes were made.

`HEAD^` is the last commit.
`git rest –soft HEAD^` will revert your repository back to the commit before the one you are currently on.

The first stage of git change is to create a working branch and make your changes there. When the desired changes have been made, prepare them for the commit by using the `git add` command. After staging the changes you want to keep, use `git commit –m “message”` to save them as a commit.

`git add` and `git commit –m “message”` are the two commands needed to commit your changes.

A pull request is a tool that allows developers to exchange and review each other’s code before changes are merged into a master branch. To create a pull request you must first push your branch to the remote GitHub repository. The pull request can then be merged by following the instructions on GitHub.

Teams prefer using pull requests because multiple people can make changes and merge branches at the same time. It forces developers to review changes before they are merged, and it allows other people to look at the changes before they are applied.
