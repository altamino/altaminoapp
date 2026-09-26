.class public Landroidx/compose/runtime/snapshots/MutableSnapshot;
.super Landroidx/compose/runtime/snapshots/Snapshot;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/MutableSnapshot\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2107:1\n951#1,2:2108\n957#1,3:2112\n960#1,6:2117\n951#1,2:2139\n957#1,3:2143\n960#1,6:2148\n951#1,9:2164\n960#1,6:2175\n1682#2:2110\n1682#2:2115\n1682#2:2123\n1682#2:2137\n1682#2:2141\n1682#2:2146\n1682#2:2159\n1682#2:2162\n1682#2:2173\n1682#2:2181\n1682#2:2183\n66#3:2111\n66#3:2116\n66#3:2124\n66#3:2138\n66#3:2142\n66#3:2147\n66#3:2160\n66#3:2163\n66#3:2174\n66#3:2182\n66#3:2184\n32#4,6:2125\n32#4,6:2131\n32#4,4:2155\n37#4:2161\n184#5:2154\n1#6:2185\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/MutableSnapshot\n*L\n660#1:2108,2\n660#1:2112,3\n660#1:2117,6\n782#1:2139,2\n782#1:2143,3\n782#1:2148,6\n968#1:2164,9\n968#1:2175,6\n661#1:2110\n660#1:2115\n709#1:2123\n760#1:2137\n783#1:2141\n782#1:2146\n935#1:2159\n959#1:2162\n968#1:2173\n971#1:2181\n996#1:2183\n661#1:2111\n660#1:2116\n709#1:2124\n760#1:2138\n783#1:2142\n782#1:2147\n935#1:2160\n959#1:2163\n968#1:2174\n971#1:2182\n996#1:2184\n746#1:2125,6\n752#1:2131,6\n932#1:2155,4\n932#1:2161\n829#1:2154\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private applied:Z

