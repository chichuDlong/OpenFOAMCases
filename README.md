# OpenFOAMCases
基于典型算例介绍 OpenFOAM 相关操作方法。

---
## 001_cavity
1. 添加边界层进行网格局部加密；
2. 添加残差曲线对计算变量实时监测。

---
## 002_karman
以常见圆柱扰流为例说明第三方网格文件如何导入 OpenFOAM，对 OpenFOAM 并行计算进行简要示范。

---
## 004_karman2
OpenFOAM 自带网格划分 snappyHexMesh 全面，但是仅能作用于 3D 网格，本例介绍了 extrudeMesh 的使用方法，配合 snappyHexMesh 能够将 3D 网格转换为 2D 网格，这里以卡门涡街进行简要介绍。 

---
## 005_bubble
1. 介绍 topoSetDict 的基本使用方法；
2. 介绍 createPatchDict 的基本使用方法；
3. 介绍简单两相流的实现。

---
## 006_bubble2
基于 005_bubble 实现 topoSet createPatch 的新使用方法。

---
## 007_bubble3
基于 006_bubble2 实现自适应网格加密。
