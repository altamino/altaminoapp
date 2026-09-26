.class final Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field final _data:[Ljava/lang/Object;

.field _next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;

    .line 6
    return-void
.end method


# virtual methods
.method public getData()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_data:[Ljava/lang/Object;

    return-object v0
.end method

.method public linkNext(Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    throw p1
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->_next:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    return-object v0
.end method
