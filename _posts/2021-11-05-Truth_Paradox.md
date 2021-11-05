---
layout: post
title:  "issues concerning Truth and (degree of) Paradox "
date:   2021-11-05 20:49:31 +0800
categories: logic truth
---

<head>
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
</head>

### Truth and probability: 

In Leitgeb (2016, p.14), Hannes mentioned a paradox with probabilities: *Finally, originating from a very diﬀerent background—formal theories of truth and the study of semantic paradoxes (such as the famous Liar paradox)—Leitgeb (2012) even allows for type-free probabilities: he presents diﬀerent systems of probabilistic logic in which probabilities are ascribed to formulas that may speak about their own probabilities,such as a formula α that is provably equivalent to $P(α) < 1$ (so that α may be said to express: my probability is less than 1).*

<br/>

### Truth and epistemology: 

In Bas van Fraassen's [blog](https://basvanfraassensblog.home.blog/2020/04/07/a-memory-of-frederick-fitch-1/) in memory of Fitch, van Fraassen mentioned a "a true proposition that is not known even by God" Charles (Danny) Daniels came up with:

<br/>

*This proposition is not known to be true by anyone.*

*If it is false, then obviously it is not known to be true by anyone, so what it says is the case, so it is not false. Fine, it is not false — therefore it is true. Being true, what it says is the case, so it is not known to be true by anyone. Here is a true proposition that is not known even by God! Corollary: God is not omniscient!*

*Danny, Danny, we said, God was listening, so now he knows! Well, that led to more paradoxical conclusions ….*

<br/>

Rumsfield stated:

*because as we know, there are known knowns; there are things we know we know. We also know there are known unknowns; that is to say we know there are some things we do not know. But there are also unknown unknowns—the ones we don't know we don't know.* 

<br/>

### What does Prior say?

Prior (1971) outlines a system of propositional quantification, the language of propositional logic with a propositional quantifier, $\forall$, which is allowed to bind propositional letters such as $p, q, r, …$ and propositional identity, in which Prior proves 

$\delta (\exists p( \delta p \wedge \neg p)) . \supset . \neg \exists p(p = (\exists q(\delta q \wedge \neg q)) \wedge \delta p \wedge \neg p)$

is a theorem of logic, where ‘$\delta$’ is a unary sentential connective("a sentential operator of the appropriate sort") and ‘$=$’ is a binary sentential connective for propositional identity(‘$\delta p$’ could be read as ‘it is said in the book that $p$’ and ‘$p = q$’ is read as ‘that $p$ is the very same proposition as that $q$’). Formation rule: If $A$ and $B$ are wffs then $(A=B)$ is a wff. 

The axiom schemata are:

<br/>

**($\forall$1)**. $\forall x A→A(y/x)$,

provided $y$ is free for $x$ in $A$.

**($\forall$2)**. $\forall x(A \rightarrow B) \rightarrow (A \rightarrow \forall x B)$,

provided $x$ does not occur free in $A$.

**($\forall$3)**. from $A$, infer $\forall x A$.

<br/>

Prior thinks that the logic of propositional identity is given by all instances of

<br/>

*Axiom schema 1*: $A = A$

and all instances of

*Axiom schema 2*: $A = B . \supset . C = C(A/B)$

where $A, B, C$ stand for sentences, and where $C(A/B)$ stands for a sentence which differs from $C$ in that at least one occurrence of $B$ in $C$ is replaced by the sentence $A$.

<br/>

For each sentence of a set of sentences, we could either affirm or deny it. In that respect, we could regard a set of sentences as boolean equations, e.g. the two sentences, "At least one of sentences ($p$) and ($q$) is true." ($p$), "Sentences ($p$) is false." ($q$), in symobl, we use "$:=$" to abbreviate "refer to", then $p := p \lor q, q := \neg p$, a solution of the equations is $p = T, q = F$, i.e. we could consistently hold that $p$ is true and $q$ is false.

