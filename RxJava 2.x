RxJava 2.x 
1,操作符：
（1） create 	操作符应该是最常见的操作符了，主要用于产生一个 Obserable 被观察者对象。
（2） Map 		基本算是 RxJava 中一个最简单的操作符了，它的作用是对发射时间发送的每一个事件应用一个函数，每一个事件都按照指定的函数去变化。
（3） Zip		专用于合并事件，两两配对，也就意味着，最终配对出的 Observable 发射事件数目只和少的那个相同
（4） Concat		把两个事件发射器连接成一个事件发射器。
（5） FlatMap 	它可以把一个发射器 Observable 通过某种方法转换为多个 Observables，然后再把这些分散的 Observables装进一个单一的发射器 Observable。flatMap 并不能保证事件的顺序
（6） concatMap 	concatMap 与 FlatMap 的唯一区别就是 concatMap 保证了顺序
（7） distinct 	就是简单的去重，去除发射器中重复的事件。
（8） Filter 	过滤，可以接受一个参数，让其过滤掉不符合我们条件的值
（9） buffer 	buffer 操作符接受两个参数，buffer(count,skip)，作用是将 Observable 中的数据按 skip (步长) 分成最大不超过 count 的 buffer ，然后生成一个  Observable 。
（10）timer		延迟发送。但需要注意的是，timer默认在新线程
（11）interval	interval 操作符用于间隔时间执行某个操作，其接受三个参数，分别是第一次发送延迟，间隔时间，时间单位。 interval默认在新线程
（12）doOnNext 	doOnNext 应该不算一个操作符。它的作用是让订阅者在接收到数据之前干点有意思的事情。假如我们在获取到数据之前想先保存一下它，无疑我们可以这样实现
（13）skip		代表跳过 count 个数目开始接收。
（14）take		接受一个 long 型参数 count ，代表至多接收 count 个数据。
（15）just 		就是一个简单的发射器依次调用 onNext() 方法。