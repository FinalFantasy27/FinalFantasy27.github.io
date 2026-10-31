---
layout: post
title: "Seeing Quantifier Scope: Quine’s Bond Notation"
date: 2026-10-30
description: "A short introduction to Quine’s bond notation and an interactive browser tool for visualizing variable binding in first-order logic."
categories: logic philosophy
---

在一阶逻辑公式中，变量字母常被重复书写，用来标明哪些论元位置由同一个量词约束。例如，在 `∃x (P(x) ∧ R(x,y))` 中，两个 `x` 都由 `∃x` 约束，而 `y` 是自由变量。

哲学家、逻辑学家蒯因（W. V. Quine）的 **bond notation（连线记法）**提供了另一种表示方式：保留量词，但不在受约束的位置重复写变量字母，而是用弧线将量词连接到它所约束的论元位置。绑定关系由连线表示，不必依靠相同的变量名。

Quine 在《*数理逻辑*》（*Mathematical Logic*, 1940）中介绍过这种量化图示，但认为它繁琐、实用性有限。但它的优点是更可视化、互动性更强，也有趣味性。我们做了一个 Quine 记号的交互式体验网页。欢迎大家探索和操作：

<p style="margin:1.6rem 0 2rem;"><a href="{{ '/quine-bond-notation.html' | relative_url }}" style="color:#2457c5;text-decoration:underline;text-underline-offset:0.18em;font-weight:600;">https://finalfantasy27.github.io/quine-bond-notation.html</a></p>

一个例子是：

<img src="{{ '/assets/img/blog/quine-simple-formula-crop.svg' | relative_url }}" alt="较简单公式的输入区" style="display:block;width:min(100%, 560px);height:auto;margin:1rem auto;">

公式对应的连线效果：

<img src="{{ '/assets/img/blog/quine-simple-diagram-crop.svg' | relative_url }}" alt="较简单公式的黑白 Quine 连线图" style="display:block;width:min(100%, 760px);height:auto;margin:1rem auto;">

下面是一个较复杂的公式。我的网页也提供彩色模式：

<img src="{{ '/assets/img/blog/quine-bonds-complex-color.png' | relative_url }}" alt="复杂公式的彩色 Quine 连线记法示例" style="display:block;width:min(100%, 900px);height:auto;margin:1rem auto;">

<hr style="margin:3rem 0; border:0; border-top:1px solid #d8d8d8;">

In first-order formulas, variable letters are often repeated to indicate which argument positions are bound by the same quantifier. For example, in `∃x (P(x) ∧ R(x,y))`, both occurrences of `x` are bound by `∃x`, while `y` is free.

The philosopher and logician W. V. Quine introduced **bond notation** as an alternative: quantifiers remain, but arcs connect them to the argument positions they bind, instead of repeating bound-variable letters at those positions. The binding relation is shown by the bonds rather than by repeated variable names.

Quine presented this kind of quantificational diagram in *Mathematical Logic* (1940), while judging it cumbersome and impractical. Its advantages, however, are visual clarity, interactivity, and a certain playfulness. We made an interactive page for exploring Quine’s notation. Give it a try:

<p style="margin:1.6rem 0 2rem;"><a href="{{ '/quine-bond-notation.html' | relative_url }}" style="color:#2457c5;text-decoration:underline;text-underline-offset:0.18em;font-weight:600;">https://finalfantasy27.github.io/quine-bond-notation.html</a></p>

Here is a simple example:

<img src="{{ '/assets/img/blog/quine-simple-formula-crop.svg' | relative_url }}" alt="Input field showing a simple formula" style="display:block;width:min(100%, 560px);height:auto;margin:1rem auto;">

The corresponding bond diagram:

<img src="{{ '/assets/img/blog/quine-simple-diagram-crop.svg' | relative_url }}" alt="The simple formula visualized with Quine’s bonds" style="display:block;width:min(100%, 760px);height:auto;margin:1rem auto;">

Here is a more complex formula. The page also offers a color mode:

<img src="{{ '/assets/img/blog/quine-bonds-complex-color.png' | relative_url }}" alt="A complex formula visualized in color with Quine’s bond notation" style="display:block;width:min(100%, 900px);height:auto;margin:1rem auto;">
