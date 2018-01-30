# Protocols

## Local Protocol

When remote repository is in another directory on disk (useful in case users have shared mounted filesystem like NFS).

```
git clone /opt/git/project.git
# or 
git clone file:///opt/git/project.git
```

*Pros:*
 - simple
 - quick
 - use existing file permissions and network access

*Cons:*
 - shared access is generally more difficult to set up and reach from multiple locations than basic network access
 - doesn't have to be necessarily the fastest option

## HTTP Protocols

### Smart HTTP

> Version 1.6.6 and above

Operates very similarly to the SSH or Git protocols but runs over standard HTTP/S ports and can use various HTTP authentication mechanisms.

*Pros:*
 - simplicity of having a single URL for all types of access
 - having the server prompt only when authentication is needed
 - very fast and efficient protocol
 - commonly used and firewall-friendly

*Cons:*
 - more difficult to set up than SSH protocol
 - needs manual authentication (oppsosite to SSH keys)

### Dumb HTTP

> Prior to Git 1.6.6

Read-only access. Novadays used as a fallback protocol in case Git server does not respond with a Git HTTP smart service.
Very easy to set up - Basically, all you have to do is put a bare Git repository under your HTTP document root and set up a specific post-update hook, and you’re done.

## SSH Protocol

```
git clone ssh://user@server/project.git
# or 
git clone user@server:project.git
```

*Pros:*
 - easy to set up 
 - secure access
 - can use SSH keys for authentication
 
*Cons:*
 - can’t serve anonymous access to repository

## Git Protocol

Special daemon that comes packaged with Git. It listens on a dedicated port (9418) that provides a service similar to the SSH protocol, but with absolutely no authentication. 
To use it, special file `git-daemon-export-ok` needs to be created in the repository.
Generally, you’ll pair it with SSH or HTTPS access for the few developers who have push (write) access and have everyone else use git:// for read-only access.

*Pros:*
 - often the fastest network transfer protocol available
 
*Cons:*
 - lack of authentication
 - enabling pushing has no sense, as with no authentication anyone could push to the repo
 - most difficult to set up



---

https://git-scm.com/book/id/v2/Git-on-the-Server-The-Protocols
