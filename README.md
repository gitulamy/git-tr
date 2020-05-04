Git extension for trello
========================

You can mange your feature branches related with trello cards.

* RULE1: Every **branch name** should have **trello id**.
* RULE2: Every **commit message** should contain its related **trello card url**.


Installation
============

Clone the git repository or download zip file run install.sh

```bash
$ git clone https://github.com/gitulamy/git-tr.git
$ cd git-tr
$ bash ./install.sh
```

OR

```bash
$ curl https://codeload.github.com/gitulamy/git-tr/zip/master > git-tr.zip
$ unzip git-tr.zip
$ cd git-tr-master
$ bash ./install.sh
```

Usage
=====

(1) Initialization
------------------

This will ask you to set the base url of your web based repository for branches. We just use
this url as a prefix for the message of guide, not for accessing the content, so it will be ok
even if the repository is a private one.

And, more this will ask you to determine root branch name (as usually 'develop'), which is used for branching feature/hotfix.

```bash
$ git tr init

```

(2) Start feature branch
------------------------

You should have a trello card before creating a feature branch.
Let's pick an example trello card for out conversion.

> https://trello.com/c/AtX5el00/225-We-need-a-new-button-for-check

What we need is *the full url* of a card.

And invoke **git tr** with subcommand 'feature' (You can use only the first letter 'f' for quick)

```bash
$ git tr feature https://trello.com/c/AtX5el00/225-We-need-a-new-button-for-check
```

or simply

```bash
$ git tr f https://trello.com/c/AtX5el00/225-We-need-a-new-button-for-check
```

This will make a branch named as 'feature/AtX5el00' branching from develop branch which is set at init phase.

(3) Commit a changeset
----------------------

As long work to meet the requirement of the trello card, now you are about to commit a changeset.
(You can also 'c' instead of 'commit')

```bash
$ git tr commit
```

This will show up the editor with an commit template message, which contains the trello url.

```bash


https://trello.com/c/AtX5el00/225-We-need-a-new-button-for-check

# blah blah index and diff of the files.
```

(4) Push the branch to origin
-----------------------------

After finishing the works, now you are about to push the branch for making pull request, at this
moment, the origin repository doens't have your feature branch, and this will make a new branch.

```bash
$ git tr push
```
(You can also 'p' instead of 'push')

Be happy with trello card
