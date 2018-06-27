# Commits Granularity

You had to ask yourself this question at some point: how often I should commit?

The answer is: often.

Why? Because you can. Because it allows you to incrementally introduce new changes that should be nicely encapsulated by your commits. Also because it is a local operation. Until you push there is nothing distributed in what you do, its only hitting "save" while crossing next game levels. 

But how to commit. You want to apply OOP principles to your git routine, such as Single Responsibility Principle, that goes along with decoupling of your changes. 

Single commit is a single declaration of your ammendments. If you find yourself using in your commit messages `and` word, comma, bullet points, if your commit messages can't be summarized in one short sentence - that means you are committing not often enough. That means that your commits carry changes related to more than thing, one logical concept. Those kind of commits are bad if you find yourself in the situation when you need to revert part of your work or apply it precisely in a different place. Not encapsulating your singular changes in separate commits will make your and your teams life miserable. It will not be that obvious straight away but just wait for that first unevitable moment of "I think I f*cked up guys, we need to revert some sh*t". And there it will be - sh*t everywhere. This will be that moment when not keeping discipline will bite you back. 

Of course, its damn hard to be disciplined like that. But git provides tools to aid you with that. Consider using `git add -p` for example. This is a lifesaver when you just can't work on one thing at once and suddenly you have a multitude changes in different files in different contexts.

One of the biggest values of repository is its history. It allows you to step back in time and travel through epochs of your application lifespan, checking out every single point in time to inspect how your application evolved or to look for bugs that sneaked into your codebase during development process. 

Let's assume that we were granular enough. When introducing your changes to the main trunk you like to clean up after yourself and keep as simple history as possible. You squash your branch and rebase it on master. What you're doing that way is a deadly sin. 
First of all you destroy all the history of your changes on that particular branch. Why would you do that? There is no one sain reason to do that. You don't like messy history? Please relate to searching-commits.md for more elaborated text on that.
Second thing is, you're missing an opportunity to pmark the point when your new feature met with the main trunk. There is no merging, there is no merge commit telling you that those branches became one from that particular point of time. Merge commits are your best friends. They are beautiful milestones, presenting you with summary of what happened during branch lifespan and introducing all the changes from branch as an atomic operation. It means that merge commit will have its own state of your codebase, it will hold 3-way difference between branches and their common merge base. From this point of view it will behave like a squash/rebase. Additionally it will save your branch history and describe the process in proper words - as a merge commit message.



