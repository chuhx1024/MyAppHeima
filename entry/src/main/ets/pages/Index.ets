
// 命名规则
// 1. 只能包含数字 字母 下划线 首字母不能是数字
// 2. 不能使用关键字
// 3. 严格区分大小写

// 1. 常量
const logo: string = '123'
console.log(logo)

// 2. 变量
let num: number = 999
console.log('num', num)

// 3. 数组
let names: string[] = ['测试', '名字']
console.log('数组names', names)

// 4. 函数
function fn (a: number)  {
  console.log('打印的值', a)
}
// 不能这样用
// const fn1 = function (a: number)  {
//   console.log('打印的值', a)
// }
const fn2 = (a: number) =>  {
  console.log('打印的值', a)
}
fn(1)
fn2(2)

// 对象
interface Person {
  name: string
  age: number
  sayHi: Function
  sayHi1?: Function
  sayHi2: () => void
}
const obj: Person = {
  name: '小名',
  age: 18,
  sayHi () {
    console.log('你好呀 简写函数')
  },
  sayHi2: () => {
    console.log('你好呀 箭头函数')
  }
}
console.log('对象',obj)
console.log('对象',obj.name)
console.log('对象',obj.age)
obj.sayHi()
obj.sayHi2()

@Entry
@Component
struct Index {
  @State message: string = 'Hello World 123';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(60)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}