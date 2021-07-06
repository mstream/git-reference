# Merging

```bash
git merge feature1
```

## Fast forward

```mermaid
gitGraph:
options
{
    "nodeLabel": {
        "width": 75,
        "height": 200,
        "x": -25,
        "y": -10
    }
}
end
commit
branch feature1
checkout feature1
commit
```

## Merge commit

```mermaid
gitGraph:
options
{
    "nodeLabel": {
        "width": 75,
        "height": 200,
        "x": -25,
        "y": -10
    }
}
end
commit
branch feature1
checkout feature1
commit
checkout master
commit
checkout feature1
checkout master
```
