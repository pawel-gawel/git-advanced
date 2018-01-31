# The seven rules of a great Git commit message

1. Separate subject from body with a blank line
   > that is interpreted by Git in number of situations - `git format-patch` will build email with  Subject and Body, `git log --oneline` will use Subject line, `git shortlog`
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
   > unnecessary and takes precious char space
5. Use the imperative mood in the subject line
   > like all the points defined in this list; Git itself uses imperatives (merge, revert);
   > A properly formed Git commit subject line should always be able to complete the following sentence: *If applied, this commit will _your subject line here_*
6. Wrap the body at 72 characters
   > Git never wraps text automatically
7. Use the body to explain what and why vs. how

---

https://chris.beams.io/posts/git-commit/