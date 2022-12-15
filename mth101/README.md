## IISERM MTH101 Symmetry

### Concepts Made Easy

#### Contents

- Group theory
  - [Partition a group through its cosets](#partition-a-group-through-its-cosets)
  - [Preserve group structure through homomorphisms](#preserve-group-structure-through-homomorphisms)
  - [Isomorphisms make the universe of groups smaller](#isomorphisms-make-the-universe-of-groups-smaller)
  - [Turn any homomorphism into an isomorphism](#turn-any-homomorphism-into-an-isomorphism)
  - [Generate groups from elements](#generate-groups-from-elements)
  - [New groups from old ones by taking quotients](#new-groups-from-old-ones-by-taking-quotients)
  - [Every group is simply a permutation group](#every-group-is-simply-a-permutation-group)
  - [Reduce any cyclic group to modular arithmetic](#reduce-any-cyclic-group-to-modular-arithmetic)

#### Partition a group through its cosets

Let $G$ be a group. Let $K$ be one of its subgroups. What that means is that $K$ is a group sitting inside the group $G$. Let's fix an element $a$ of $G$. Then we take the products $a \cdot x$ for all $x \in K$ and dump them into a set. Easily, this set is a subset of $G$; we call it a (left) coset of the subgroup $K$ and denote it by $aK$ (think of multiplying the elements of $K$ by $a$ from the left).

Cancellation laws turn left multiplications into bijections on $G$. That is, if $ax = ay$, then $x=y$. This easily implies that all $ax$ are distinct for distinct $x$. That is, the coset $aK$ and the subgroup $K$ has the same number of elements. Also, every element $a$ of $G$ is in some coset of $K$, namely $aK$.

Suppose $G$ is a finite group. From the above discussion, it might seem that there are as many cosets of $K$ as there are elements in $G$ since $aK$ is a coset whenever $a \in G$. Almost miraculously, it always happens that any two cosets of $K$ are either the same or are disjoint. We see that the disjoint union of all cosets equals the group $G$ itself. Let there be $n$ such distinct cosets. Therefore, we see that $n \cdot |K| = |G|$, a result so fundamental that it has a name of its own: [Lagrange's theorem](https://en.wikipedia.org/wiki/Lagrange%27s_theorem_(group_theory)).

#### Preserve group structure through homomorphisms

Let $G$ and $H$ be two groups. Imagine each element $a$ of $G$ having a copy $a^{\prime}$ in $H$ such that any operation $a \cdot b$ in $G$ mirrors the operation $a^{\prime} \cdot b^{\prime}$ in $H$. That is exactly what a homomorphism is! The map that takes $a$ to its copy $a^{\prime}$ is called a homomorphism. Thus, homomorphisms are a way of embedding a group structure $G$ into another group structure $H$. All elements of $G$ whose copy is the identity element of $H$ form a set called the kernel of the homomorphism. That is, if $\varphi: G \to H$ is a group homomorphism, then the kernel of $\varphi$ is the subset $\text{ker} \varphi = \lbrace a \in G \mid \varphi(a) = e \rbrace$ of $G$.

Note that distinct elements $a$ and $b$ of $G$ may have the same copy in $H$. Indeed, a trivial homomorphism is one where every element has the copy $e$ of $H$, that is, all elements are mapped to the identity of $H$. Also, some of the elements of $H$ may not be copies of elements of $G$. This is to say that the homomorphism map may neither be one-to-one nor onto.

#### Isomorphisms make the universe of groups smaller

Imagine a homomorphism $\varphi : G \to H$ which is both one-to-one and onto. Any two distinct elements $a$ and $b$ of $G$ will have distinct copies $a^{\prime}$ and $b^{\prime}$ in $H$. Further, any element $c^\{\prime}$ of $H$ is a copy of some unique $c$ in $G$. What does it say about groups $G$ and $H$? Well, they are exactly the same copies as well. $G$ and $H$ are indistinguishable from each other &mdash; just replace the symbol $G$, each element $a$ of $G$ and group operation on $G$ by the symbol $H$, the copy $a^{\prime}$ in $H$ and group operation on $H$ or vice versa. As with homomorphism, the map that gives the copies is called the isomorphism. Think of two isomorphic groups as two exactly same groups but only with different names of their elements.

The above discussion implies that if $G$ and $H$ are isomorphic, then we need to study only one of them (the other is just an exact copy). This makes the study of groups a lot easier by reducing the number of groups we study.

#### Turn any homomorphism into an isomorphism

Isomorphism is a homomorphism which is also a bijection. Maybe if we knew how to turn any map into a bijection, then we might just be able to turn any homomorphism into an isomorphism. Let $f: A \to B$ be any map. Making $f$ onto is just a child's play &mdash; simply remove all elements from $B$ which do not have pre-images in $A$. But how to make $f$ one-to-one? Take an element $b$ of $B$ and pile up all elements $f^{-1}(b)$ of $A$ whose image is $b$ into a set and then map it to $b$. Doing this for all elements of $B$ makes $f$ one-to-one, except that $f$ now maps subsets of $A$ to $B$ instead of elements of $A$ to $B$. Let's call this new map $\tilde{f}$ to differentiate it from $f$. Also, let's use the notation $A/K$ to denote the collection of these subsets of $A$ and $\text{img}f$ to denote the image of $f$. Then given any map $f: A \to B$, there exists a unique bijection 

$$ \tilde{f} : A/K \to \text{img}f .$$

This is the first isomorphism theorem stated in terms of sets. The same applies to groups, except $K$ is the kernel of the homomorphism $f$. The quotient $A/K$ is group of the left cosets of $K$ in $A$. More on quotient groups later.

#### Generate groups from elements

The group $\langle a \rangle$ generated by an element $a$ is simply all powers of $a$. This is a cyclic group. Without further conditions, this is an infinite cyclic group isomorphic to $\mathbb{Z}$ and we may write $\langle a \rangle = \lbrace \ldots, a^{-n}, \ldots, a^{-2}, a^{-1}, e, a, a^2, \ldots, a^n, \ldots \rbrace $. If we impose some conditions (say $a^n = e$), then it becomes the finite cyclic group of order $n$, which is $\lbrace e, a, a^2, a^{n-1} \rbrace$.

Fix a group $G$. Take a set $S$ of elements of $G$. Suppose $S = \lbrace a, b, c, \ldots \rbrace$. The subgroup $\langle S \rangle$ of $G$ generated by $S$, also denoted by $\langle a, b, c, \ldots\rangle$, is the smallest subgroup of $G$ that contains $S$. Therefore, it contains all possible powers of $a$, $b$, $c$, $\ldots$, $a+b$, $b+c$, $\ldots$, $a-b$, $\ldots$, and so on (literally all possible operations on these elements).

#### New groups from old ones by taking quotients

If we recall our treatment on the first isomorphism theorem, we saw a new group structure in the form of $G/K$. This is the group of all the (left) cosets of $K$. Can we take just about any subgroup $K$ of $G$, dump all cosets of $K$ into a set and get a group out of it? Turns out, $K$ can't be just any subgroup. It necessarily has to be a normal subgroup.

A normal subgroup $N$ of $G$ is one satisfying the property $gN = Ng$ for every $g \in G$. Normal subgroups also satisfy another important property: $N^2 = N$. If $N$ is normal, then the quotient $G/N$ (read $G$ mod $N$) is the group of all cosets of $N$. By Lagrange's theorem, $| G/N | = |G|/|N|$. Thus, we have made a smaller group $G/N$ out of a given group $G$ by identifying a normal subgroup $N$ of $G$. But, what does $G/N$ look like? We may write $G/N = \lbrace aN, bN, \ldots \rbrace$. The group operation is defined by $aN \cdot bN = abN^2 = abN$. Intuition tells us that $N = eN$ is the identity, which is easily verified as $aN \cdot eN = aN^2 = aN = N^2a = eN \cdot aN$. For any $aN \in G/N$, we have $aN \cdot a^{-1}N = aa^{-1}N^2 = eN = a^{-1}a N^2 = a^{-1}N \cdot aN$ so that $a^{-1}N$ is the inverse of $aN$. In this way, we have completely specified what a quotient group $G/N$ looks like.

There is another equivalent way of looking at quotient groups. Suppose, as usual, $N$ is a normal subgroup of $G$. Let us define an equivalence relation on $G$ by declaring $a \sim b$ iff $aN = bN$. The equivalence class $[a]$ is then the set of all $b\in G$ such that $aN = bN$. Thus, $a$ and $b$ belong to the same coset if and only if they belong to the same equivalence class. We conclude that $[a] = aN$. Then we may write $G/N = \lbrace [a], [b], \ldots \rbrace$, where the equivalent classes are pairwise disjoint and their disjoint union equals the group $G$. Therefore, $G/N$ is a partition on $G$ consisting of equivalent classes $[a]$ (which are just cosets $aN$) and their operation is defined by $[a][b] = [ab]$, which is simply restating the operation $aN \cdot bN = abN$.

#### Every group is simply a permutation group

A permutation of a set is a bijection from the set to itself. We are simply rearranging the elements. Let $S_n$ be the set of all permutations of the set $\lbrace 1, 2, \ldots \rbrace$. If $\sigma, \pi \in S_n$ are two permutations, then their composition $\sigma\pi$ is also a permutation (because composition of bijections is still a bijection). This composition is associative. The identity map, denoted by $(1)$ can serve as identity permutation. Also, the inverse of any permutation $\sigma$ is given by its inverse map (since it is bijection). Therefore, $S_n$ is a group and $|S_n| = n!$ (the number of permutations of $n$ objects). This group $S_n$ is called the symmetric group. Any subgroup of $S_n$ is called a permutation group. In general, a permutation group is simply a group of permutations.

Let $G$ be a group. We fix an element $g \in G$. The left multiplication by $g$ defined by $l_g(x) = gx$ for every $x \in G$ is a bijection on $G$ and thus may be considered as a permutation on $G$. It is easy to see why $l_g$ is bijection. It is one-to-one because $gx = gy$ implies $x = y$ (by cancellation). It is onto because every $y \in G$ has the pre-image $g^{-1}y$ for $g(g^{-1}y) = y$. Thus, every element $g$ of $G$ gives rise to a permutation $l_g$ on $G$. Let's dump all these permutations $l_g$ into a set $G^{\prime}$. It is easy to see that $G^{\prime}$ is a group with the identity element $l_e$. The group operation is simply composition of bijections. The inverse of $l_g$ is $l_{g^{-1}}$. Indeed, $G^{\prime}$ is a permutation group.

A slightly more careful look reveals the isomorphism between $G$ and $G^{\prime}$. Simply map every $g$ to $l_g$. The bijectivity holds trivially by our construction. The homomorphism condition is verified easily. Therefore, every group is isomorphic to a permutation group. This result is so fundamental that it goes by a name: [Cayley's theorem](https://en.wikipedia.org/wiki/Cayley%27s_theorem).

#### Reduce any cyclic group to modular arithmetic

Any cyclic group, no matter who complicated it looks, is simply an operation on some integers. There is only one infinite cyclic group which is isomorphic to $\mathbb{Z}$. Every finite cyclic group of order $n$ is isomorphic to $\mathbb{Z}/n\mathbb{Z}$. To see this, let $C_n$ be a cyclic group of order $n$ and we may write $C_n = \lbrace e, a, a^2, \ldots, a^{n-1} \rbrace $. Let $\varphi : \mathbb{Z}/n\mathbb{Z} \to 

