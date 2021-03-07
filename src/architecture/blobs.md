# Blobs

Blobs are binaries representing file contents. They are not associated
with any particular file name or any other attribute.

## Hash of a Blob

The hash is from a 'blob' keyword, followed by a space character,
the of the contents in bytes,
a [NULL](https://en.wikipedia.org/wiki/Null_character) character
and the file contents itself.
That is to decrease possibility of hash collision with different
types of objects.
The most obvious one would be an empty blob with an
empty [tree](trees.md).

```bash
echo -e -n 'blob 12\0BLOB_CONTENT' | shasum -a 1
# >>> 00a14d9c528be7b35cdcbe1915648d0c06bfc945 -
```

```bash
echo -n 'BLOB_CONTENT' | git hash-object --stdin
# >>> 00a14d9c528be7b35cdcbe1915648d0c06bfc945
```
