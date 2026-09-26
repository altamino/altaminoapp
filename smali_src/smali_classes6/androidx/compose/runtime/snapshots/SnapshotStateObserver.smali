.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 IdentityScopeMap.kt\nandroidx/compose/runtime/collection/IdentityScopeMap\n+ 6 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n*L\n1#1,267:1\n1182#2:268\n1161#2,2:269\n66#3:271\n66#3:272\n66#3:326\n66#3:380\n460#4,7:273\n467#4,4:322\n460#4,7:327\n467#4,4:376\n460#4,11:381\n460#4,11:392\n546#4,11:403\n728#4,2:414\n523#4:416\n220#5:280\n236#5,5:281\n221#5:286\n222#5:303\n241#5,17:304\n223#5:321\n220#5:334\n236#5,5:335\n221#5:340\n222#5:357\n241#5,17:358\n223#5:375\n146#6,16:287\n146#6,16:341\n*S KotlinDebug\n*F\n+ 1 SnapshotStateObserver.kt\nandroidx/compose/runtime/snapshots/SnapshotStateObserver\n*L\n63#1:268\n63#1:269,2\n99#1:271\n143#1:272\n157#1:326\n191#1:380\n144#1:273,7\n144#1:322,4\n158#1:327,7\n158#1:376,4\n192#1:381,11\n202#1:392,11\n218#1:403,11\n221#1:414,2\n225#1:416\n145#1:280\n145#1:281,5\n145#1:286\n145#1:303\n145#1:304,17\n145#1:321\n159#1:334\n159#1:335,5\n159#1:340\n159#1:357\n159#1:358,17\n159#1:375\n145#1:287,16\n159#1:341,16\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final applyMaps:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final applyObserver:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isPaused:Z

