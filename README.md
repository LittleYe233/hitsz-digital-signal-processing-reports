# HITsz 数字信号处理 (2024 年版) 实验报告 $\LaTeX$ 模板

## 简介

本仓库如题所述, 为该课程提供 $\LaTeX$ 空白模板, 供学生填写实验内容后提交给老师.

本仓库在[此仓库](https://github.com/LittleYe233/hitsz-signal-and-system-reports)的基础上作修改.

## 关于编译等说明

请参照上一节提供的仓库的参考链接.

## 本仓库与参考仓库的不同之处

- 添加[霞鹜文楷](https://github.com/lxgw/LxgwWenKai)字体 (CJK font family 为 `lxgw`), 作为学生填充的文本的字体, 以与题目所用字体 Noto Serif CJK SC 作区分 **(编译时需要在 `fonts` 文件夹下添加对应的字体!)**;
- 增加对非 CJK 字符字体的调整 (依赖 `fontspec` 宏包; 似乎 `ctex` 的字体定义文件里所用的命令无法修改这些字符), 其规则为:
  - 使用 `zhsong` font family 会将非 CJK 字符字体改为 LaTeX 默认的 LaTeX Modern Roman (对应 font family 为 `lmr`);
  - 使用 `lxgw` font family 会将非 CJK 字符字体改为霞鹜文楷.
- 为避免使用字体调整命令时对后续的文本字体造成干扰, 添加两个文档命令/环境:
  - `\blank{#1}`: 专用于填空题, 会仅将文本 `#1` 的字体改为霞鹜文楷, 并在前后添加空格 (保持美观);
  - `\begin{block}#1\end{block}`: 专用于大段正文, 会仅将环境内的文本 `#1` 的字体改为霞鹜文楷.
- 在应该填充文本和图片的空白处添加占位符 (placeholder), 用户可以通过文本查找功能快速定位到空白处:
  - `\blank{  }`: 填空题;
  - `\begin{figure}[H]`: 插入图片;
    - 对于需要插入多个图片的题目, 本仓库只提供了一个 `figure` 环境块, 用户可以自行选择插入多张图片的方案.
  - `\begin{block}`: 插入正文 (在图片环境上下各有一个).

## 进度

- ✔️ 实验一
- ✔️ 实验二
- ✔️ 实验三
- ✔️ 实验四
- ❎️ 实验五
- ❎️ 实验六

## 测试

❎️ 经过仓库拥有者或他人测试, 证明老师可以接受该模板

## 使用和引用

您作为使用者可以直接使用本仓库的任何内容. 引用仓库拥有者名下的实验报告系列仓库只需要在任何一个仓库下提交 issue 说明即可, 一旦同意引用即表明您可以引用该系列的任何仓库.
