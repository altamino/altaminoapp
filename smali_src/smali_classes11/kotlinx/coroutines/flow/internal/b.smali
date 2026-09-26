.class public abstract Lkotlinx/coroutines/flow/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/flow/internal/d<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n28#2,4:144\n20#3:137\n20#3:142\n20#3:148\n1#4:143\n13579#5,2:149\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n30#1:133,4\n45#1:138,4\n76#1:144,4\n30#1:137\n45#1:142\n76#1:148\n95#1:149,2\n*E\n"
.end annotation


# instance fields
.field private _subscriptionCount:Lkotlinx/coroutines/flow/internal/y;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nCollectors:I

.field private nextIndex:I

.field private slots:[Lkotlinx/coroutines/flow/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic f(Lkotlinx/coroutines/flow/internal/b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 3
    return p0
.end method

.method public static final synthetic g(Lkotlinx/coroutines/flow/internal/b;)[Lkotlinx/coroutines/flow/internal/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/b;->slots:[Lkotlinx/coroutines/flow/internal/d;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final d()Lkotlinx/coroutines/flow/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/l0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/b;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/y;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lkotlinx/coroutines/flow/internal/y;

    .line 8
    .line 9
    iget v1, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/internal/y;-><init>(I)V

    .line 13
    .line 14
    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/b;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw v0
.end method

.method protected final h()Lkotlinx/coroutines/flow/internal/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/b;->slots:[Lkotlinx/coroutines/flow/internal/d;

    .line 4
    const/4 v1, 0x2

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/internal/b;->j(I)[Lkotlinx/coroutines/flow/internal/d;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/b;->slots:[Lkotlinx/coroutines/flow/internal/d;

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    iget v2, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 18
    array-length v3, v0

    .line 19
    .line 20
    if-lt v2, v3, :cond_1

    .line 21
    array-length v2, v0

    .line 22
    mul-int/2addr v2, v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "copyOf(this, newSize)"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object v1, v0

    .line 33
    .line 34
    check-cast v1, [Lkotlinx/coroutines/flow/internal/d;

    .line 35
    .line 36
    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/b;->slots:[Lkotlinx/coroutines/flow/internal/d;

    .line 37
    .line 38
    check-cast v0, [Lkotlinx/coroutines/flow/internal/d;

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/internal/b;->nextIndex:I

    .line 41
    .line 42
    :cond_2
    aget-object v2, v0, v1

    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/b;->i()Lkotlinx/coroutines/flow/internal/d;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 53
    array-length v3, v0

    .line 54
    .line 55
    if-lt v1, v3, :cond_4

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    :cond_4
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/flow/internal/d;->a(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iput v1, p0, Lkotlinx/coroutines/flow/internal/b;->nextIndex:I

    .line 70
    .line 71
    iget v0, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 72
    const/4 v1, 0x1

    .line 73
    add-int/2addr v0, v1

    .line 74
    .line 75
    iput v0, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 76
    .line 77
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/b;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/internal/y;->Z(I)Z

    .line 84
    :cond_5
    return-object v2

    .line 85
    :goto_1
    monitor-exit p0

    .line 86
    throw v0
.end method

.method protected abstract i()Lkotlinx/coroutines/flow/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected abstract j(I)[Lkotlinx/coroutines/flow/internal/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final k(Lkotlinx/coroutines/flow/internal/d;)V
    .locals 6
    .param p1    # Lkotlinx/coroutines/flow/internal/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 4
    const/4 v1, -0x1

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    iput v0, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    .line 8
    .line 9
    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/b;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/y;

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput v3, p0, Lkotlinx/coroutines/flow/internal/b;->nextIndex:I

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    :goto_0
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/internal/d;->b(Ljava/lang/Object;)[Lkotlin/coroutines/d;

    .line 26
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    array-length v0, p1

    .line 29
    .line 30
    :goto_1
    if-ge v3, v0, :cond_2

    .line 31
    .line 32
    aget-object v4, p1, v3

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    sget-object v5, Lw7/v;->Companion:Lw7/v$a;

    .line 37
    .line 38
    sget-object v5, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-interface {v4, v5}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_2
    if-eqz v2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/flow/internal/y;->Z(I)Z

    .line 54
    :cond_3
    return-void

    .line 55
    :goto_2
    monitor-exit p0

    .line 56
    throw p1
.end method

.method protected final l()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/internal/b;->nCollectors:I

    return v0
.end method

.method protected final m()[Lkotlinx/coroutines/flow/internal/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/b;->slots:[Lkotlinx/coroutines/flow/internal/d;

    return-object v0
.end method
