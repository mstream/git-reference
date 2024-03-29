# Plumbing Commands

## cat-file

Provides information regarding repository objects such as their type,
content and size.

### Examples

```bash
git cat-file --batch-all-objects --batch
# >>> f7e2dd07890b1a49d80705230e43ca8420439887 blob 10
# >>> My project
```

## commit-tree

Creates a new commit object.

### Examples

```bash
git commit-tree -m "COMMIT_MESSAGE" 6dabf49129f970f089cb7ef94fa53609a6a2815f
# >>> 9d697bc9a410749ac0e9acdb3f6361d3c9af5fa4
```

## hash-object

Calculates an object hash from a file or the standard input.
Optionally saves it alongside the object in the git database.

### Examples

```bash
echo "BLOB_CONTENTS" | hash-object --stdin -w
# >>> b9bb0bbb048fcfb90a6f879bd512b8548a9e576b
```

```bash
echo "100644 blob b9bb0bbb048fcfb90a6f879bd512b8548a9e576b README.md" | git hash-object --stdin -w
# >>> d8d7682b815204740964f2ab1c82bb3df7dfe195
```

## update-ref

Updates a reference value safely.

### Examples

```bash
git update-ref refs/heads/master 9d697bc9a410749ac0e9acdb3f6361d3c9af5fa4
```

## write-tree

Creates a tree object based on the current index contents.

### Examples

```bash
git write-tree
# >>> 6dabf49129f970f089cb7ef94fa53609a6a2815f
```
