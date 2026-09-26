.class public Lx7/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"
.end annotation


# instance fields
.field private expectedModCount:I

.field private index:I

.field private lastIndex:I

.field private final map:Lx7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx7/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx7/d;)V
    .locals 1
    .param p1    # Lx7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lx7/d$d;->map:Lx7/d;

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lx7/d$d;->lastIndex:I

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lx7/d;->h(Lx7/d;)I

    .line 17
    move-result p1

    .line 18
    .line 19
    iput p1, p0, Lx7/d$d;->expectedModCount:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lx7/d$d;->f()V

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lx7/d$d;->map:Lx7/d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lx7/d;->h(Lx7/d;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lx7/d$d;->expectedModCount:I

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

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lx7/d$d;->index:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lx7/d$d;->lastIndex:I

    return v0
.end method

.method public final e()Lx7/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx7/d<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lx7/d$d;->map:Lx7/d;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget v0, p0, Lx7/d$d;->index:I

    .line 3
    .line 4
    iget-object v1, p0, Lx7/d$d;->map:Lx7/d;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lx7/d;->g(Lx7/d;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lx7/d$d;->map:Lx7/d;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lx7/d;->j(Lx7/d;)[I

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p0, Lx7/d$d;->index:I

    .line 19
    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    iput v1, p0, Lx7/d$d;->index:I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx7/d$d;->index:I

    return-void
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx7/d$d;->lastIndex:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lx7/d$d;->index:I

    .line 3
    .line 4
    iget-object v1, p0, Lx7/d$d;->map:Lx7/d;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lx7/d;->g(Lx7/d;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx7/d$d;->a()V

    .line 4
    .line 5
    iget v0, p0, Lx7/d$d;->lastIndex:I

    .line 6
    const/4 v1, -0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lx7/d$d;->map:Lx7/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lx7/d;->q()V

    .line 14
    .line 15
    iget-object v0, p0, Lx7/d$d;->map:Lx7/d;

    .line 16
    .line 17
    iget v2, p0, Lx7/d$d;->lastIndex:I

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Lx7/d;->l(Lx7/d;I)V

    .line 21
    .line 22
    iput v1, p0, Lx7/d$d;->lastIndex:I

    .line 23
    .line 24
    iget-object v0, p0, Lx7/d$d;->map:Lx7/d;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lx7/d;->h(Lx7/d;)I

    .line 28
    move-result v0

    .line 29
    .line 30
    iput v0, p0, Lx7/d$d;->expectedModCount:I

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Call next() before removing element from the iterator."

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0
.end method
