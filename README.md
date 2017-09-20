# HanLP 扩展

- [es-plugin](es-plugin): HanLP Elasticsearch插件
- [hanlp-io](hanlp-io): HanLP IOAdapter，支持更多存储系统（这是一个示例项目，不应该编译加包，应参考里面的使用方式）

#To Build : 
1. Firstly, buildPluginZip of the project
2. Secondly, you will need to generate the HanLP.zip which containing the data folder from the [HanLP] project. 
#Notes: 
Feel free to build your own docker images. I didn’t choose the official image from Elasticsearch, because it has XPack trial version and also for some reason the container can’t start for no reason.
Please refer to [itzg]for instruction on how to use the images. Basically, the configuration of the plugin can be placed in a data volume container under /conf