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

<body package="Dijkstra" selector="id:">id: aSymbol
</methods>

<methods>
<class-id>Node class</class-id> <category>instance creation</category>

<body package="Dijkstra" selector="new">new
</methods>


<methods>
<class-id>Node</class-id> <category>accessing</category>

<body package="Dijkstra" selector="tryThroughMe">tryThroughMe

<body package="Dijkstra" selector="visited:">visited: anObject

<body package="Dijkstra" selector="explore">explore

<body package="Dijkstra" selector="distance:">distance: anObject

<body package="Dijkstra" selector="id">id

<body package="Dijkstra" selector="visited">visited

<body package="Dijkstra" selector="distance">distance

<body package="Dijkstra" selector="tryThroughMeTo:">tryThroughMeTo: anotherNode

<body package="Dijkstra" selector="neighbours">neighbours

<body package="Dijkstra" selector="id:">id: anObject

<body package="Dijkstra" selector="throughMeTo:">throughMeTo: anotherNode
</methods>

<methods>
<class-id>Node</class-id> <category>printing</category>

<body package="Dijkstra" selector="printString">printString
</methods>

<methods>
<class-id>Node</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="connectTo:length:">connectTo: anotherNode length: aNumber

<body package="Dijkstra" selector="initialize">initialize
</methods>


<methods>
<class-id>Dijkstra class</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="on:">on: aGraph
</methods>


<methods>
<class-id>Dijkstra</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="setGraph:">setGraph: aGraph

<body package="Dijkstra" selector="getNextNode">getNextNode

<body package="Dijkstra" selector="initialize">initialize

<body package="Dijkstra" selector="exploreNode:">exploreNode: aNode

<body package="Dijkstra" selector="findWayFrom:to:">findWayFrom: start to: end
</methods>


<methods>
<class-id>DijkstraTests class</class-id> <category>instance creation</category>

<body package="Dijkstra" selector="new">new
</methods>


<methods>
<class-id>DijkstraTests</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="initialize">initialize
</methods>

<methods>
<class-id>DijkstraTests</class-id> <category>running</category>

<body package="Dijkstra" selector="setUp">setUp
</methods>

<methods>
<class-id>DijkstraTests</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="testFromWiki">testFromWiki
</methods>


<methods>
<class-id>Graph class</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="withNodes:">withNodes: aCollectionOfSymbols
</methods>


<methods>
<class-id>Graph</class-id> <category>As yet unclassified</category>

<body package="Dijkstra" selector="nodeAt:">nodeAt: id
</methods>

<methods>
<class-id>Graph</class-id> <category>accessing</category>

<body package="Dijkstra" selector="nodes">nodes
</methods>

<methods>
<class-id>Graph</class-id> <category>initialize-release</category>

<body package="Dijkstra" selector="addNode:">addNode: aSymbol

<body package="Dijkstra" selector="initialize">initialize

<body package="Dijkstra" selector="connect:and:length:">connect: aNode and: anotherNode length: aNumber
</methods>



</st-source>