There are some statements with different "degrees of paradox". In Prior (1961, p.16), Prior states, "Some paradoxical statements are, on the face of it, awkward for the propounder only," for example, it is said by a Cretan that "whatever is said by a Cretan is not the case."(Call it (**$C$**) It's just a false statement, for if it is true, it is false. "while some are also awkward for the looker-on." For example the liar paradox. It truly is a paradox, for if it is true, it is false; if it is false, it is true. 

Meanwhile, if "it is said by a Cretan that whatever is said by a Cretan is not the case", then there are at least two things said by a Cretan. So, quite surprisingly, it is inconsistent to assume that the only thing said by a Cretan is that whatever is said by a Cretan is not the case.

They have different "degrees of paradox". Liar paradox is just a paradox(in a bivalence setting); while **we could consistently assume that (**$C$**) is false, there are natural cases in which it is a paradox**-(**$C$**) is said by a Cretan and nothing else is said by any Cretans-such situations is entirely conceivable (or you think "unless something else is said by a Cretan (feared by a schizophrenic, possible, false, etc.) it cannot be said by a Cretan (feared by a schizophrenic, etc.) that nothing (or not everything) that is said by a Cretan (feared by a schizophrenic, etc.) is the case. If nothing else is said by any Cretan (even Epimenides) then indeed it is impossible for Epimenides the Cretan to say that nothing said by a Cretan is the case; whatever noises he makes, he will not under those circumstances be able to say that by them; though oddly enough the thing itself—that nothing said by a Cretan is the casewill under those circumstances be true, simply because there will under those circumstances be no Cretan assertions at all").

The "more modest assertion by a Cretan that not everything said by Cretans is the case, i.e. that at least something said by a Cretan is not the case—this is not, like the more sweeping Cretan assertion considered earlier, something that one cannot consistently suppose true. It is, however, something that one cannot consistently suppose false; for if it were false that some Cretan assertions are false, the truth would then be that no Cretan assertions are false, and so not this one either. But what this true assertion says is that at least one Cretan assertion is false; this cannot be the Cretan assertion we know about, for that one is not false, so if this Cretan assertion is so much as made (not only 'if it is true'—if it is made, it is true), there must be some other Cretan assertion beside it."(Prior 1961, p.18)

This more modest assertion is a statement that **we could consistently hold that it is true, but there are natural cases that it is a paradox.** Similar example is "All the errors in this book are my own"...

And more complicated cases are: a policeman who testifies that nothing the prisoner says is true, while the prisoner says that something the policeman says is true; A says that 1 and 1 are 2—a truth. B says that 2 and 2 are 4—a truth. C says that 2 and 2 are 5—a falsehood, and so on... 

Supplmented with the first order quantification logic plus formulaic quantification and formulaic identity, we may be able to compare the "degrees of paradox" of these different statements, with appropriate semantics (e.g. set-theoretic), e.g. the formulaic operator, or predicate for formulas $S_{\forall}$ may be $M \models (S_{\forall}(P)) \ iff \ P^M \in S_{\forall}^M$, where $P$ is a formula whose intepretation when treated as a constant or variable is itself, and $S_{\forall}^M$ is the set of all universal formulas. We compare the degrees of paradox of two sets of sentences by comparing the amounts of cases in which they are inconsistent. We could easily think of infinite cases in which a sentences is inconsistent (if there is one), by adding arbitrary conditions to the situation. So we only consider the "relevant cases", we treat them as just one cases, and only "relevant" predicates will be considered.

And with predicates like $R$ with which $Rpq$ represents that $q$ is the substituted result of $p$, ...It may reach the similar ability to express metamathematics as Gödel's coding.

<br/>

### Quantification of logical constants: 

Alfred Tarski found the solution to eliminate the connective of conjunction in terms of equivalence: 

*It consisted in quantifying not just sentences but sentential functions or connectives:*

**(Def. ∧)**. $\forall pq┌p \wedge q \leftrightarrow \forall f┌p \leftrightarrow (f(p) \leftrightarrow f(q))┐┐$
 
*in this case, quantifying one-place connectives. Assuming there are just four of these connectives, assertion, negation, Verum (tautology) and Falsum (contradiction), it is straightforward to show that the right-hand side is equivalent to the conjunction of p and q. Tarski’s doctoral dissertation centres around this result.*(Thanks for [Conifold](https://philosophy.stackexchange.com/users/9148/conifold) mentioned that)

We noted that it is possible to augment systems by adding quantification of logical constants(connectives, boolean, intensional, modality....).
 
<br/>

### Reference:

[1] Leitgeb, H., 2016: “Probability in Logic”, Oxford Handbook of Probability and Philosophy, edited by A. Hájek and Chris Hitchcock. Oxford University Press. available here: https://www.academia.edu/8300816/Probability_in_Logic (2021. 11. 01)

[2] van Fraassen, B., 2020: “A memory of Frederick Fitch (1) Heaven”. https://basvanfraassensblog.home.blog/2020/04/07/a-memory-of-frederick-fitch-1/ (2021.11.01)

[3] Uzquiano, Gabriel, "Quantifiers and Quantification", The Stanford Encyclopedia of Philosophy (Summer 2020 Edition), Edward N. Zalta (ed.), URL = <https://plato.stanford.edu/archives/sum2020/entries/quantification/>.

[4] Prior, A.N., 1961, “On a family of paradoxes”, Notre Dame Journal of Formal Logic, 2(1): 16–32. [Prior 1957 available online](http://projecteuclid.org/euclid.ndjfl/1093956750)
        
[5] Prior, A.N., 1971, Objects of thought, P.T. Geach and A.J.P. Kenny (eds.), Oxford: Clarendon Press.

[6] Simons, Peter, "Stanisław Leśniewski", The Stanford Encyclopedia of Philosophy (Fall 2020 Edition), Edward N. Zalta (ed.), URL = <https://plato.stanford.edu/archives/fall2020/entries/lesniewski/>.

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
