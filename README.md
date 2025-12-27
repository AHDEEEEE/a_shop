# a_shop

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# 项目操作流程

1.创建基本目录结构
    1.1 创建lib目录
    1.2 在lib目录下创建以下子目录
        1.2.1 api                存放所有与API相关的代码，如网络请求、数据模型等。
        1.2.2 assets             存放应用程序的静态资源，如图片、字体等。
        1.2.3 components         存放可复用的UI组件，如按钮、卡片等。
        1.2.4 contants           存放应用程序中使用的常量，如颜色、字体大小等。
        1.2.5 pages              存放应用程序的页面代码，每个页面对应一个目录。
        1.2.6 routes             存放应用程序的路由配置代码，如路由表、路由生成器等。
        1.2.7 stores             存放应用程序的状态管理代码，如Bloc、Provider等。
        1.2.8 utils              存放应用程序中使用的通用工具代码，如日期格式化、字符串处理等。
        1.2.9 viewmodels         存放应用程序的视图模型代码，如Bloc、Provider等。

2.创建本地和远程仓库并提交
    2.1 初始化本地仓库            git init
    2.2 添加所有文件到暂存区       git add .
    2.3 提交初始版本              git commit -m "初始化项目"
    2.4 查看提交历史              git log
    2.5 创建远程仓库              git remote add origin https://github.com/yourusername/yourrepository.git
    2.6 推送初始版本到远程仓库      git push -u origin master

3.开放pubspec.yaml文件中assets目录，用于存放应用程序的静态资源。
    3.1 打开pubspec.yaml文件
    3.2 在assets部分添加以下代码  *注意assets的缩进，
        assets:
            - lib/assets/