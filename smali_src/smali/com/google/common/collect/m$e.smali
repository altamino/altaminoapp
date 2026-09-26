.class abstract Lcom/google/common/collect/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field expectedMetadata:I

.field indexToRemove:I

.field final synthetic this$0:Lcom/google/common/collect/m;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/m;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/m$e;->this$0:Lcom/google/common/collect/m;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/m;->a(Lcom/google/common/collect/m;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/m$e;->expectedMetadata:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/m;->D()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/m$e;->indexToRemove:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/m;Lcom/google/common/collect/m$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/m$e;-><init>(Lcom/google/common/collect/m;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$e;->this$0:Lcom/google/common/collect/m;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Lcom/google/common/collect/m;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/google/common/collect/m$e;->expectedMetadata:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 17
    throw v0
.end method


# virtual methods
.method abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method c()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/m$e;->expectedMetadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/m$e;->expectedMetadata:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/m$e;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/m$e;->hasNext()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/common/collect/m$e;->indexToRemove:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/common/collect/m$e;->b(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/common/collect/m$e;->this$0:Lcom/google/common/collect/m;

    .line 20
    .line 21
    iget v2, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/google/common/collect/m;->E(I)I

    .line 25
    move-result v1

    .line 26
    .line 27
    iput v1, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    .line 28
    return-object v0

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 34
    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/m$e;->a()V

    .line 4
    .line 5
    iget v0, p0, Lcom/google/common/collect/m$e;->indexToRemove:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/k;->c(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/common/collect/m$e;->c()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/collect/m$e;->this$0:Lcom/google/common/collect/m;

    .line 19
    .line 20
    iget v1, p0, Lcom/google/common/collect/m$e;->indexToRemove:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/google/common/collect/m;->e(Lcom/google/common/collect/m;I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/common/collect/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/common/collect/m$e;->this$0:Lcom/google/common/collect/m;

    .line 30
    .line 31
    iget v1, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    .line 32
    .line 33
    iget v2, p0, Lcom/google/common/collect/m$e;->indexToRemove:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/m;->r(II)I

    .line 37
    move-result v0

    .line 38
    .line 39
    iput v0, p0, Lcom/google/common/collect/m$e;->currentIndex:I

    .line 40
    const/4 v0, -0x1

    .line 41
    .line 42
    iput v0, p0, Lcom/google/common/collect/m$e;->indexToRemove:I

    .line 43
    return-void
.end method
