# Architecture

```mermaid
graph TD
  subgraph objects
    subgraph blobs
      blob1(file1 content)
      blob2(file2 content)
      blob3(new file1 content)
    end
    subgraph trees
      tree1(file1)
      tree2(dir1<br>file1)
      tree3(file2) 
      tree4(dir1<br>file1)
      tree1 ---->|file1| blob1
      tree2 ---->|file1| blob1
      tree2 -->|dir1| tree3
      tree3 ---->|file2| blob2
      tree4 ---->|file1| blob3
      tree4 -->|dir1| tree3
    end
    subgraph commits
      commit1(creates file1) 
      commit2(creates dir1 with file1 inside) 
      commit3(modifies the file1 content) 
      commit2 ==> commit1
      commit3 ==> commit2
      commit1 ----> tree1
      commit2 ----> tree2
      commit3 ----> tree4
    end
  end
  subgraph refs
    subgraph heads
      head1>master] ----> commit2 
      head2>feature1] ----> commit3
    end
    subgraph tags
      tag1>v0.1.0] ----> commit1 
      tag2>v0.2.0] ----> commit2
      tag3>v0.3.0] ----> commit3
    end
    subgraph remotes
      remote1>origin/master] ----> commit1
    end
  end
  HEAD ----> head1 

  style blobs fill:#7FF
  style commits fill:#FF7
  style heads fill:#7A7
  style remotes fill:#A77
  style tags fill:#777
  style trees fill:#77A
```

