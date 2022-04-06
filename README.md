# fyf-release-fastlane
发布组件脚本

#### fyf iOS Pod发布

##### Step1.组织结构

1. 执行命令行

```shell
pod lib create TestLib --template-url=https://github.com/fanyunfei786452470/fyf-pod-template.git
```

2. 移动代码
3. 修改 podspec 文件

##### Step2.提交所有代码（⚠️请勿提交Pod文件夹）

```shell
git commit -am "something."
git remote add origin https://github.com/fanyunfei786452470/testlib.git
git push
git status # 提示 nothing to commit, working tree clean 即为正确
```

##### Step3.如果是第一次使用，先执行

```shell
pod repo add FYFSpecs https://github.com/fanyunfei786452470/FYFSpecs.git
```

##### Step4.验证组件库

```shell
pod lib lint testlib.podspec --sources=FYFSpecs --use-libraries --allow-warnings --verbose
```

##### Step5.发布版本库，执行

```shell
fastlane release version:x.x.x
```

