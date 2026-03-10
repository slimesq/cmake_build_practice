# cmake_build_practice

CMake 构建系统从入门到进阶的系统性学习实践代码库，按章节组织，覆盖 CMake 核心概念与高级特性。

## 项目结构

```
cmake_build_practice/
├── ch001/   # C 编译基础
├── ch003/   # CMake 脚本语法
├── ch004/   # CMake 内置命令
├── ch005/   # CMake 算法练习
├── ch006/   # 库的构建与使用
├── ch007/   # CMake 目标系统
├── ch008/   # 生成器表达式
├── ch009/   # CMake 模块系统
├── ch010/   # 版本兼容性
└── ch011/   # 综合实战项目（数字识别器）
```

## 章节说明

### ch001 — C 编译基础
从最基础的 C 程序编译入手，掌握编译工具链的核心概念：
- 单文件 Hello World 编译
- 静态库与动态库的构建与链接
- 多源文件程序的组织与编译
- 头文件库的使用
- 第三方库链接（Boost）
- 按需编译与间接引用

### ch003 — CMake 脚本语法
学习 CMake 脚本语言的基本语法要素：
- 变量定义与引用
- 列表操作
- 命令参数与命令定义
- 条件语法（if/elseif/else）
- 遍历循环（foreach/while）

### ch004 — CMake 内置命令
掌握 CMake 常用内置命令：
- `file` — 文件读写与路径操作
- `string` — 字符串处理
- `math` — 数学运算
- `list` — 列表操作
- `message` — 日志输出
- `configure_file` — 配置文件生成
- `execute_process` — 执行外部进程
- `cmake_path` / `get_filename_component` — 路径处理
- `include` / `variable_watch` / `separate_arguments`

### ch005 — CMake 算法练习
使用纯 CMake 脚本实现经典算法：
- 快速排序（`快速排序.cmake`）

### ch006 — 库的构建与使用
实践库的创建与消费模式：
- 构建自定义库 mylib
- 在目标中使用自定义库（useMylib）
- CMake Cache 变量的作用与管理

### ch007 — CMake 目标系统
深入理解 CMake 的目标（target）模型：
- `target_link_libraries` 的传递性
- 可执行文件目标与库目标
- 别名目标（Alias Target）
- 接口库（Interface Library）
- 导入目标（Imported Target）—— 可执行文件与库
- 目标属性、目录属性、源文件属性
- 全局属性
- 自定义构建目标与自定义构建规则
- 目标文件库

### ch008 — 生成器表达式
掌握 CMake 生成器表达式（Generator Expressions）：
- 条件表达式
- 逻辑运算（AND/OR/NOT）
- 比较关系（EQUAL/LESS/GREATER 等）
- 目标属性表达式
- 构建模式与源文件区分（Debug/Release）
- `GENEX_EVAL` 与 `TARGET_GENEX_EVAL`
- 输出生成器表达式

### ch009 — CMake 模块系统
学习 CMake 内置模块与查找机制：
- `find_file` / `find_library` / `find_program` 基础查找命令
- **Find 模块**：`FindBoost`、`FindThreads`、自定义 `Findonnxruntime`
- **Check 模块**：`CheckSourceCompiles`、`CheckSymbolExists`、`CheckStructHasMember`、`CheckPrototypeDefinition`、`CheckIPOSupported`
- `CMakePrintHelpers` — 调试辅助
- `CMakePrintSystemInformation` — 系统信息打印
- `GenerateExportHeader` — 导出头文件生成
- 查找要求变量的使用规范

### ch010 — 版本兼容性
处理 CMake 版本差异与兼容性问题：
- `cmake_minimum_required` 的正确用法
- 同时兼容多个 CMake 版本的写法

### ch011 — 综合实战项目：数字识别器
将前面所有知识融合应用，构建一个跨平台的数字识别库：
- **项目**：`num_recognizer`，基于 ONNX Runtime 的数字识别共享库
- **核心库**：`src/num_recognizer.cpp`，使用 onnxruntime + libpng 推理
- **CLI 工具**：`cli/recognize.c`，调用识别库的命令行程序
- **CMake 特性**：
  - 跨平台（Windows/macOS/Linux）第三方库查找
  - `GenerateExportHeader` 自动生成导出宏
  - `CXX_VISIBILITY_PRESET hidden` 控制符号可见性
  - 自定义 Find 模块（`cmake/Findonnxruntime.cmake`）
  - C++11 标准指定

## 环境要求

- CMake >= 3.20
- C/C++ 编译器（GCC / Clang / MSVC）
- Boost（ch001、ch009 示例）
- ONNX Runtime 1.16.0（ch011）
- libpng（ch011）

## 构建示例

各章节均为独立示例，进入对应子目录构建：

```bash
cd ch001/静态库
mkdir build && cd build
cmake ..
cmake --build .
```

ch011 综合项目：

```bash
cd ch011
mkdir build && cd build
cmake ..
cmake --build .
```

## 代码风格

项目使用 clang-format 统一代码风格，配置文件见根目录 `.clang-format`。
LSP 支持通过 `.clangd` 配置。
