.class final Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/DerivedSnapshotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/StateRecord;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,257:1\n1682#2:258\n66#3:259\n208#4,2:260\n210#4,5:268\n32#5,6:262\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState$ResultRecord\n*L\n90#1:258\n90#1:259\n92#1:260,2\n92#1:268,5\n92#1:262,6\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unset:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private dependencies:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resultHash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    sput-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Ljava/util/HashSet;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 16
    .line 17
    iget p1, p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 18
    .line 19
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 20
    return-void
.end method

.method public b()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;-><init>()V

    .line 6
    return-object v0
.end method

.method public final g()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Ljava/util/HashSet;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)Z
    .locals 2
    .param p1    # Landroidx/compose/runtime/DerivedState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "derivedState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "snapshot"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Unset:Ljava/lang/Object;

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->j(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-ne v0, p1, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public final j(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I
    .locals 7
    .param p1    # Landroidx/compose/runtime/DerivedState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "derivedState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string/jumbo v0, "snapshot"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    monitor-enter v0

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    monitor-exit v0

    .line 19
    const/4 v0, 0x7

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->a()Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt;->b()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    move v5, v4

    .line 44
    .line 45
    :goto_0
    if-ge v5, v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    .line 51
    check-cast v6, Lw7/u;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Lw7/u;->a()Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    check-cast v6, Le8/l;

    .line 58
    .line 59
    .line 60
    invoke-interface {v6, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    check-cast v3, Landroidx/compose/runtime/snapshots/StateObject;

    .line 80
    .line 81
    .line 82
    invoke-interface {v3}, Landroidx/compose/runtime/snapshots/StateObject;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    const-string/jumbo v6, "stateObject"

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v5, v3, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->P(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    mul-int/lit8 v0, v0, 0x1f

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->a(Ljava/lang/Object;)I

    .line 98
    move-result v5

    .line 99
    add-int/2addr v0, v5

    .line 100
    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateRecord;->d()I

    .line 105
    move-result v3

    .line 106
    add-int/2addr v0, v3

    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p2

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_2
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 115
    move-result p2

    .line 116
    .line 117
    :goto_2
    if-ge v4, p2, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    check-cast v1, Lw7/u;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Le8/l;

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    goto :goto_2

    .line 136
    .line 137
    .line 138
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 139
    move-result v0

    .line 140
    .line 141
    :goto_4
    if-ge v4, v0, :cond_3

    .line 142
    .line 143
    .line 144
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    check-cast v1, Lw7/u;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    check-cast v1, Le8/l;

    .line 154
    .line 155
    .line 156
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    goto :goto_4

    .line 160
    :cond_3
    throw p2

    .line 161
    :cond_4
    return v0

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    monitor-exit v0

    .line 164
    throw p1
.end method

.method public final k(Ljava/util/HashSet;)V
    .locals 0
    .param p1    # Ljava/util/HashSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Ljava/util/HashSet;

    return-void
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->resultHash:I

    return-void
.end method
