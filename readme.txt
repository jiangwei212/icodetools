声明：  本目录下有两个icodetools版本，可以优先尝试1.0版本，如果失败，可以再次尝试2.0版本！！
	默认日志是关闭的，所以需要进入/data/local/tmp目录下，使用echo "-s 1" >log.txt可以打开日志

1、当前目录的需要操作的apk文件名称默认是src.apk文件，如果想修改apk名称，可以手动的修改icodetools.bat中的apk文件名

2、在icodetools.bat中可以指定当前日志的tag

3、当前目录下还有一个JWUtils.java这个java文件，这个类中有一些打印方法，可以根据自己的需求定义一些方法，但是定义的方法必须有要求：
	1》、必须是static类型
	2》、方法只允许有一个参数是String类型的，而这个参数就是打印的日志tag
	3》、方法名称可以随意指定，但是必须在icodetools.bat中保持一致
	所以最终的方法模板为: public static XXX YYY(String tag)
	这个类的名称可以变动，但是必须和icodetools.bat中保持一致

4、当前目录下的compile_java.bat是合成jar使用，不可以随便修改

5、当前目录下的libs目录中是工具依赖的jar包，不可以随便修改

6、当前目录下的JWUtils.java文件名和包名都不可变动

7、cyy_game.keystore签名文件名不可进行修改

8、如果想自己再次签名，可以使用unsigned.apk文件操作，signed.apk是使用了cyy_game.keystore文件签名

9、在icodetools.bat中需要手动设置aapt命令的路径

10、工具运行前必须配置JAVA_HOME环境变量

11、现阶段只支持JDK1.7以及以下版本编译器，不支持1.8以及以上的