# 大连海事大学博士/硕士毕业论文LaTeX 模板

#### 版本：0.62


### 重要

按照研究生院要求，修改了奇偶页的页眉，请重新下载模板

## 目的

从无穷无尽的耗时费力的Word排版中解脱，写出排版优雅的论文


## 如何使用

参见 `dmuthesis.pdf` 文件。请务必查看文档，不把文档看完就不要问问题！

## 重要事项

Windows XP用户，请将模板中的 `dmuthesis.cls`文件删除，然后将 `xpdmuthesis.cls`更名为`dmuthesis.cls`。

对于中文参考文献，请在最后一行手工加入 `lang = {zh}`， 这样在多于三个作者显示在最后的参考文献列表中就不是 `et al`. 而是 `等` 了。

比如：

@ARTICLE{cnarticle,
  author = {贾宝玉 and 林黛玉 and 薛宝钗 and 贾探春},
  title = {论刘姥姥食量大如牛之现实意义},
  journal = {红楼梦杂谈},
  year = {1800},
  volume = {224},
  pages = {260--266},
  lang = {zh}
}

## 特色之处

在文件中介绍了一些方法应对一些问题：

* 如何解决查新的问题，现在论文都要进行学术不端检测，要提交word文档，这就涉及了将pdf转化为word的问题，在4.1节有介绍。
* 如何绘制表格的问题，这个是最蛋疼的问题。4.2节介绍了两种方法，一种是在windows下可使用excel2latex插件，一种是全平台下，用Calc2LaTeX配合OpenOffice解决。
* 如果忘了LaTeX命令怎么写了该怎么办？提供了一个可以速查LaTeX命令的网站。
* 总结了一些常见的LaTeX错误
* 可以在数学公式中输入中文

## 文件介绍

* `dmuthesis.tex` - 主文件
* `dmuthesis.pdf` - 生成的最终文件，内容为文档的使用手册
* `dmuthesis.cls` - LaTeX 类文件，设置显示格式
* `run.bat` - Windows下编译文件的批处理文件
* `run.sh` - Mac和Linux下编译文件的批处理文件
* `clean.bat` - Windows下清除编译过程产生的多余文件批处理文件
* `clean.sh` -  Mac和Linux下清除编译过程产生的多余文件批处理文件
* `Makefile` - 没事别动这个文件
* `cover` 文件夹
    * `cover.pdf` - 用于生成封面的pdf文件
* `front` 文件夹
    * `original_abstract.tex` - 原创性声明
    * `cn_abstract.tex` - 中文摘要
    * `en_abstract.tex` - 英文摘要
* `body` 文件夹
    * `chapter0x.tex` - 各章节的tex文件
* `reference` 文件夹
    * 'thesisbib.bib' - 参考文献bibtex文件
* `back` 文件夹
    * `pub.tex` - 发表论文清单  
    * `appendix.tex` - 附录
    * `ack.tex` - 致谢
* `figs` 图片文件夹