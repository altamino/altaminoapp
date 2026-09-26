.class public final Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/NestedMutableSnapshot\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,2107:1\n1682#2:2108\n66#3:2109\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/NestedMutableSnapshot\n*L\n1386#1:2108\n1386#1:2109\n*E\n"
.end annotation


# instance fields
.field private deactivated:Z

.field private final parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Le8/l;Landroidx/compose/runtime/snapshots/MutableSnapshot;)V
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
    .param p5    # Landroidx/compose/runtime/snapshots/MutableSnapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            ">;",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
            ")V"
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
    .line 7
    const-string v0, "parent"

    .line 8
    .line 9
    .line 10
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Le8/l;Le8/l;)V

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->l(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 19
    return-void
.end method

.method private final S()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->deactivated:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->m(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public C()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->D()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->m(Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/MutableSnapshot;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Ljava/util/Map;

    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    monitor-enter v3

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->u(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 54
    move-result v4

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_2
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 63
    move-result v4

    .line 64
    .line 65
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v4, v2, v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->H(ILjava/util/Map;Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    sget-object v4, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    if-nez v4, :cond_3

    .line 82
    monitor-exit v3

    .line 83
    return-object v2

    .line 84
    .line 85
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->E()Ljava/util/Set;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    new-instance v2, Ljava/util/HashSet;

    .line 94
    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 97
    .line 98
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->O(Ljava/util/Set;)V

    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_4

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 108
    goto :goto_3

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->b()V

    .line 112
    .line 113
    :goto_3
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->f()I

    .line 117
    move-result v0

    .line 118
    .line 119
    if-ge v0, v1, :cond_6

    .line 120
    .line 121
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->B()V

    .line 125
    .line 126
    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->m(I)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->F()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->j(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->I(I)V

    .line 151
    .line 152
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->w()I

    .line 156
    move-result v1

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->K(I)V

    .line 160
    .line 161
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->F()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->J(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 169
    .line 170
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->parent:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->G()[I

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->L([I)V

    .line 178
    .line 179
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit v3

    .line 181
    const/4 v0, 0x1

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->N(Z)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->S()V

    .line 188
    .line 189
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    .line 190
    return-object v0

    .line 191
    :goto_4
    monitor-exit v3

    .line 192
    throw v0

    .line 193
    .line 194
    :cond_7
    :goto_5
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;

    .line 195
    .line 196
    .line 197
    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 198
    return-object v0
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
    invoke-super {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->d()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/NestedMutableSnapshot;->S()V

    .line 13
    :cond_0
    return-void
.end method
