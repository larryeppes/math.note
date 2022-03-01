# 数学笔记

这是我的个人数学笔记, 里面的题目大多来源于书籍与互联网, 解题方法有些是我本人提供的, 有些则来自网络.

可能存在的问题欢迎大家提交issue告知.

## 关于解答详细程度的说明: 

1. 我们都知道学习数学重在思考, 我不是一个喜欢伸手党的人. 
2. latex编写数学公式是一件比较耗时的工作, 虽然我认为LyX已经很好的加快了我的编码速度.
3. 笔记写的太过详细就不是个人笔记了, 会导致`我本人`阅读到冗余信息, 所以所有的题目解答都是以`比提示稍微丰富一点`的方式展示关键过程.

### 关于源代码的编译的说明:

这个模板为个人通过`tcolorbox`文档自定义的, 需要pygments的python库, 你可以在[这里](http://pygments.org/languages/)参考下载, 或者参考[这里的代码](https://pypi.org/project/Pygments/)通过pip安装. 以为这个包的引入, 编译的时候需要对编译器添加额外的参数: `-shell-escape`, 以下是各个常见的编辑器中对编译器的相关配置说明.

#### Makefile直接编译:

笔记中`MathNote`文件夹内给了一个简单的`Makefile`, 在Linux中配置好`make`工具的, 直接在目录`MathNote`下执行`make`即可编译, emm, 可能pdf阅读器部分需要改改... 比如用`evince`.

#### texlive编辑器中的配置:

![image-20220301132502046](pic/README/image-20220301132502046.png)

![image-20220301133118803](pic/README/image-20220301133118803.png)

#### CTeX的WinEdt编辑器中的配置:

![image-20220301133223328](pic/README/image-20220301133223328.png)

![image-20220301133402537](pic/README/image-20220301133402537.png)

### 补充工具的搭建

在`MathNote/note8.tex`文件中有一部分绘图代码使用了`gnuplot`工具. 这个工具的windows版本可以在[这里](http://tmacchant33.starfree.jp/gnuplot_bin.html)下载. gnuplot的官网在[这里](http://www.gnuplot.info/).

所以要在编辑器的`选项→设置TeXstudio→构建→命令($PATH)`处补充添加`PATH`环境变量, 就是添加`path\to\gnuplot\bin`, 配置方式类似下面的说明, 图文知道这里略去.

对于WinEdt编辑器, 则需要在`Options→Execution Medes...→PATH`中的`Extra PATH Folders`中添加`path\to\gnuplot\bin`.

这个工具的效果是在`MathNote`文件中生成以`.pgf-plot.gnuplot`和`.pgf-plot.table`结尾的两个文件, 本仓库编译时没有清除这两个文件, 所以即便本地没有安装`gnuplot`工具, **也不影响编译结果的输出**. 但以后这些编译产生的文件会从仓库中移除.

