---
title: 常见问题
sidebar_label: 常见问题
---

## 如何生成自己的 token

有多个应用程序可供自己安全地生成访问令牌：

- [Auth app for Tesla (iOS, macOS)](https://apps.apple.com/us/app/auth-app-for-tesla/id1552058613)
- [Tesla Tokens (Android)](https://play.google.com/store/apps/details?id=net.leveugle.teslatokens)
- [Tesla Auth (macOS, Linux, Windows)](https://github.com/adriankumpf/tesla_auth)

## 为什么在 Grafana 中没有显示消耗值？

不幸的是，特斯拉的 API 并不返回行程中的消耗值。为了仍然能够显示数值，TeslaMate 在记录（充电）数据的基础上估计消耗。在显示第一个估计值之前，**至少需要两个**的充电时段。充电时间必须长于 10 分钟，并且低于 95% 的充电状态（SoC）。未来的每一次充电过程都会略微提高估算的准确性，这将追溯到所有数据。

## 地理围栏的功能是什么？

目前，地理围栏是一种创建自定义位置的方式，如 `🏡 家` 或 `🛠️ 工作`，如果你所在地区的地址（由 [OpenStreetMap](https://www.openstreetmap.org) 提供）不准确，或者如果你在确切地址可能不同的地方停车，这可能特别有用。

## 请求帮助，我的车不会休眠

带有媒体控制单元 1 版本（MCU1）的汽车需要某些设置才能休眠。2018 年第 3 季度之前制造的 Model S 和 Model X 汽车有 MCU1 装置，这也可以从软件 -> 附加车辆信息中检查。如果"信息娱乐处理器"是 "NVIDIA Tegra"，则该车配备了 MCU1。

用 MCU1 启用休眠模式所需的设置是：

- 'Display' -> 'Energy saving' -> ON
- 'Display' -> 'Always connected' -> unchecked
- 'Safety & security' -> 'Cabin overheat protection' -> OFF

通过这些设置，MCU1 汽车应该在不活动的 15 分钟内休眠。这就是在 TeslaMate 中启用流媒体模式时，你应该在日志中看到的情况

- `[info] Suspending logging` after 3 minutes of inactivity (doors locked)
- `[info] Fetching vehicle state ...` about 21 minutes later. The car should have fallen asleep during this period

在这个例子中，如果驾驶室的门被打开和关闭：

```
teslamate_1     | 2021-03-16 11:41:19.336 car_id=1 [info] Start / :online
teslamate_1     | 2021-03-16 11:41:19.603 car_id=1 [info] Connecting ...
teslamate_1     | 2021-03-16 11:44:41.380 car_id=1 [info] Suspending logging
teslamate_1     | 2021-03-16 12:03:27.356 car_id=1 [info] Fetching vehicle state ...
teslamate_1     | 2021-03-16 12:03:28.123 car_id=1 [info] Start / :asleep
teslamate_1     | 2021-03-16 12:03:28.139 car_id=1 [info] Disconnecting ...
```

![image](https://user-images.githubusercontent.com/2128464/111361149-38238380-8696-11eb-950d-aba298206d2d.png)

**注意！** 如果你同时使用一些其他的数据记录器，如 TeslaFi，休眠尝试可能会失败，因为其他数据记录器让汽车保持清醒。特别是调用 [Vehicle Data API](https://www.teslaapi.io/vehicles/state-and-settings#vehicle-data) 将重置汽车的不活动计时器。

## 为什么我在不使用流媒体 API 的时候会丢失数据？

轮询模式的问题是，汽车在不活动约 15 分钟之前不会休眠。TeslaMate 将在汽车闲置 3 分钟后暂停所有轮询（"尝试休眠前的闲置时间" 设置），并在 15 分钟后恢复轮询（"尝试休眠时间" 设置）。这 15 分钟内的任何活动都不能被检测到，因为调用[车辆数据 API](https://www.teslaapi.io/vehicles/state-and-settings#vehicle-data) 会重置汽车的不活动计时器，以防止汽车休眠。

调用 [Vehicle API](https://www.teslaapi.io/vehicles/list#vehicle) 不会重置不活动计时器，但它只告诉人们汽车是否在线（驾驶、充电、空闲、即将休眠）或休眠。它不能告诉一个空闲的汽车是否在 "尝试休眠的时间" 期间开始驾驶。

## 为什么我的 Docker 时间戳日志与我的机器不同？

Docker 容器的时区默认为 UTC。要为你的容器设置时区，在你的 YML 文件中使用 `TZ` 环境变量。更多信息见[环境变量](https://docs.teslamate.org/docs/configuration/environment_variables)
