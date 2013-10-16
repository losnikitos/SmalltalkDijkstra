<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.9.1 of October 18, 2012 on October 4, 2013 at 12:35:59 PM</time-stamp>


<component-created>
<name>Dijkstra</name> <type>package</type>
</component-created><!-- Package Dijkstra* -->


<component-created>
<name>Dijkstra</name> <type>package</type>
</component-created>

<class>
<name>Node</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id distance connections visited </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Dijkstra</package>
</attributes>
</class>

<class>
<name>Dijkstra</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>graph nodesToVisit distances </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Dijkstra</package>
</attributes>
</class>

<class>
<name>Graph</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>nodes </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Dijkstra</package>
</attributes>
</class>

<class>
<name>DijkstraTests</name>
<environment>Smalltalk</environment>
<super>XProgramming.SUnit.SUnitTest</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>graph dijkstra </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Dijkstra</package>
</attributes>
</class>

<methods>
<class-id>Node class</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="id:">id: aSymbol	^(self new)		initialize;		id: aSymbol;		yourself</body>
</methods>

<methods>
<class-id>Node class</class-id> <category>instance creation</category>

<body package="Dijkstra" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Node</class-id> <category>accessing</category>

<body package="Dijkstra" selector="tryThroughMe">tryThroughMe	self neighbours do: [:neighbour | self tryThroughMeTo: neighbour]</body>

<body package="Dijkstra" selector="visited:">visited: anObject	visited := anObject</body>

<body package="Dijkstra" selector="explore">explore	self tryThroughMe;		visited: true</body>

<body package="Dijkstra" selector="distance:">distance: anObject	distance := anObject</body>

<body package="Dijkstra" selector="id">id	^id</body>

<body package="Dijkstra" selector="visited">visited	^visited</body>

<body package="Dijkstra" selector="distance">distance	^distance</body>

<body package="Dijkstra" selector="tryThroughMeTo:">tryThroughMeTo: anotherNode	| alternativeWay |	alternativeWay := self throughMeTo: anotherNode.	alternativeWay &lt; anotherNode distance		ifTrue: [anotherNode distance: alternativeWay]</body>

<body package="Dijkstra" selector="neighbours">neighbours	^connections keys reject: [:node | node visited]</body>

<body package="Dijkstra" selector="id:">id: anObject	id := anObject</body>

<body package="Dijkstra" selector="throughMeTo:">throughMeTo: anotherNode	^distance + (connections at: anotherNode)</body>
</methods>

<methods>
<class-id>Node</class-id> <category>printing</category>

<body package="Dijkstra" selector="printString">printString	^'Node #', self id printString</body>
</methods>

<methods>
<class-id>Node</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="connectTo:length:">connectTo: anotherNode length: aNumber	connections add: anotherNode -&gt; aNumber</body>

<body package="Dijkstra" selector="initialize">initialize	distance := 1000.	connections := Dictionary new.	visited := false</body>
</methods>


<methods>
<class-id>Dijkstra class</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="on:">on: aGraph	| dijkstra |	dijkstra := self new.	dijkstra  initialize.	dijkstra setGraph: aGraph.	^dijkstra</body>
</methods>


<methods>
<class-id>Dijkstra</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="setGraph:">setGraph: aGraph	graph := aGraph.</body>

<body package="Dijkstra" selector="getNextNode">getNextNode	| notVisited nextNode |	notVisited := graph nodes reject: [:node | node visited].	notVisited isEmpty ifTrue: [^nil].	nextNode := notVisited first.	notVisited inject: nextNode distance		into: [:currentMinDistance :newNode | newNode distance &lt; currentMinDistance ifTrue: [nextNode := newNode. newNode distance] ifFalse: [currentMinDistance]].	^nextNode</body>

<body package="Dijkstra" selector="initialize">initialize	nodesToVisit := OrderedCollection new.	distances := Dictionary new</body>

<body package="Dijkstra" selector="exploreNode:">exploreNode: aNode	aNode tryThroughMe.	aNode visited: true.	self getNextNode ifNotNil: [:node | self exploreNode: node]</body>

<body package="Dijkstra" selector="findWayFrom:to:">findWayFrom: start to: end	start distance: 0.	self exploreNode: start.	^end distance</body>
</methods>


<methods>
<class-id>DijkstraTests class</class-id> <category>instance creation</category>

<body package="Dijkstra" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>DijkstraTests</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>DijkstraTests</class-id> <category>running</category>

<body package="Dijkstra" selector="setUp">setUp	super setUp.	graph := Graph withNodes: #(1 2 3 4 5 6).	graph		connect: 1 and: 3 length: 9;		connect: 1 and: 2 length: 7;		connect: 1 and: 6 length: 14;		connect: 3 and: 6 length: 2;		connect: 2 and: 4 length: 15;		connect: 3 and: 4 length: 11;		connect: 6 and: 5 length: 9;		connect: 4 and: 5 length: 6.	dijkstra := Dijkstra on: graph</body>
</methods>

<methods>
<class-id>DijkstraTests</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="testFromWiki">testFromWiki	self should: [(dijkstra findWayFrom: (graph nodeAt: 1) to: (graph nodeAt: 5)) = 20]</body>
</methods>


<methods>
<class-id>Graph class</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="withNodes:">withNodes: aCollectionOfSymbols	|graph|	graph := self new.	graph initialize.	aCollectionOfSymbols do: [:node | graph addNode: node].	^graph</body>
</methods>


<methods>
<class-id>Graph</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="nodeAt:">nodeAt: id	^nodes at: id</body>
</methods>

<methods>
<class-id>Graph</class-id> <category>accessing</category>

<body package="Dijkstra" selector="nodes">nodes	^nodes</body>
</methods>

<methods>
<class-id>Graph</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="addNode:">addNode: aSymbol	nodes add: (Node id: aSymbol)</body>

<body package="Dijkstra" selector="initialize">initializenodes := OrderedCollection new</body>

<body package="Dijkstra" selector="connect:and:length:">connect: aNode and: anotherNode length: aNumber	(nodes at: aNode) connectTo: (nodes at: anotherNode) length: aNumber.	(nodes at: anotherNode) connectTo: (nodes at: aNode) length: aNumber</body>
</methods>



</st-source>
