# HQPageView

HQPageView 是一个快速集成的 iOS 顶部滚动条/分页组件，支持标题渐变、指示器、遮盖、缩放等多种效果，内置 Demo 方便直接运行体验。

## 功能亮点
- **滚动标题**：支持固定和可滚动标题栏，可自定义间距、字体大小和颜色。
- **多种指示效果**：底部分割线、指示器高度、遮盖背景、圆角等均可配置。
- **渐变与缩放**：支持颜色渐变和缩放效果，切换更流畅。
- **易于集成**：只需将 `HQPageView` 目录拖入项目即可使用，无其他三方依赖。

## 运行 Demo
1. 打开 `HQPageViewDemo.xcodeproj`。
2. 选择一个模拟器或真机运行，即可看到包含网易云音乐、新闻、PPTV、斗鱼等示例的效果展示。

## 快速上手
1. 将 `HQPageViewDemo/HQPageView` 文件夹拖入你的工程。
2. 在控制器中创建标题、样式和子控制器，然后初始化 `HQPageView` 并添加到视图层级中：

```swift
import UIKit

class ExampleViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64 - 44)
        let titles = ["推荐", "歌单", "电台", "排行"]

        let style = HQTitleStyle()
        style.normalColor = (0, 0, 0)
        style.selectedColor = (255, 0, 0)
        style.isGradualChangeEnabel = false
        style.indicatorViewH = 2

        var childVcs: [UIViewController] = []
        for _ in 0..<titles.count {
            let vc = UIViewController()
            vc.view.backgroundColor = UIColor.randomColor()
            childVcs.append(vc)
        }

        let pageView = HQPageView(frame: frame, titles: titles, style: style, childVcs: childVcs, parentVc: self)
        view.addSubview(pageView)
    }
}
```

## 主要配置项
`HQTitleStyle` 提供了丰富的定制能力，常用属性包括：
- `isScrollEnable`：是否开启标题滚动；`titleMargin`：滚动时的标题间距。
- `font`、`titleHeight`、`backgroundColor`：标题栏的字体与布局。
- `isShowSplitLine`、`splitLineColor`、`splitLineH`：底部分割线样式。
- `isShowIndicatorView`、`indicatorViewH`：底部指示器是否显示及高度。
- `isGradualChangeEnabel`、`normalColor`、`selectedColor`：颜色渐变相关配置。
- `isNeedScale`、`scaleRange`：标题缩放效果。
- `isShowCover`、`coverBgColor`、`coverLeftRightMargin`、`coverTopBottomMargin`、`coverRadius`：遮盖效果及圆角调整。

根据需要调整以上属性，即可快速构建符合设计需求的分页控制器。
