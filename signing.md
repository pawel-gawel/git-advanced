# Signing

In Git you can sign your work - specifically one single commit - using pre-generated GPG key. Signing single commit is, by block chain nature of Git, sufficient to recognize whole branch as signed and with verified origin.

## Generate GPG key

> On Mac you will have to explicitly install gpg package 
>
> `brew install gpg-agent pinentry-mac`

First, check if you have any GPG key already installed 

```
gpg --list-keys
```

If not you can generate one

```
gpg --gen-key
```

or 

```
gpg --full-generate-key
```

## Configuration 

Tell Git which of your private keys should be used by default to sign things 

```
git config user.signingkey <KEY>
```

Additionaly you can enable auto-signing 

```
git config commit.gpgsign true
git config tag.gpgsign true

```

## Signing things

Annotated tag created by command below will be signed with preconigured GPG key

```
git tag -s tag-name -m "tag message"
```
To sign a commit 

```
git commit -S -m "commit message"
```

You will be then asked to enter your passphrase. 

# Verifying 

To verify object you must have one's public key added to your keychain. 

To verify tag 

```
git tag -v <TAG>
```

To verify commit 

```
git log --show-signature <SHA>
```

To avoid merging non-signed branches 

```
git merge --verify-signatures <BRANCH>
```
## Add GPG public key to GitHub Account

By doing this, whenever you push changes signed by this key, you will get *Verfied* badge next to signed objects.

Copy your key to clipboard 

```
gpg --armor --export <KEY> | pbcopy
```
You can get it from Git configuration (if you followed configuration steps above)

```
gpg --armor --export $(git config user.signingkey) | pbcopy
```

Go to `GitHub -> Settings -> SSH and GPG keys -> New GPG key` and add your key.

---

https://git-scm.com/book/id/v2/Git-Tools-Signing-Your-Work

https://jasonrogena.github.io/2016/09/14/osx-signing-off-git-using-gpg.html

https://help.github.com/articles/adding-a-new-gpg-key-to-your-github-account/