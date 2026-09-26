.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Array"
.end annotation


# instance fields
.field protected _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _currentNode:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    .line 11
    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ContainerNode;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ContainerNode;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_contents:Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->_currentNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/TreeNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$Array;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
