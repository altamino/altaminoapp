.class final Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final _data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final _dataLength:I

.field _next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I

    .line 8
    return-void
.end method


# virtual methods
.method public copyData(Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    iget p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_dataLength:I

    .line 11
    add-int/2addr p2, p1

    .line 12
    return p2
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_data:Ljava/lang/Object;

    return-object v0
.end method

.method public linkNext(Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

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

.method public next()Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->_next:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    return-object v0
.end method
