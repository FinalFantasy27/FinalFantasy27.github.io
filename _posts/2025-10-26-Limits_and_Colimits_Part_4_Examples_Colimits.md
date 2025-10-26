---
layout: post
title: "Limits and Colimits, Part 4 Colimits"
date: 2025-10-25 20:49:31 +0800
categories: mathematics category

---

<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
<script src='//unpkg.com/valine/dist/Valine.min.js'></script>
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
<script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            skipTags: ['script', 'noscript', 'style', 'textarea', 'pre'],
            inlineMath: [['$','$']]
            }
        });
</script>



*Math3ma has provided one of the most accessible and insightful introductions to category theory, especially in its excellent [series on Limits and Colimits](https://www.math3ma.com/blog/limits-and-colimits-part-1). However, the promised and long-awaited Part 4 on examples of colimits was never released. In this post, I use Gemini 2.5 for an attempt to to reconstruct what could have been Part 4 of the series.*

Welcome back to our series on limits and colimits! In the last post, we took a deep dive into some of the most common examples of limits: terminal objects, products, pullbacks, inverse limits, and equalizers. Today, we're going to flip the script entirely. We'll look at the duals of the examples we saw in Part 3.

### Example 1: The Initial Object (Dual of the Terminal Object)
The simplest limit is the limit of the empty diagram, which we called the terminal object. So, the simplest colimit must be the colimit of the empty diagram. This is called the initial object.

Diagram: The empty category, with no objects and no morphisms.

Cocone: A cocone under the empty diagram is just... an object! There are no diagrams to draw and no conditions to satisfy. So every object in the category C is a cocone.

Colimit: The colimit is the initial object among all these cocones. An initial object, often denoted $0$ or $\emptyset$, is an object with a unique morphism to every other object in the category.

For example, in the category of sets Set, the initial object is the empty set $\emptyset$. There is exactly one function from the empty set to any other set (the "empty function").

### Example 2: The Coproduct (Dual of the Product)
The dual of the product is the coproduct. While a product combines objects with maps pointing to the factors, a coproduct combines objects with maps coming from the factors.

Diagram: A discrete category with two objects, $A$ and $B$.

Cocone: A cocone consists of an object $M$ and two morphisms $i₁: A → M$ and $i₂: B → M$.

Colimit (Coproduct): The colimit is the object $A \sqcup B$ (or $A + B$) along with two "inclusion" maps $i₁: A → A \sqcup B$ and $i₂: B → A \sqcup B$. It has the universal property that for any other cocone ($M$, $f$, $g$), there is a unique morphism $u: A \sqcup B → M$ such that $u \circ i₁ = f$ and $u \circ i₂ = g$.

In Set, the coproduct is the disjoint union. If you have two sets $A$ and $B$, their disjoint union $A \sqcup B$ is the set containing all elements of $A$ and all elements of $B$, where we treat the elements from $A$ and $B$ as distinct even if they look the same. The unique map $u$ is defined by saying "if an element came from $A$, apply $f$ to it; if it came from $B$, apply $g$ to it."

In the category of groups Grp, the coproduct is the free product of groups. Let's consider two simple groups:

$G = \mathbb{Z}₂ = \{e, a\}$ where $a² = e$.

$H = \mathbb{Z}₃ = \{e, b, b²\}$ where $b³ = e$.

The coproduct $\mathbb{Z}₂ \sqcup \mathbb{Z}₃$ is the free product $\mathbb{Z}₂ * \mathbb{Z}₃$. Its elements are all finite "words" you can make by alternating elements from $G$ and $H$, like $aba$, $b²ab$, etc. There are no relations between $a$ and $b$ (e.g., $ab ≠ ba$).

The inclusion maps are:

$i₁: \mathbb{Z}₂ → \mathbb{Z}₂ * \mathbb{Z}₃$ sends $a$ to the word "a".

$i₂: \mathbb{Z}₃ → \mathbb{Z}₂ * \mathbb{Z}₃$ sends $b$ to the word "b".

Now, let's test the universal property. Suppose we have another group, $K$, and two homomorphisms:

$f: \mathbb{Z}₂ → K$

$g: \mathbb{Z}₃ → K$

We need to show there is a unique homomorphism $u: \mathbb{Z}₂ * \mathbb{Z}₃ → K$ that makes the diagram commute.

How do we define $u$? We have no choice! For any word in $\mathbb{Z}₂ * \mathbb{Z}₃$, we define $u$ by applying $f$ and $g$ to its letters. For example:

$u("ab")$ must equal $u(i₁(a) * i₂(b)) = u(i₁(a)) * u(i₂(b)) = f(a) * g(b)$.

$u("b²a")$ must equal $u(i₂(b²)) * u(i₁(a)) = g(b²) * f(a)$.

This definition is forced upon us by the diagram, which guarantees its uniqueness. It also turns out to be a valid homomorphism.

Why isn't the direct product $\mathbb{Z}₂ × \mathbb{Z}₃$ the coproduct? The direct product imposes the relation that elements from $G$ commute with elements from $H$. That is, $(a, e) * (e, b) = (a, b) = (e, b) * (a, e)$. If we chose $\mathbb{Z}₂ × \mathbb{Z}₃$ as our coproduct, we could only construct maps $u$ into groups $K$ where the images of $G$ and $H$ commute. This isn't universal enough! The free product is more "free" because it imposes no extra relations.

#### In Vect (direct sum)

In the category of vector spaces (Vect), the coproduct of two vector spaces $V$ and $W$ is their direct sum, $V \oplus W$. Let's see why it satisfies the universal property, which is the defining feature of a coproduct.

Let $V = \mathbb{R}²$ and $W = \mathbb{R}$ over the field $k = \mathbb{R}$. Their direct sum is $V \oplus W = \mathbb{R}³$, where we can think of elements as pairs $(v, w)$ with $v \in V$ and $w \in W$.

Inclusion Morphisms: We have two canonical linear maps (the "inclusions") into the direct sum:

$iᵥ: V → V \oplus W$ defined by $v \mapsto (v, 0)$. For example, $(x, y) \mapsto (x, y, 0)$.

$iᵥ: W → V \oplus W$ defined by $w \mapsto (0, w)$. For example, $z \mapsto (0, 0, z)$.

Universal Property Test: Now, suppose we have any other vector space $Z$ and two arbitrary linear maps into it:

$f: V → Z$

$g: W → Z$

The universal property demands that there exists a unique linear map $u: V \oplus W → Z$ such that $u \circ iᵥ = f$ and $u \circ iᵥ = g$.

How do we construct this unique map $u$? Any element in $V \oplus W$ can be uniquely written as $(v, w) = (v, 0) + (0, w)$. Since $u$ must be a linear map: $u(v, w) = u((v, 0) + (0, w)) = u(v, 0) + u(0, w)$

For the diagram to commute, we need $u(v, 0)$ to be $f(v)$ and $u(0, w)$ to be $g(w)$. Therefore, the map $u$ is uniquely defined as: $u(v, w) = f(v) + g(w)$

This construction always yields a valid linear map, and its definition is forced by the conditions, guaranteeing it is unique. Because the direct sum satisfies this property for any $V, W, Z, f$, and $g$, it is the categorical coproduct in Vect.

In the category of vector spaces (Vect), the coproduct is the direct sum ($V \oplus W$), while the product is the direct product ($V × W$). For finite-dimensional vector spaces, these two are isomorphic, which can be confusing. Why isn't the direct product $V × W$ the coproduct?

Let's try to use $V × W$ in the coproduct role. The "inclusion" maps would be $v \mapsto (v, 0)$ and $w \mapsto (0, w)$. Now, consider two maps $f: V → Z$ and $g: W → Z$. We need to find a unique map $u: V × W → Z$ such that $u(v, 0) = f(v)$ and $u(0, w) = g(w)$. 

Since any element $(v, w)$ in $V × W$ can be written as $(v, 0) + (0, w)$, linearity forces the definition $u(v, w) = u(v, 0) + u(0, w) = f(v) + g(w)$. This works perfectly and seems to satisfy the property. So, where is the problem? The issue arises with infinite dimensions. For infinite-dimensional spaces, the direct sum $V \oplus W$ consists of pairs $(v, w)$ where only a finite number of components are non-zero, while the direct product $V × W$ allows infinitely many non-zero components. The direct sum is a subspace of the direct product. The map $u(v, w) = f(v) + g(w)$ is well-defined for the direct sum, but it may not be for the direct product if the sums become infinite. The direct sum is the correct, most general construction that always works.


### Example 3: The Pushout (Dual of the Pullback)
The dual of the pullback is the pushout. A pullback found the "best" way to complete a square of maps pointing to a common object. A pushout finds the "best" way to complete a square of maps originating from a common object.

Diagram: A "span" of objects $B ← A → C$.

Cocone: A cocone is an object $P$ that completes the square, making it commute:

Colimit (Pushout): The pushout is the object $P$ that satisfies the universal property: for any other object $Q$ that makes the diagram commute, there is a unique morphism $u: P → Q$ that preserves the whole structure.

In Set, the pushout can be thought of as "gluing" sets together along a common subset. Imagine $A$ is a subset of both $B$ and $C$. The pushout $B \sqcupₐ C$ is the disjoint union of $B$ and $C$, but where we "identify" or "merge" the corresponding elements from $A$. This is a fundamental construction in topology, where we glue topological spaces together.

#### Pushout Example in Top: Making a Sphere ⚪
Let's build a 2-sphere $S²$ using a pushout.

Let $A$ be the circle $S¹$. Think of it as the set of points $(x, y)$ in $\mathbb{R}²$ with $x² + y² = 1$.

Let $B$ and $C$ both be the 2-disk $D²$. The set of points $(x, y)$ in $\mathbb{R}²$ with $x² + y² ≤ 1$. Let's call this disk $B$ the "northern hemisphere." We'll call $C$ the "southern hemisphere."

The maps $f: A → B$ and $g: A → C$ are the inclusion maps of the boundary circle $S¹$ into each disk.

The diagram is $D² ← S¹ → D²$. The pushout "glues" the two disks together along their common boundary circle. The result is the sphere $S²$. This is a fundamental construction in algebraic topology.

Let's break down the construction of a 2-sphere $S²$ from two 2-disks $D²$ by gluing their boundaries. This is a pushout in the category of topological spaces (Top).

The Construction: The pushout $P$ is constructed in two steps:

Step 1: Disjoint Union: Take the coproduct $B \sqcup C$. This is a space consisting of two separate, non-touching disks.

Step 2: Quotient: Define an equivalence relation $\sim$ on $B \sqcup C$. For any point $a \in A$, we declare its image in $B$ to be equivalent to its image in $C$. That is, for every $a \in S¹$, we enforce $f(a) \sim g(a)$. This is the "gluing" instruction.

The Result: The pushout $P$ is the quotient space $(B \sqcup C) / \sim$. $P$ is homeomorphic to the 2-sphere, $S²$, is formally the set of points in $\mathbb{R}³$ equidistant from the origin, defined as: 

$$S² = \{ (x, y, z) \in \mathbb{R}³ | x² + y² + z² = 1 \},$$

because the quotient map effectively "glues" two hemispheres along their equators. 

$S²$ is a subspace of Euclidean 3-space $\mathbb{R}³$. It inherits its topology as a subspace of $\mathbb{R}³$.

Define the spaces: 

$$B = \{ (x, y, z) \in \mathbb{R}³ | x² + y² + z² = 1 \text{ and } z ≥ 0 \}$$ 

(the closed northern hemisphere).

$$C = \{ (x, y, z) \in \mathbb{R}³ | x² + y² + z² = 1 \text{ and } z ≤ 0 \}$$ 

(the closed southern hemisphere).

Both $B$ and $C$ are homeomorphic to the disk $D²$.

The intersection 

$$A = B \cap C = \{ (x, y, 0) \in \mathbb{R}³ | x² + y² = 1 \}$$

is the equator, which is homeomorphic to the circle $S¹$.

Define the pushout: Let $f: A → B$ and $g: A → C$ be the standard inclusion maps.

The pushout is the quotient space $P = (B \sqcup C) / \sim$, where $(b, 1) \sim (c, 2)$ if and only if $b = c$ and $b, c \in A$. This formally identifies the points on the equator of $B$ with the corresponding points on the equator of $C$.

Define the Homeomorphism: We need a continuous map $h: P → S²$ with a continuous inverse.

Let $q: B \sqcup C → P$ be the quotient map.

Define a map $ĥ: B \sqcup C → S²$ that acts as the identity on each hemisphere. This map is continuous.

Because $ĥ$ identifies the same points as the equivalence relation $\sim$ (i.e., if $x \sim y$, then $ĥ(x) = ĥ(y)$), the universal property of quotient spaces guarantees that there is a unique continuous map $h: P → S²$ such that $h \circ q = ĥ$.

This map $h$ is a bijection because it maps the two identified hemispheres to the whole sphere.
Since $B \sqcup C$ is compact (as the union of two compact sets) and $S²$ is Hausdorff, the continuous bijection $h$ is a homeomorphism.

Therefore, the abstract pushout construction formally yields a space that is topologically identical to $S²$. The maps from $B$ and $C$ into $S²$ are just the natural projections from the disjoint union into the quotient space.

### Colimits in Different Categories

| Category | Initial Object | Coproduct ($A \sqcup B$) | Pushout ($B \sqcup_A C$) |
| :--- | :--- | :--- | :--- |
| **Set** (Sets) | Empty set $\emptyset$ | **Disjoint Union**: $A$ and $B$ combined, keeping elements distinct. | **Gluing Sets**: The disjoint union of $B$ and $C$, where for each $a \in A$, we identify its image in $B$ with its image in $C$. |
| **Grp** (Groups) | Trivial group $\{e\}$ | **Free Product**: $A * B$, words of alternating elements. | **Amalgamated Product**: $B *_A C$, the free product $B * C$ quotiented by relations identifying the images of $A$. |
| **Top** (Spaces) | Empty space $\emptyset$ | **Disjoint Union**: The disjoint union of the sets with a topology where a set is open if its intersection with $A$ and $B$ is open. | **Gluing Spaces**: The most intuitive pushout. $B$ and $C$ are "glued together" along $A$. |
| **Vect** (Vector Spaces) | Zero space $\{0\}$ | **Direct Sum**: $A \oplus B$. Its elements are pairs (a, b). | **Gluing Vector Spaces**: The direct sum $B \oplus C$ quotiented by the subspace of elements $(f(a), -g(a))$ for $a \in A$. |

### Example 4: Coequalizers
The coequalizer is the dual of the equalizer. It takes two parallel arrows and "forces" them to be equal in the most efficient way.

Definition: The coequalizer of two morphisms $f, g: A → B$ is an object $Q$ with a morphism $q: B → Q$ such that $q \circ f = q \circ g$. Furthermore, for any other object $Q'$ with a map $q': B → Q'$ where $q' \circ f = q' \circ g$, there's a unique map $u: Q → Q'$ making the diagram commute.

Example in Set: Let $A = \{a\}$ and $B = \{1, 2, 3\}$.

Let $f: A → B$ be the function $f(a) = 1$.

Let $g: A → B$ be the function $g(a) = 2$.

The coequalizer $q: B → Q$ must make $q(f(a)) = q(g(a))$, which means $q(1) = q(2)$. The most general way to do this is to take the quotient of $B$ by the equivalence relation generated by $1 \sim 2$.

The equivalence classes are $\{[1] = \{1, 2\}, [3] = \{3\}\}$.

The coequalizer object is the quotient set $Q = \{\{1, 2\}, \{3\}\}$.

The map $q$ sends each element of $B$ to its equivalence class: $q(1) = \{1, 2\}$, $q(2) = \{1, 2\}$, and $q(3) = \{3\}$.

#### In Grp: Group Presentation

In group theory, coequalizers are used to define groups via presentations. The group defined by 

$$⟨S | R⟩$$

is the coequalizer of maps from the free group on relations $R$ to the free group on generators $S$.

A group presentation 

$$\langle S \mid R\rangle.$$

is a way to define a group by specifying its generators ($S$) and the relations the generators must satisfy ($R$). Let's use a concrete example: the dihedral group $D₃$ (the symmetries of an equilateral triangle), which has the presentation

$$⟨r, s | r³ = e, s² = e, srs = r⁻¹⟩.$$ 

The last relation is equivalent to $srsr = e$.

The Objects and Maps:

Let $F(S)$ be the free group on the set of generators $S = \{r, s\}$. Its elements are all possible strings of $r, s, r⁻¹, s⁻¹$, like $rsr⁻¹s$, with no relations other than $rr⁻¹ = e$, etc.

Let $F(R)$ be the free group on the set of "relations" $R = \{r³, s², srsr\}$. (We treat the relations themselves as generators of another free group).

Now we define two homomorphisms, $f$ and $g$, from $F(R)$ to $F(S)$:

$f: F(R) → F(S)$ is the map that formally includes the relations. $f(r³) = r³$, $f(s²) = s²$, $f(srsr) = srsr$.

$g: F(R) → F(S)$ is the map that sends every generator of $F(R)$ to the identity element $e$ in $F(S)$. $g(r³) = e$, $g(s²) = e$, $g(srsr) = e$.

The Coequalizer: The group $D₃$ is the coequalizer of $f$ and $g$. This is a group $G$ with a homomorphism $q: F(S) → G$ such that $q \circ f = q \circ g$.

The condition $q(f(x)) = q(g(x))$ for all $x \in F(R)$ means that $q(r³) = q(e)$, $q(s²) = q(e)$, and $q(srsr) = q(e)$.

In a group homomorphism, $q(e)$ must be the identity element in $G$.

Therefore, the map $q$ must "kill" the relations; it must send $r³$, $s²$, and $srsr$ to the identity.

The most universal way to do this is to let $G$ be the quotient group of $F(S)$ by the normal closure of the relations. This is exactly the definition of the group given by the presentation 

$$\langle S \mid R\rangle.$$ 

The normal closure is necessary in group presentations because the kernel of any group homomorphism must be a normal subgroup, and the normal closure is the smallest normal subgroup containing the relations.

Why the Normal Closure?
When we form a quotient group $G / N$, the denominator $N$ must be a normal subgroup. This is a fundamental requirement for the set of cosets $G / N$ to have a well-defined group structure.

A subgroup $N$ of $G$ is normal if for every $g \in G$ and $n \in N$, the conjugate $gng⁻¹$ is also in $N$. 

This ensures that the left coset $gN$ is the same as the right coset $Ng$.

Now, consider a group presentation $\langle S \mid R\rangle.$

We start with the free group $F(S)$ and a set of relations $R' = \{r₁, r₂, ...\}$ which are elements of $F(S)$. We want to force all these relations to become the identity element.

The Problem: The subgroup generated by $R'$, let's call it $H$, is generally not normal. For example, in 

$$D₃ = ⟨r, s | r³ = e, ...⟩,$$ 

the subgroup generated by $r³$ is 

$$\{e, r³, r⁶, ...\}.$$ 

But its conjugate $s(r³)s⁻¹$ is not in that subgroup. If we only quotiented by $H$, the resulting structure wouldn't be a group.

The Solution: We need to quotient $F(S)$ by the smallest normal subgroup that contains all our relations. This is precisely the normal closure of $R'$, denoted $N = ⟨⟨R'⟩⟩$.
The normal closure $N$ consists of all elements that can be formed by multiplying conjugates of the relations. For example, it contains $r³$, $s(r³)s⁻¹$, $(rs)(r³) (rs)⁻¹$, and all products of such elements. By construction, $N$ is normal.

Because the kernel of any homomorphism $\phi: G → K$ is always a normal subgroup of $G$, the coequalizer construction $q: F(S) → G$ must have a normal subgroup as its kernel. By taking the normal closure of the relations as the kernel, we are creating the most general (or "freest") group that satisfies the relations, which is the essence of the coequalizer's universal property.


####

Coequalizers in Top: In topology, the coequalizer is also a "gluing" construction.

Example: Making a Circle: 

Let $A$ be a single-point space $\{*\}$ and $B$ be the interval $\[0, 1\]$. 

Let $f, g: A → B$ be two maps where $f(\*) = 0$ and $g(\*) = 1$. The coequalizer identifies the images of $f$ and $g$. It quotients the interval $\[0,1\]$ by the relation $0 \sim 1$. 

The result is a line segment whose two endpoints have been glued together: a circle, $S¹$.

Coequalizers in Vect: In vector spaces, the coequalizer is a quotient space.

Example: Let $V = \mathbb{R}$ and $W = \mathbb{R}²$. Consider two linear maps $f, g: V → W$.

$f(x) = (x, x)$

$g(x) = (x, -x)$

The coequalizer is a space $Q$ with a map $q: W → Q$ such that $q(f(x)) = q(g(x))$ for all $x$.

This means $q(x, x) = q(x, -x)$. By linearity, $q((x, x) - (x, -x)) = 0$, which simplifies to $q(0, 2x) = 0$ for all $x$.

This tells us that the entire $y$-axis 

$$\{(0, y) | y \in \mathbb{R}\}$$

must be in the kernel of $q$.

The universal solution is to let $Q$ be the quotient space $W / U$, where $U$ is the subspace spanned by all vectors of the form $f(x) - g(x)$. In our case, $U$ is the $y$-axis.

The quotient $\mathbb{R}² / U$ is the space of cosets $(a, b) + U$, which are the horizontal lines in the plane. This space is isomorphic to $\mathbb{R}$, where each horizontal line is identified with its $x$-intercept.

### Example 5: Direct Limits
The dual of an inverse limit is a direct limit (or inductive limit). While inverse limits deal with maps going "inward" (like $... → X₂ → X₁$), direct limits deal with maps going "outward."

Definition: A direct system is a diagram $X₀ → X₁ → X₂ → ....$ The direct limit, $\lim→ Xᵢ$, is an object that receives maps from all $Xᵢ$ in a consistent way.

Construction: The direct limit is often constructed as the disjoint union of all the $Xᵢ$, quotiented by an equivalence relation where we identify $xᵢ \in Xᵢ$ with its image $fᵢ(xᵢ) \in Xᵢ₊₁$.

Example in Top: Let's build the real line $\mathbb{R}$.

Let $Xₙ$ be the closed interval $[-n, n]$ for $n = 1, 2, 3, ....$

Let the maps $fₙ: Xₙ → Xₙ₊₁$ be the standard inclusion maps, e.g., mapping $[-1, 1]$ into $[-2, 2]$.

Our direct system is $[-1, 1] \hookrightarrow [-2, 2] \hookrightarrow [-3, 3] \hookrightarrow ....$ The direct limit is the union of all these sets: $\bigcup [-n, n] = \mathbb{R}$. Intuitively, the limit of this expanding sequence of intervals is the entire real line. Each interval is included in the final object $\mathbb{R}$ in a way that respects all the intermediate inclusion maps.


<br/><br/>


<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<span id="busuanzi_container_site_pv">PageView: <span id="busuanzi_value_site_pv"></span> times</span>
    
<span id="busuanzi_container_site_uv">UniqueVisitor: <span id="busuanzi_value_site_uv"></span></span>
    
<div id="vcomments"></div>
<script>
    new Valine({
        el: '#vcomments',
        appId: 'Rl0XrPgpK2Dfhp1ffLTvcrsD-gzGzoHsz',
        appKey: '6fXawARU0PuxwAYgRUP9gPMl'
    })
</script>
