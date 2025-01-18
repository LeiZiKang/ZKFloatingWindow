# ZKFloatingWindow

SwiftUI Floating Window

iOS 17.0

Swift 5.0



<img src="https://p.ipic.vip/j5pgjj.gif" alt="RocketSim_Recording_iPhone_16_Pro_6.3_2025-01-19_07.08.29" style="zoom:50%;" />

## usage

1. Insert your  ContentView in the RootView

```swift
@main
struct FloatingWindowDemoApp: App {
    var body: some Scene {
        WindowGroup {
            RootView { 
                ContentView()
            }
        }
    }
}
```

2. Add your View in `.floatingWindow(show: ...) { // view ...}` 

```swift
            .floatingWindow(show: $showFloatingWindow) {
                FloatView(viewModel: viewModel)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }

```

3. Finished



**You can download a [demo](https://github.com/LeiZiKang/FloatingWindowDemo) to see how it works**



---

Thanks to [Mohammed Rokon Uddin](https://github.com/rokon-uddin) , most code come from [UniversalOverlay](https://github.com/rokon-uddin/UniversalOverlay)