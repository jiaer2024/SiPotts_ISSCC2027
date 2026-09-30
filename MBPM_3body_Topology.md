# MBPM 3-Body Topology

The MBPM 3-body topology is a local star of eight possible triangular interactions around each reference spin. Each triangle is one **3-body hyperedge**, with a distinguished reference port and two interchangeable receiver ports.

## 1\. Nodes and hyperedges

For an array with $m$ rows and $n$ columns, define

$$
V\_{m,n}={H\[r,c]\\mid 0\\le r<m,;0\\le c<n}.
$$

An interaction owned by $H\[r,c]$ is

$$
e\_d(r,c)=\\bigl(\\mathrm{Ref};{a,b}\\bigr)
=\\bigl(H\[r,c];{H\[r+\\Delta r\_a,c+\\Delta c\_a],
H\[r+\\Delta r\_b,c+\\Delta c\_b]}\\bigr).
$$

Here $d$ selects one of the eight directions below. Ref is the owner and phase reference; $a,b$ are receivers. The triangle represents a joint relation among all three spins.

## 2\. Eight directions

Offsets are measured from Ref in hardware coordinates $H\[r,c]$. Direction names are hardware labels; UI orientation does not change these offsets.

|Direction $d$|Receiver $a$ offset|Receiver $b$ offset|Receiver pair|
|-|-|-|-|
|N|$(-1,-1)$|$(-1,+1)$|NW, NE|
|W|$(-1,-1)$|$(+1,-1)$|NW, SW|
|S|$(+1,-1)$|$(+1,+1)$|SW, SE|
|E|$(-1,+1)$|$(+1,+1)$|NE, SE|
|NW|$(-1,0)$|$(0,-1)$|N, W|
|NE|$(-1,0)$|$(0,+1)$|N, E|
|SW|$(+1,0)$|$(0,-1)$|S, W|
|SE|$(+1,0)$|$(0,+1)$|S, E|

The first four triangles pair diagonal neighbors; the last four pair orthogonal neighbors. Swapping $a$ and $b$ gives the same interaction.

Example:

$$
e\_{\\mathrm N}(4,5)=\\bigl(H\[4,5];{H\[3,4],H\[3,6]}\\bigr).
$$

## 3\. Open boundaries and connectivity

A hyperedge exists only when **all three endpoints** lie inside the array:

$$
\\mathcal E\_3={e\_d(r,c)\\mid \\mathrm{Ref},a,b\\in V\_{m,n}}.
$$

Out-of-range triangles are inactive. There is no row or column wraparound.

For a spin sufficiently far from the boundary,

$$
N\_{\\mathrm{owned}}=8,\\qquad
N\_{\\mathrm{receiver}}=16,\\qquad
\\deg\_3=8+16=24.
$$

Each physical interaction is counted once at its Ref. Boundary spins have fewer incident interactions.

## 4\. Relation assigned to each triangle

Each hyperedge selects one native function $F\_i$ from the library for $q\\in{2,3,4}$; all eight directions support the same function library. For example, the $q=4$ F2 relation is

$$
R\_{F2}(x\_{\\mathrm{Ref}},x\_a,x\_b)
\\iff
(x\_a=x\_{\\mathrm{Ref}}\\land x\_b=x\_{\\mathrm{Ref}}+1)
\\lor
(x\_b=x\_{\\mathrm{Ref}}\\land x\_a=x\_{\\mathrm{Ref}}+1)
\\pmod 4.
$$

Here $x\\in\\mathbb Z\_4$ is the spin state. Ref belongs to the equal-state pair, and the other receiver leads that pair by $90^\\circ$. Topology counts describe available triangles; simultaneous activation limits remain unconfirmed.

