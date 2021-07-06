# HEAD

HEAD is a pointer which determines which point of the history the local
file system should reflect. HEAD can point at a commit either directly
or indirectly, through [references](./references.md).
When [commits](./commits.md) are created, the their 
parents are set to whatever HEAD was referencing at the time of their
creation.

---

```mermaid
graph TD
  HEAD --> head1>feature1] --> commit1(a7e6510fad6c4a3df55777082d75c33fc5be41fa)
  style HEAD fill:#ff00ff,stroke:#666,stroke-width:4px
  style head1 fill:#00ffff,stroke:#666,stroke-width:2px
  style commit1 fill:#ffff00,stroke:#666,stroke-width:1px
```

---

```mermaid
graph TD
  HEAD --> head1>feature1] --> commit2(da39a3ee5e6b4b0d3255bfef95601890afd80709) --> commit1(a7e6510fad6c4a3df55777082d75c33fc5be41fa)
  style HEAD fill:#ff00ff,stroke:#666,stroke-width:4px
  style head1 fill:#00ffff,stroke:#666,stroke-width:2px
  style commit1 fill:#ffff00,stroke:#666,stroke-width:1px
  style commit2 fill:#ffff00,stroke:#666,stroke-width:1px
```

---

## Detached HEAD

When the HEAD does not point at any of heads, it is in a detached state.
What that means is that when commits being created, they are not
associated with any head. If one switches to another point of history
without creating one (or [tagging](./references/tags.md) it), 
these commits will not be addressable in any other way than by their 
40-digit long hash. Additionally, due to git clients optimisation, they
may be subject for garbage collecting and disappear completely at some
point of time.

---

```mermaid
graph TD
  HEAD --> commit1(a7e6510fad6c4a3df55777082d75c33fc5be41fa) 
  head1 --> commit1 
  style HEAD fill:#ff00ff,stroke:#666,stroke-width:4px
  style head1 fill:#00ffff,stroke:#666,stroke-width:2px
  style commit1 fill:#ffff00,stroke:#666,stroke-width:1px
```

---

```mermaid
graph TD
  HEAD --> commit2(da39a3ee5e6b4b0d3255bfef95601890afd80709) --> commit1(a7e6510fad6c4a3df55777082d75c33fc5be41fa) 
  head1 --> commit1 
  style HEAD fill:#ff00ff,stroke:#666,stroke-width:4px
  style head1 fill:#00ffff,stroke:#666,stroke-width:2px
  style commit1 fill:#ffff00,stroke:#666,stroke-width:1px
  style commit2 fill:#ffff00,stroke:#666,stroke-width:1px
```

---
