.class final Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;
.super Landroidx/compose/runtime/snapshots/SnapshotMapSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/SnapshotMapSet<",
        "TK;TV;TV;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapValueSet\n+ 2 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotStateMap\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n68#2,2:345\n113#2,4:347\n117#2:352\n105#2:353\n118#2,5:355\n70#2,7:360\n123#2,3:367\n109#2:370\n126#2,5:376\n133#2,3:384\n77#2:387\n68#2,2:388\n113#2,4:390\n117#2:395\n105#2:396\n118#2,5:398\n70#2,7:403\n123#2,3:410\n109#2:413\n126#2,5:419\n133#2,3:427\n77#2:430\n66#3:351\n66#3:394\n2096#4:354\n1999#4,2:371\n1682#4:373\n2001#4,2:374\n2003#4,3:381\n2096#4:397\n1999#4,2:414\n1682#4:416\n2001#4,2:417\n2003#4,3:424\n1720#5,3:431\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/SnapshotMapValueSet\n*L\n234#1:345,2\n234#1:347,4\n234#1:352\n234#1:353\n234#1:355,5\n234#1:360,7\n234#1:367,3\n234#1:370\n234#1:376,5\n234#1:384,3\n234#1:387\n238#1:388,2\n238#1:390,4\n238#1:395\n238#1:396\n238#1:398,5\n238#1:403,7\n238#1:410,3\n238#1:413\n238#1:419,5\n238#1:427,3\n238#1:430\n234#1:351\n238#1:394\n234#1:354\n234#1:371,2\n234#1:373\n234#1:374,2\n234#1:381,3\n238#1:397\n238#1:414,2\n238#1:416\n238#1:417,2\n238#1:424,3\n242#1:431,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotStateMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
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
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V

    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->f(Ljava/lang/Object;)Ljava/lang/Void;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->g(Ljava/util/Collection;)Ljava/lang/Void;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsValue(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    move-object v0, p1

    .line 9
    .line 10
    check-cast v0, Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->containsValue(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    const/4 v1, 0x0

    .line 44
    :cond_2
    :goto_0
    return v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->b()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance p1, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 9
    throw p1
.end method

.method public g(Ljava/util/Collection;)Ljava/lang/Void;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->b()Ljava/lang/Void;

    .line 9
    .line 10
    new-instance p1, Lw7/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 14
    throw p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapValueSet;->j()Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->j()Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/snapshots/StateMapMutableValuesIterator;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateMap;Ljava/util/Iterator;)V

    .line 32
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->o(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/collections/t;->Y0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    monitor-enter v3

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 48
    move-result v4

    .line 49
    .line 50
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    monitor-exit v3

    .line 52
    .line 53
    .line 54
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v6

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x1

    .line 72
    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    check-cast v7, Ljava/util/Map$Entry;

    .line 80
    .line 81
    .line 82
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result v9

    .line 88
    .line 89
    if-eqz v9, :cond_1

    .line 90
    .line 91
    .line 92
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move v2, v8

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_2
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 101
    .line 102
    .line 103
    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    .line 107
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    move-result v5

    .line 109
    .line 110
    if-nez v5, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    monitor-enter v5

    .line 116
    .line 117
    .line 118
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 119
    move-result-object v6

    .line 120
    .line 121
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 128
    move-result-object v7

    .line 129
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .line 131
    :try_start_2
    sget-object v9, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 135
    move-result-object v9

    .line 136
    .line 137
    .line 138
    invoke-static {v6, v0, v9}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 145
    move-result v10

    .line 146
    .line 147
    if-ne v10, v4, :cond_3

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 154
    move-result v3

    .line 155
    add-int/2addr v3, v8

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    goto :goto_1

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    goto :goto_2

    .line 162
    :cond_3
    move v8, v1

    .line 163
    :goto_1
    :try_start_3
    monitor-exit v7

    .line 164
    .line 165
    .line 166
    invoke-static {v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    monitor-exit v5

    .line 168
    .line 169
    if-eqz v8, :cond_0

    .line 170
    goto :goto_4

    .line 171
    :catchall_1
    move-exception p1

    .line 172
    goto :goto_3

    .line 173
    :goto_2
    :try_start_4
    monitor-exit v7

    .line 174
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :goto_3
    monitor-exit v5

    .line 176
    throw p1

    .line 177
    :cond_4
    :goto_4
    return v2

    .line 178
    :catchall_2
    move-exception p1

    .line 179
    monitor-exit v3

    .line 180
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "elements"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/collections/t;->Y0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotMapSet;->c()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    monitor-enter v3

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 29
    .line 30
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->g()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 48
    move-result v4

    .line 49
    .line 50
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    monitor-exit v3

    .line 52
    .line 53
    .line 54
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v5}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;->builder()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->entrySet()Ljava/util/Set;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v6

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x1

    .line 72
    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    check-cast v7, Ljava/util/Map$Entry;

    .line 80
    .line 81
    .line 82
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result v9

    .line 88
    xor-int/2addr v9, v8

    .line 89
    .line 90
    if-eqz v9, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move v2, v8

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    sget-object v6, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 102
    .line 103
    .line 104
    invoke-interface {v3}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap$Builder;->build()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    move-result v5

    .line 110
    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->a()Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 116
    monitor-enter v5

    .line 117
    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->m()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 120
    move-result-object v6

    .line 121
    .line 122
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 129
    move-result-object v7

    .line 130
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .line 132
    :try_start_2
    sget-object v9, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 136
    move-result-object v9

    .line 137
    .line 138
    .line 139
    invoke-static {v6, v0, v9}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Z(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    check-cast v6, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 146
    move-result v10

    .line 147
    .line 148
    if-ne v10, v4, :cond_3

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->i(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->h()I

    .line 155
    move-result v3

    .line 156
    add-int/2addr v3, v8

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateMap$StateMapStateRecord;->j(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception p1

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    move v8, v1

    .line 164
    :goto_1
    :try_start_3
    monitor-exit v7

    .line 165
    .line 166
    .line 167
    invoke-static {v9, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    monitor-exit v5

    .line 169
    .line 170
    if-eqz v8, :cond_0

    .line 171
    goto :goto_4

    .line 172
    :catchall_1
    move-exception p1

    .line 173
    goto :goto_3

    .line 174
    :goto_2
    :try_start_4
    monitor-exit v7

    .line 175
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    :goto_3
    monitor-exit v5

    .line 177
    throw p1

    .line 178
    :cond_4
    :goto_4
    return v2

    .line 179
    :catchall_2
    move-exception p1

    .line 180
    monitor-exit v3

    .line 181
    throw p1
.end method
