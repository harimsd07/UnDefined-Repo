---
share_link: https://share.note.sx/qe7cxpe7#9qfYn6YNEMzbK6S9DUZDVbGlzMbC3ybFnyAmvxABgmk
share_updated: 2025-04-12T21:43:17+05:30
---
https://share.note.sx/fte6m26d#AnRiEpk+STQeEN46kDTjE+AsGrFFefxkfwcfCYLbvpY 

`Posting project to github` 
```

`git init`

`git add .
`
 `git commit -m "some mesage for initial commiting"
 `
`git remote add origin "git url / ssh url"
`
`git remote set-url origin "git url / ssh url" used to change the URL of an existing remote repository in your local Git project`

 `git push origin master/main.`
```

notes

things to remember  
1.we should never commit on main branch

1. check out this site (https://learngitbranching.js.org/)

example  
in the wedding every guest takes a photo with the couple which will later get stored in the album like the history of wedding pictures. this is the scenario

1.git init - this is the command used to store the history of the floder.it consist of history data like adding,deleting, modifications of the file present in the github.

it generate the floder names ".git"  

![](https://share.note.sx/file/notesx/files/64wmqweaa7fzczaw349e.png)

2.git status - it is command used to check the status of the files which is not yet saved in the history .

3.git add . - this is the command used to make the file getting ready for stage

4.git commit -m "message required"

![](https://share.note.sx/file/notesx/files/g1ywp9h2kwc7z53n5u1p.png)

after using the command  
5.git restore --staged "file name"  
![](https://share.note.sx/file/notesx/files/h728j707kto6dt9v9uqc.png)  
6.next git log - command show as the history of file ,but it require a package named less try install using "sudo pacman -S less"

![](https://share.note.sx/file/notesx/files/wvumzwrgi1cbqxvh4zpf.png)  
7.git reset "hash value" - is help to reset the change we have made . for example if i delete a file unknowningly means it can be bring back to life

![](https://share.note.sx/file/notesx/files/bw42n8czc9yes6jfic3b.png)

8.git stash - is the command used to hide the file until we need . its history are not involved in the file until we reuse it

		The purpose of `git stash pop` is to reapply changes from a stash and remove the stash from the stash list. It applies the changes from the specified stash to your working directory and then deletes that particular entry from the stash list, making it different from `git stash apply`, which applies the stash but keeps it in the stash list.

![](https://share.note.sx/file/notesx/files/ujhcwlp9via7hjrgi5mh.png)  
10.git stash pop  

![](https://share.note.sx/file/notesx/files/mzbkcs46th8o6fasdi52.png)

11.git stash clear

12.git remote add origin "github url" here remote is mentioning that we are working with urls,  
add means we are adding new urls and origin is the name of the url

this command is used to make the connection with our project floder

13.git branch "name of the branch" - this is used to create the new brach in out github

14.git checkout "branch name" - this is used to change the position og head from main branch to its respective branch name mentioned it the command

15. git checkout -b "name of the branch " this can do above function in single command

the below segment expalin about making pull request and merging it to the main project file

Let's break down how to make a pull request (PR) in a simple, step-by-step way. Think of a PR as a way to suggest changes to a project and ask the project maintainers to incorporate them. This explanation assumes you're using a platform like GitHub, GitLab, or Bitbucket, which all have similar workflows.

**1. Fork the Repository (One Time Only)**

- If you don't have write access to the main project's repository, you need to create your own copy (a "fork"). This is like making a copy of the project you can safely modify.
- On the platform (GitHub, GitLab, etc.), find the "Fork" button on the project's page and click it. This creates a copy of the repository in your account.

**2. Clone Your Fork to Your Computer**

- Now, you need to get that forked repository onto your own computer so you can work on it.
- Find the "Clone" button on _your forked repository's_ page. Copy the provided URL (it will usually end in `.git`).
- Open your terminal or command prompt and navigate to the directory where you want to store the project.
- Type `git clone <the URL you copied>` and press Enter. This downloads the project to your computer.

**3. Create a Branch for Your Changes**

- It's crucial to create a separate "branch" for each set of changes you want to make. This keeps your changes organized and prevents conflicts.
- In your terminal, navigate to the project directory you just cloned.
- Type `git checkout -b <your_branch_name>` and press Enter. Replace `<your_branch_name>` with a descriptive name (e.g., `fix-bug-123`, `add-new-feature`).

**4. Make Your Changes**

- Now the fun part! Open the project files in your code editor and make the changes you want to contribute.

**5. Stage and Commit Your Changes**

- After making your changes, you need to tell Git which changes you want to include in your pull request.
- Type `git add .` (this adds all changes – use with caution, review changes before adding), or `git add <specific_file>` (if you only want to add certain files) and press Enter.
- Then, type `git commit -m "A short, descriptive message about your changes"` and press Enter. The message should clearly explain what you've done.

**6. Push Your Branch to Your Fork**

- Now, you need to upload your changes from your computer to your forked repository on the platform.
- Type `git push origin <your_branch_name>` and press Enter.

**7. Create the Pull Request**

- Go back to the original project's page on the platform (GitHub, GitLab, etc.).
- You should see a notification that your branch has been pushed. There will be a button or link that says something like "Compare & pull request" or "Create Merge Request." Click it.
- You'll be taken to a page where you can review your changes and create the pull request.
- Make sure the base repository (the original project) and the base branch (usually `main` or `develop`) are correct.
- Write a clear and detailed description of your changes. Explain _why_ you made the changes and what they accomplish.
- Click the "Create Pull Request" or "Create Merge Request" button.

**8. Review and Discussion**

- The project maintainers will now be notified of your pull request.
- They'll review your changes, and there might be a discussion about the code. Be prepared to answer questions and make further changes if requested.

**9. Merging (by Maintainers)**

- Once the maintainers are happy with your changes, they will merge your branch into the main project. You don't usually do this yourself.

**Key Git Commands Recap:**

- `git clone <url>`: Copies a repository.
- `git checkout -b <branch_name>`: Creates and switches to a new branch.
- `git add <file>` or `git add .`: Stages changes.
- `git commit -m "message"`: Commits changes with a message.
- `git push origin <branch_name>`: Uploads changes to your forked repository.

That's it! Making pull requests is a fundamental part of contributing to open-source projects and collaborating with others. It might seem a bit complicated at first, but it gets easier with practice.

![](https://share.note.sx/file/notesx/files/m9tgbfy4o5rpaqiyizwu.png)

this is get after push to origin from the account that has forked code

![](https://share.note.sx/file/notesx/files/b2dkfn6w9qczia6kfx7e.png)

![](https://share.note.sx/file/notesx/files/a4s2woohkv90fuwlm40t.png)  
here i make the pull request to the main account

in the main account i have recieved the notification for pull request

![](https://share.note.sx/file/notesx/files/xopfotd9nktbmyp3zs49.png)

and finally the owner of the main account need to merge it

![](https://share.note.sx/file/notesx/files/x8sfyoha6h4lqk9stpnw.png)

after the merging we have done changes in the README.md file

![](https://share.note.sx/file/notesx/files/y4rjobcff3nean5m0vqv.png)




## Fetching branches 

# 

List GitHub Branches

To list branches in a GitHub repository, you can use several Git commands. First, ensure you have the latest information from the remote repository by running:

```
git fetch --all
```

This command downloads the metadata about all branches on the remote, ensuring the output is complete.23

To list all branches, including both local and remote branches, use:

```
git branch -a
```

This command outputs a list of all branches in the remote repository, preceded by the name of the remote that contains the branches.23

Alternatively, to list remote branches only, use:

```
git branch -r
```

This command displays branches that exist on the remote repository.3

For more detailed information, including the latest commit hash and commit message for each branch, use:

```
git branch -r -v
```

This command shows the remote name, branch name, latest commit hash, and the latest commit message for each branch.23

To list all references in a remote repository without cloning it, use:

```
git ls-remote [remote_name_or_URL]
```

Replace `[remote_name_or_URL]` with the name of the remote repository if it has been added, or with the URL of the repository if you have not added it yet. The first column of the output shows the SHA-1 ID of the specified Git object the reference points to, and the second column is the name of the reference.3


# 

## Delete GitHub Branch

To delete a branch in GitHub, you can follow these steps:

1. **Delete a Local Branch**: Use the command `git branch -d <branch_name>` to delete a local branch. If you want to force delete a local branch, use `git branch -D <branch_name>`.235+1
    
2. **Delete a Remote Branch**: Use the command `git push origin --delete <branch_name>` to delete a remote branch.235+1
    

Alternatively, you can delete a remote branch directly from the GitHub web interface:

- Navigate to the main page of the repository.
    
- Click on the "Branches" tab.
    
- Find the branch you want to delete and click the "Delete" button next to it.9
    

If you delete a remote branch using the command line, the local tracking branch will also be removed. If you delete a remote branch through the GitHub web interface, the local tracking branch will not be deleted automatically