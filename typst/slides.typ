#import "sprout-slides.typ" : *
#import "@preview/cetz:0.3.2"

#show: sprout_slides

#title_page(
  title: "測試",
  lecturer: "Lecture by OOO",
  credit: "Credit: XXX"
)

= section

== 測試用假文

來外三把因賽務人吃那先像了球護多……難提不常天世節又又主聲應學背天就人有即們出科的，夫以科心型有設放臺可人易行到現合，的現生所開、雲雖世家！灣夫了了條照人上畫……務口類公她知年同表去開與知應花樣合細，久白子吸比要後地的……天供物即，童們年部客國對他外氣龍。點還去。然力生心狀下感設民去外友什久她飛，會成臺爸國媽。

分眼水位他些到小角接石聽叫苦海即術：她軍存光自角；先美遠學我源藥灣樣陸海實久情子出資理們白無角學去能問和票？人強市燈正大年方只他讀一大課始行共。化直食一形路機、球的題己因至著房的多玩，學英區然器度水從了的，覺心一看半究場育他復飛與市新不任行友一！值車幾！然小以，有我畫世；通似靜前地告我的不話出現油後白密大！

== 標題懶得做陰影

- 1
- 123123
- 48763
  - hihihi
  - OwO

1. 123123
  1. 8787
  2. #link("https://sprout.tw", [這是超連結])

== Math

blabla $x+y^n$

$ C_0 = 1, quad C_n=sum_(k=0)^(n-1) C_k C_(n-k-1) = 1/(n+1) binom(2n, n) $

#let catalan(n) = {
  if n <= 1 { return 1 }
  let sum = 0
  for i in range(0, n) {
    sum += catalan(i) * catalan(n - i - 1)
  }
  return sum
}

$ #{for i in range(0, 6) { [$C_#i$ = #catalan(i) $quad $] }} $

== #text([標題太長就會凸出去ㄌ然後要像這樣縮小所以不要太長], size: 17pt)

#grid(
  columns: (1fr, 1fr),
  [
    ```cpp
    #include <bits/stdc++.h>
    using namespace std;
    int main(){
        cout << "hi\n";
    }

    ```
  ],
  [
    #cetz.canvas({
      import cetz.draw: *
      circle((0, 0), radius: 1, name: "A")
      circle((5, 0), radius: 1, name: "B")
      circle((0, 5), radius: 1, name: "C")
      circle((5, 5), radius: 1, name: "D")
      line("A", "B")
      line("C", "B")
      line("C", "D")
      line("D", "B")
      content("A", [$A$])
      content("B", [$B$])
      content("C", [$C$])
      content("D", [$D$])
    })
  ]
)

== Theorem


#lemma[
  123123
]

#definition[
  123123
]

#theorem[
  88888
]

== Theorem

#observation([很容易的觀察])[
  99999
]

#corollary[48763]

#proof[
  我都不會。留給聽眾當作練習。
]

對顏色有什麼不滿的話就自己改

== 題目

#problem(title: "test", source: "TIOJ 8787")[
  給 $a,b$ 輸出 $a+b$。
]
#exercise(title: "很簡單的習題", source: "這個可以沒有")[
  123123
]

#for i in range(3) [
== 動畫

#if i >= 0 [
- 123
  - 很陽春的動畫
  #if i >= 1 [
  - 反正你就寫個程式就會有動畫了
  ]
]
#if i >= 2 [- 8888]

]