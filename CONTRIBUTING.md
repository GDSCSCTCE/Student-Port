# How to Contribute?

We invite you to join the Sct-lab team, an initiative of opensource enthusiasts like you, to contribute. This includes writing code, filing issues on GitHub, helping people 
fix bugs that others have filed, adding to our documentation, doing outreach about Sct-Lab and GDSC-SCTCE, or helping out in any other way.

We grant commit access (which includes full rights to the issue
database, such as being able to edit labels) to people who have gained
our trust and demonstrated a commitment to this project.
1. Take a look at the existing Issues or create a new issue! 
2. Fork the Repo. Then, create a branch for any issue that you are working on. Finally, commit your work.
3. Create a Pull Request(PR), which will be promptly reviewed and given suggestions for improvements by the community.

---

## Helping out with Issues
-----------------------

Sct-Lab is in the process of going through bug reports and determining if they are valid, finding out
how to reproduce them, catching duplicate reports, and generally making our issues list
useful for our engineers.

If you want to help us, you are very welcome to do so!

Read our [code of conduct](CODE_OF_CONDUCT.md), which stipulates explicitly
that everyone must be gracious, respectful, and professional. If you're helping out
with Sct-lab, you are representing the GDSC team, and so you want to make sure to
make a good impression!

One of the most useful tasks is finding and filing bug reports. Testing
beta releases, looking for regressions, creating test cases, adding to our test suites, and
other work along these lines can really drive the quality of the product up. Creating tests
that increase our test coverage, writing tests for issues others have filed, all these tasks
are really valuable contributions to open source projects.

We're especially eager for Q & A session when we announce a beta release.

If you want to contribute test cases, you can also submit PRs.


## How to make a Pull Request(PR):

**1.** Start by making a Fork of the repository. Click on the fork symbol at the top right corner.

**2.** Clone your new fork of the repository in the terminal/CLI on your computer with the following command:

```bash
git clone https://github.com/<your-github-username>/sct-lab
```

**3.** Navigate to the newly created sct-lab project directory:

```bash
cd sct-lab
```

**4.** Set upstream command:

```bash
git remote add upstream https://github.com/GDSCSCTCE/sct-lab.git
```

**5.** Create a new branch:

```bash
git checkout -b <YourBranchName>
```

**6.** Sync your fork or your local repository with the origin repository:

- In your forked repository, click on "Fetch upstream"
- Click "Fetch and merge"

**7.** Make your changes to the source code.

**8.** Stage your changes:

```bash
git add .
```

_or_

```bash
git add "<files_you_have_changed>"
```

**9.** Commit your changes:

```bash
git commit -m "<your_commit_message>"
```

**10.** Push your local commits to the remote repository:

```bash
git push origin <YourBranchName>
```

**11.** Create a [Pull Request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)!

**12.** **Congratulations!** You've made your first contribution to [**this repository**](https://github.com/GDSCSCTCE/sct-lab)!!

After this, the maintainers will review the PR and will merge it if it helps move the project forward. Otherwise, it will be given constructive feedback 
and suggestions for the changes needed to add the PR to the codebase.

---
