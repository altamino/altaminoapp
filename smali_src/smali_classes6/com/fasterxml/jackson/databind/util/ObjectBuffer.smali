.class public final Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;
    }
.end annotation


# static fields
.field static final INITIAL_CHUNK_SIZE:I = 0xc

.field static final MAX_CHUNK_SIZE:I = 0x40000

.field static final SMALL_CHUNK_SIZE:I = 0x4000


# instance fields
.field private _bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

.field private _bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

.field private _bufferedEntryCount:I

.field private _freeBuffer:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    .line 6
    :goto_0
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    .line 10
    move-result-object v3

    .line 11
    array-length v4, v3

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    add-int/2addr v2, v4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p3, v1, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    add-int/2addr v2, p4

    .line 25
    .line 26
    if-ne v2, p2, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string p4, "Should have gotten "

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p2, " entries, got "

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method protected _reset()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 19
    return-void
.end method

.method public appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;-><init>([Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->linkNext(Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferTail:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    .line 22
    :goto_0
    array-length p1, p1

    .line 23
    .line 24
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 25
    add-int/2addr v0, p1

    .line 26
    .line 27
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 28
    .line 29
    const/16 v0, 0x4000

    .line 30
    .line 31
    if-ge p1, v0, :cond_1

    .line 32
    add-int/2addr p1, p1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    shr-int/lit8 v0, p1, 0x2

    .line 36
    add-int/2addr p1, v0

    .line 37
    .line 38
    :goto_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    return-object p1
.end method

.method public bufferedSize()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I

    return v0
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferHead:Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v2

    .line 7
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    .line 8
    aget-object v4, v2, v1

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;->next()Lcom/fasterxml/jackson/databind/util/ObjectBuffer$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p2, :cond_2

    .line 10
    aget-object v0, p1, v1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v1
.end method

.method public completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    .line 3
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    return-object p3
.end method

.method public initialCapacity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    :goto_0
    return v0
.end method

.method public resetAndStart()[Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_reset()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    :cond_0
    return-object v0
.end method
