# Commits

Commits represent snapshots of [working trees](./working_tree.md) 
alongside information who and when authored its contents (author) and 
who and when created the commit (committer). These two roles are 
independend as in some workflows they may be independend entities. 
For example very often in community driven, open source projects, 
contributors submit their commits, then the repository maintainer
reviews it and if accepted, eventually incorporates it into the 
default branch. If this is done by rebasing, the author is preserved
but commiter will be changed to the maintainer. 
Another important information stored in a commit is its parents. 
This piece of data allows to retrospect the history of changes and 
provides hints for a lot of commands on how to operate. Commits can
have none, one, or more parents. Commits without parents are called
root commits and represent the beginning of change history. Commits with
more that one parent are called merge commits and are used for 
converging change histories of multiple branches.

## Syntax

```handlebars
tree {{tree_hash}}
parent {{parent_commit_hash}}
author {{author_name}} <{{author_email}}> {{posix_time}} {{time_zone_offset}}
committer {{committer_name}} <{{committer_email}}> {{posix_time}} {{time_zone_offset}}

{{message}}
```

## Example

```plaintext
tree e537d69391edaa36634e9a92d8083c6c7a34dad3
parent a7e6510fad6c4a3df55777082d75c33fc5be41fa
author Bob <bob@example.com> 1615060615 +0100
committer Alice <alice@example.com> 1615061025 +0300

feat(auth): Implement basic authentication
```