.field private final onChangedExecutor:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readObserver:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Le8/l;)V
    .locals 2
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onChangedExecutor"

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
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Le8/l;

    .line 11
    .line 12
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$applyObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Le8/p;

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$readObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Le8/l;

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    const/16 v0, 0x10

    .line 29
    .line 30
    new-array v0, v0, [Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 37
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->f()V

    .line 4
    return-void
.end method

.method public static final synthetic b(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/collection/MutableVector;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 3
    return p0
.end method

.method private final f()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-lez v1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    :cond_0
    aget-object v3, v0, v2

    .line 16
    .line 17
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->d()Ljava/util/HashSet;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result v5

    .line 26
    .line 27
    xor-int/lit8 v5, v5, 0x1

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->b(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 36
    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    if-lt v2, v1, :cond_0

    .line 40
    :cond_2
    return-void
.end method

.method private final j(Le8/l;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-lez v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    :cond_0
    aget-object v4, v0, v3

    .line 17
    .line 18
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->f()Le8/l;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    if-ne v4, p1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    if-lt v3, v1, :cond_0

    .line 30
    :cond_2
    move v3, v2

    .line 31
    .line 32
    :goto_0
    if-ne v3, v2, :cond_3

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;-><init>(Le8/l;)V

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)Z

    .line 43
    return-object v0

    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    aget-object p1, p1, v3

    .line 52
    .line 53
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 54
    return-object p1
.end method


# virtual methods
.method public final g()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-lez v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :cond_0
    aget-object v4, v1, v3

    .line 19
    .line 20
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->e()Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/IdentityScopeMap;->d()V

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    if-lt v3, v2, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw v1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const-string v2, "scope"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    monitor-enter v2

    .line 13
    .line 14
    :try_start_0
    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 18
    move-result v4

    .line 19
    .line 20
    if-lez v4, :cond_a

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    :cond_0
    aget-object v7, v3, v6

    .line 28
    .line 29
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->e()Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 33
    move-result-object v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 37
    move-result v8

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    .line 41
    :goto_0
    if-ge v9, v8, :cond_8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 45
    move-result-object v12

    .line 46
    .line 47
    aget v12, v12, v9

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 51
    move-result-object v13

    .line 52
    .line 53
    aget-object v13, v13, v12

    .line 54
    .line 55
    .line 56
    invoke-static {v13}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 60
    move-result v14

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    .line 64
    :goto_1
    if-ge v15, v14, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 68
    move-result-object v16

    .line 69
    .line 70
    aget-object v11, v16, v15

    .line 71
    .line 72
    if-eqz v11, :cond_3

    .line 73
    .line 74
    if-ne v11, v0, :cond_1

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_1
    if-eq v5, v15, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 81
    move-result-object v16

    .line 82
    .line 83
    aput-object v11, v16, v5

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_6

    .line 87
    .line 88
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string v3, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 103
    move-result v11

    .line 104
    move v14, v5

    .line 105
    .line 106
    :goto_4
    if-ge v14, v11, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 110
    move-result-object v15

    .line 111
    .line 112
    const/16 v16, 0x0

    .line 113
    .line 114
    aput-object v16, v15, v14

    .line 115
    .line 116
    add-int/lit8 v14, v14, 0x1

    .line 117
    goto :goto_4

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->g(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 124
    move-result v5

    .line 125
    .line 126
    if-lez v5, :cond_7

    .line 127
    .line 128
    if-eq v10, v9, :cond_6

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 132
    move-result-object v5

    .line 133
    .line 134
    aget v5, v5, v10

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 138
    move-result-object v11

    .line 139
    .line 140
    aput v12, v11, v10

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 144
    move-result-object v11

    .line 145
    .line 146
    aput v5, v11, v9

    .line 147
    .line 148
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 149
    .line 150
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 151
    goto :goto_0

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 155
    move-result v5

    .line 156
    move v8, v10

    .line 157
    .line 158
    :goto_5
    if-ge v8, v5, :cond_9

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 162
    move-result-object v9

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 166
    move-result-object v11

    .line 167
    .line 168
    aget v11, v11, v8

    .line 169
    const/4 v12, 0x0

    .line 170
    .line 171
    aput-object v12, v9, v11

    .line 172
    .line 173
    add-int/lit8 v8, v8, 0x1

    .line 174
    goto :goto_5

    .line 175
    .line 176
    .line 177
    :cond_9
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 178
    .line 179
    add-int/lit8 v6, v6, 0x1

    .line 180
    .line 181
    if-lt v6, v4, :cond_0

    .line 182
    .line 183
    :cond_a
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v2

    .line 185
    return-void

    .line 186
    :goto_6
    monitor-exit v2

    .line 187
    throw v0
.end method

.method public final i(Le8/l;)V
    .locals 17
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const-string v2, "predicate"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    monitor-enter v2

    .line 13
    .line 14
    :try_start_0
    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 18
    move-result v4

    .line 19
    .line 20
    if-lez v4, :cond_a

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    :cond_0
    aget-object v7, v3, v6

    .line 28
    .line 29
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->e()Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 33
    move-result-object v7

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 37
    move-result v8

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    .line 41
    :goto_0
    if-ge v9, v8, :cond_8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 45
    move-result-object v12

    .line 46
    .line 47
    aget v12, v12, v9

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->i()[Landroidx/compose/runtime/collection/IdentityArraySet;

    .line 51
    move-result-object v13

    .line 52
    .line 53
    aget-object v13, v13, v12

    .line 54
    .line 55
    .line 56
    invoke-static {v13}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 60
    move-result v14

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    .line 64
    :goto_1
    if-ge v15, v14, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 68
    move-result-object v16

    .line 69
    .line 70
    aget-object v11, v16, v15

    .line 71
    .line 72
    if-eqz v11, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v11}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v16

    .line 77
    .line 78
    check-cast v16, Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    move-result v16

    .line 83
    .line 84
    if-nez v16, :cond_2

    .line 85
    .line 86
    if-eq v5, v15, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 90
    move-result-object v16

    .line 91
    .line 92
    aput-object v11, v16, v5

    .line 93
    goto :goto_2

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_5

    .line 96
    .line 97
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    const-string v3, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 112
    move-result v11

    .line 113
    move v14, v5

    .line 114
    .line 115
    :goto_3
    if-ge v14, v11, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->e()[Ljava/lang/Object;

    .line 119
    move-result-object v15

    .line 120
    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    aput-object v16, v15, v14

    .line 124
    .line 125
    add-int/lit8 v14, v14, 0x1

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/collection/IdentityArraySet;->g(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    .line 133
    move-result v5

    .line 134
    .line 135
    if-lez v5, :cond_7

    .line 136
    .line 137
    if-eq v10, v9, :cond_6

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 141
    move-result-object v5

    .line 142
    .line 143
    aget v5, v5, v10

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 147
    move-result-object v11

    .line 148
    .line 149
    aput v12, v11, v10

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 153
    move-result-object v11

    .line 154
    .line 155
    aput v5, v11, v9

    .line 156
    .line 157
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 158
    .line 159
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 160
    goto :goto_0

    .line 161
    .line 162
    .line 163
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->j()I

    .line 164
    move-result v5

    .line 165
    move v8, v10

    .line 166
    .line 167
    :goto_4
    if-ge v8, v5, :cond_9

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->l()[Ljava/lang/Object;

    .line 171
    move-result-object v9

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/IdentityScopeMap;->k()[I

    .line 175
    move-result-object v11

    .line 176
    .line 177
    aget v11, v11, v8

    .line 178
    const/4 v12, 0x0

    .line 179
    .line 180
    aput-object v12, v9, v11

    .line 181
    .line 182
    add-int/lit8 v8, v8, 0x1

    .line 183
    goto :goto_4

    .line 184
    .line 185
    .line 186
    :cond_9
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/collection/IdentityScopeMap;->p(I)V

    .line 187
    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    .line 190
    if-lt v6, v4, :cond_0

    .line 191
    .line 192
    :cond_a
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v2

    .line 194
    return-void

    .line 195
    :goto_5
    monitor-exit v2

    .line 196
    throw v0
.end method

.method public final k(Ljava/lang/Object;Le8/l;Le8/a;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le8/l<",
            "-TT;",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "scope"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "onValueChangedForScope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "block"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    monitor-enter v2

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->j(Le8/l;)Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->e()Landroidx/compose/runtime/collection/IdentityScopeMap;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/IdentityScopeMap;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->c()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 44
    const/4 p1, 0x0

    .line 45
    .line 46
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 47
    .line 48
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->readObserver:Le8/l;

    .line 51
    const/4 v4, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v3, v4, p3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->d(Le8/l;Le8/l;Le8/a;)Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;->g(Ljava/lang/Object;)V

    .line 60
    .line 61
    iput-boolean v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->isPaused:Z

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit v2

    .line 65
    throw p1
.end method

.method public final l()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyObserver:Le8/p;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Le8/p;)Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 11
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->applyUnsubscribe:Landroidx/compose/runtime/snapshots/ObserverHandle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/ObserverHandle;->t()V

    .line 8
    :cond_0
    return-void
.end method