.field private modified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousPinnedSnapshots:[I
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private snapshots:I

.field private final writeObserver:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Le8/l;)V
    .locals 1
    .param p2    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "invalid"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/k;)V

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->readObserver:Le8/l;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->writeObserver:Le8/l;

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    new-array p1, p1, [I

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 27
    const/4 p1, 0x1

    .line 28
    .line 29
    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    .line 30
    return-void
.end method

.method private final A()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->Q()V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->O(Ljava/util/Set;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Landroidx/compose/runtime/snapshots/StateObject;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/StateObject;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    :goto_0
    if-eqz v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateRecord;->d()I

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eq v3, v1, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateRecord;->d()I

    .line 51
    move-result v4

    .line 52
    .line 53
    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4}, Lkotlin/collections/t;->Z(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    :cond_1
    const/4 v3, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateRecord;->f(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateRecord;->c()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 69
    move-result-object v2

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->b()V

    .line 74
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->I(I)V

    .line 8
    .line 9
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->D()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    monitor-enter v1

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h()I

    .line 34
    move-result v2

    .line 35
    .line 36
    add-int/lit8 v3, v2, 0x1

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->t(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 50
    move-result v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    monitor-exit v1

    .line 79
    throw v0

    .line 80
    :cond_0
    :goto_0
    return-void
.end method

.method public C()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    const-string v3, "currentGlobalSnapshot.get()"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    check-cast v4, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 40
    move-result v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-static {v2, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->m(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    .line 48
    move-result-object v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v2, v1

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    monitor-enter v3

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 59
    const/4 v4, 0x1

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 65
    move-result v5

    .line 66
    .line 67
    if-nez v5, :cond_1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    check-cast v5, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h()I

    .line 82
    move-result v6

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 86
    move-result-object v7

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 90
    move-result v8

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 94
    move-result-object v7

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v6, v2, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->H(ILjava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    sget-object v6, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    if-nez v6, :cond_2

    .line 107
    monitor-exit v3

    .line 108
    return-object v2

    .line 109
    .line 110
    .line 111
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    .line 112
    .line 113
    const-string v2, "previousGlobalSnapshot"

    .line 114
    .line 115
    .line 116
    invoke-static {v5, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Le8/l;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-static {v5, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->s(Landroidx/compose/runtime/snapshots/Snapshot;Le8/l;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->O(Ljava/util/Set;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->O(Ljava/util/Set;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d()Ljava/util/List;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    check-cast v1, Ljava/util/Collection;

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 147
    move-result-object v1

    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->c()V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->e()Ljava/util/concurrent/atomic/AtomicReference;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    check-cast v2, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 165
    .line 166
    const-string v5, "previousGlobalSnapshot"

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Le8/l;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->s(Landroidx/compose/runtime/snapshots/Snapshot;Le8/l;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    if-eqz v2, :cond_4

    .line 183
    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 186
    move-result v5

    .line 187
    xor-int/2addr v5, v4

    .line 188
    .line 189
    if-eqz v5, :cond_4

    .line 190
    .line 191
    .line 192
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d()Ljava/util/List;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    check-cast v1, Ljava/util/Collection;

    .line 196
    .line 197
    .line 198
    invoke-static {v1}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 203
    move-result-object v1

    .line 204
    goto :goto_2

    .line 205
    .line 206
    .line 207
    :cond_4
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 212
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_2
    monitor-exit v3

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 217
    move-result-object v2

    .line 218
    .line 219
    check-cast v2, Ljava/util/List;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    check-cast v1, Ljava/util/Set;

    .line 226
    .line 227
    iput-boolean v4, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    .line 228
    const/4 v3, 0x0

    .line 229
    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 234
    move-result v5

    .line 235
    xor-int/2addr v5, v4

    .line 236
    .line 237
    if-eqz v5, :cond_5

    .line 238
    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 241
    move-result v5

    .line 242
    move v6, v3

    .line 243
    .line 244
    :goto_3
    if-ge v6, v5, :cond_5

    .line 245
    .line 246
    .line 247
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v7

    .line 249
    .line 250
    check-cast v7, Le8/p;

    .line 251
    .line 252
    .line 253
    invoke-interface {v7, v1, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    add-int/lit8 v6, v6, 0x1

    .line 256
    goto :goto_3

    .line 257
    .line 258
    :cond_5
    if-eqz v0, :cond_6

    .line 259
    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 262
    move-result v1

    .line 263
    xor-int/2addr v1, v4

    .line 264
    .line 265
    if-eqz v1, :cond_6

    .line 266
    .line 267
    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 269
    move-result v1

    .line 270
    .line 271
    :goto_4
    if-ge v3, v1, :cond_6

    .line 272
    .line 273
    .line 274
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object v4

    .line 276
    .line 277
    check-cast v4, Le8/p;

    .line 278
    .line 279
    .line 280
    invoke-interface {v4, v0, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    add-int/lit8 v3, v3, 0x1

    .line 283
    goto :goto_4

    .line 284
    .line 285
    .line 286
    :cond_6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 288
    monitor-enter v0

    .line 289
    .line 290
    .line 291
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->q()V

    .line 292
    .line 293
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    monitor-exit v0

    .line 295
    .line 296
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    .line 297
    return-object v0

    .line 298
    :catchall_1
    move-exception v1

    .line 299
    monitor-exit v0

    .line 300
    throw v1

    .line 301
    :goto_5
    monitor-exit v3

    .line 302
    throw v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    return v0
.end method

.method public E()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Ljava/util/Set;

    return-object v0
.end method

.method public final F()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public final G()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    return-object v0
.end method

.method public final H(ILjava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 11
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            "+",
            "Landroidx/compose/runtime/snapshots/StateRecord;",
            ">;",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            ")",
            "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "invalidSnapshots"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v4, v3

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v5

    .line 41
    .line 42
    if-eqz v5, :cond_c

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    check-cast v5, Landroidx/compose/runtime/snapshots/StateObject;

    .line 49
    .line 50
    .line 51
    invoke-interface {v5}, Landroidx/compose/runtime/snapshots/StateObject;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    invoke-static {v6, p1, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    if-nez v7, :cond_1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 63
    move-result v8

    .line 64
    .line 65
    .line 66
    invoke-static {v6, v8, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 67
    move-result-object v8

    .line 68
    .line 69
    if-nez v8, :cond_2

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result v9

    .line 75
    .line 76
    if-nez v9, :cond_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 80
    move-result v9

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 84
    move-result-object v10

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotKt;->o(Landroidx/compose/runtime/snapshots/StateRecord;ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 88
    move-result-object v6

    .line 89
    .line 90
    if-eqz v6, :cond_b

    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v9

    .line 97
    .line 98
    check-cast v9, Landroidx/compose/runtime/snapshots/StateRecord;

    .line 99
    .line 100
    if-nez v9, :cond_4

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-interface {v5, v8, v7, v6}, Landroidx/compose/runtime/snapshots/StateObject;->e(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    :cond_4
    if-nez v9, :cond_5

    .line 107
    .line 108
    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 112
    return-object p1

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-static {v9, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v6

    .line 117
    .line 118
    if-nez v6, :cond_0

    .line 119
    .line 120
    .line 121
    invoke-static {v9, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v6

    .line 123
    .line 124
    if-eqz v6, :cond_8

    .line 125
    .line 126
    if-nez v3, :cond_6

    .line 127
    .line 128
    new-instance v3, Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/StateRecord;->b()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 135
    move-result-object v6

    .line 136
    .line 137
    .line 138
    invoke-static {v5, v6}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    .line 142
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    if-nez v4, :cond_7

    .line 145
    .line 146
    new-instance v4, Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :cond_8
    if-nez v3, :cond_9

    .line 156
    .line 157
    new-instance v3, Ljava/util/ArrayList;

    .line 158
    .line 159
    .line 160
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-static {v9, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    move-result v6

    .line 165
    .line 166
    if-nez v6, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-static {v5, v9}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 170
    move-result-object v5

    .line 171
    goto :goto_1

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateRecord;->b()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 175
    move-result-object v6

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v6}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 179
    move-result-object v5

    .line 180
    .line 181
    .line 182
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    .line 187
    :cond_b
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->n()Ljava/lang/Void;

    .line 188
    .line 189
    new-instance p1, Lw7/i;

    .line 190
    .line 191
    .line 192
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 193
    throw p1

    .line 194
    .line 195
    :cond_c
    if-eqz v3, :cond_d

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->B()V

    .line 199
    .line 200
    .line 201
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 202
    move-result p1

    .line 203
    const/4 p2, 0x0

    .line 204
    .line 205
    :goto_2
    if-ge p2, p1, :cond_d

    .line 206
    .line 207
    .line 208
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object p3

    .line 210
    .line 211
    check-cast p3, Lw7/u;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3}, Lw7/u;->a()Ljava/lang/Object;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    check-cast v0, Landroidx/compose/runtime/snapshots/StateObject;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3}, Lw7/u;->b()Ljava/lang/Object;

    .line 221
    move-result-object p3

    .line 222
    .line 223
    check-cast p3, Landroidx/compose/runtime/snapshots/StateRecord;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 227
    move-result v2

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/snapshots/StateRecord;->f(I)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 234
    move-result-object v2

    .line 235
    monitor-enter v2

    .line 236
    .line 237
    .line 238
    :try_start_0
    invoke-interface {v0}, Landroidx/compose/runtime/snapshots/StateObject;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 239
    move-result-object v5

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/snapshots/StateRecord;->e(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v0, p3}, Landroidx/compose/runtime/snapshots/StateObject;->a(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 246
    .line 247
    sget-object p3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit v2

    .line 249
    .line 250
    add-int/lit8 p2, p2, 0x1

    .line 251
    goto :goto_2

    .line 252
    :catchall_0
    move-exception p1

    .line 253
    monitor-exit v2

    .line 254
    throw p1

    .line 255
    .line 256
    :cond_d
    if-eqz v4, :cond_e

    .line 257
    .line 258
    .line 259
    invoke-interface {v1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 260
    .line 261
    :cond_e
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    .line 262
    return-object p1
.end method

.method public final I(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    .line 20
    throw p1
.end method

.method public final J(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "snapshots"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 19
    .line 20
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0

    .line 25
    throw p1
.end method

.method public final K(I)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lkotlin/collections/l;->u([II)[I

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 11
    :cond_0
    return-void
.end method

.method public final L([I)V
    .locals 2
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "handles"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 12
    array-length v1, v0

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {v0, p1}, Lkotlin/collections/l;->v([I[I)[I

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 24
    :goto_0
    return-void
.end method

.method public final M()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousPinnedSnapshots:[I

    .line 9
    .line 10
    aget v2, v2, v1

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(I)V

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public final N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    return-void
.end method

.method public O(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Ljava/util/Set;

    return-void
.end method

.method public P(Le8/l;Le8/l;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 8
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->z()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->R()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->I(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    monitor-enter v0

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h()I

    .line 22
    move-result v2

    .line 23
    .line 24
    add-int/lit8 v1, v2, 0x1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 50
    .line 51
    new-instance v7, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 55
    move-result v3

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->h()Le8/l;

    .line 65
    move-result-object v1

    .line 66
    const/4 v4, 0x4

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1, v6, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->F(Le8/l;Le8/l;ZILjava/lang/Object;)Le8/l;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->j()Le8/l;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->l(Le8/l;Le8/l;)Le8/l;

    .line 80
    move-result-object v5

    .line 81
    move-object v1, v7

    .line 82
    move-object v6, p0

    .line 83
    .line 84
    .line 85
    invoke-direct/range {v1 .. v6}, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Le8/l;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    monitor-exit v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->D()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-nez p1, :cond_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Z

    .line 96
    move-result p1

    .line 97
    .line 98
    if-nez p1, :cond_0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 102
    move-result p1

    .line 103
    .line 104
    .line 105
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    monitor-enter p2

    .line 108
    .line 109
    .line 110
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h()I

    .line 111
    move-result v0

    .line 112
    .line 113
    add-int/lit8 v1, v0, 0x1

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->t(I)V

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 127
    move-result v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 135
    .line 136
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p2

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    add-int/lit8 p1, p1, 0x1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 147
    move-result v0

    .line 148
    .line 149
    .line 150
    invoke-static {p2, p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception p1

    .line 157
    monitor-exit p2

    .line 158
    throw p1

    .line 159
    :cond_0
    :goto_0
    return-object v7

    .line 160
    :catchall_1
    move-exception p1

    .line 161
    monitor-exit v0

    .line 162
    throw p1
.end method

.method public final Q()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "Unsupported operation on a snapshot that has been applied"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public final R()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->a(Landroidx/compose/runtime/snapshots/Snapshot;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v1, "Unsupported operation on a disposed or applied snapshot"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->previousIds:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 22
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->d()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->m(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 13
    :cond_0
    return-void
.end method

.method public h()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->readObserver:Le8/l;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public j()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->writeObserver:Le8/l;

    return-object v0
.end method

.method public l(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    return-void
.end method

.method public m(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "snapshot"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    .line 8
    .line 9
    if-lez p1, :cond_1

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    iput p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->snapshots:I

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-boolean p1, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->A()V

    .line 23
    :cond_0
    return-void

    .line 24
    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Failed requirement."

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;->applied:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->B()V

    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public o(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->O(Ljava/util/Set;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->M()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->q()V

    .line 7
    return-void
.end method

.method public v(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 5
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/Snapshot;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->z()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->R()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->I(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    monitor-enter v1

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h()I

    .line 26
    move-result v2

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 43
    .line 44
    new-instance v3, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v2, v0, p1, p0}, Landroidx/compose/runtime/snapshots/NestedReadonlySnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    monitor-exit v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->D()Z

    .line 62
    move-result p1

    .line 63
    .line 64
    if-nez p1, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 74
    move-result p1

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    monitor-enter v0

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->h()I

    .line 83
    move-result v1

    .line 84
    .line 85
    add-int/lit8 v2, v1, 0x1

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->q(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->t(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 99
    move-result v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->s(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 107
    .line 108
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 119
    move-result v1

    .line 120
    .line 121
    .line 122
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->v(Landroidx/compose/runtime/snapshots/SnapshotIdSet;II)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    monitor-exit v0

    .line 130
    throw p1

    .line 131
    :cond_0
    :goto_0
    return-object v3

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    monitor-exit v1

    .line 134
    throw p1
.end method
