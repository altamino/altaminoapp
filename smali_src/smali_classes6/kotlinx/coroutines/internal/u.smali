.class public Lkotlinx/coroutines/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final _cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _cur:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_cur"

    const-class v2, Lkotlinx/coroutines/internal/u;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lkotlinx/coroutines/internal/v;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/v;-><init>(IZ)V

    .line 11
    .line 12
    iput-object v0, p0, Lkotlinx/coroutines/internal/u;->_cur:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/internal/v;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    if-eq v2, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    .line 25
    :cond_1
    sget-object v2, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->i()Lkotlinx/coroutines/internal/v;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v3
.end method

.method public final b()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/internal/v;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->d()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    sget-object v2, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->i()Lkotlinx/coroutines/internal/v;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/internal/v;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/v;->f()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/internal/v;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->j()Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    sget-object v3, Lkotlinx/coroutines/internal/v;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/i0;

    .line 15
    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    return-object v2

    .line 18
    .line 19
    :cond_0
    sget-object v2, Lkotlinx/coroutines/internal/u;->_cur$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->i()Lkotlinx/coroutines/internal/v;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    goto :goto_0
.end method
