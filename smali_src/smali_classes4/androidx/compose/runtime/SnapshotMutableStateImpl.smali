.class public Landroidx/compose/runtime/SnapshotMutableStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Landroidx/compose/runtime/snapshots/SnapshotMutableState<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotMutableStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,298:1\n2096#2:299\n2027#2,2:300\n1682#2:302\n2029#2,5:304\n2096#2:309\n2096#2:310\n66#3:303\n*S KotlinDebug\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotMutableStateImpl\n*L\n131#1:299\n133#1:300,2\n133#1:302\n133#1:304,5\n174#1:309\n210#1:310\n133#1:303\n*E\n"
.end annotation


# instance fields
.field private next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final policy:Landroidx/compose/runtime/SnapshotMutationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V
    .locals 1
    .param p2    # Landroidx/compose/runtime/SnapshotMutationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "policy"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 11
    .line 12
    new-instance p2, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 18
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
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 10
    return-void
.end method

.method public e(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "previous"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "current"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "applied"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 18
    move-object v0, p2

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 21
    .line 22
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->g()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2, v3}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->g()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1, v0, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->b()Landroidx/compose/runtime/snapshots/StateRecord;

    .line 67
    move-result-object p2

    .line 68
    move-object p3, p2

    .line 69
    .line 70
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->h(Ljava/lang/Object;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 p2, 0x0

    .line 76
    :goto_0
    return-object p2
.end method

.method public g()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->O(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public m()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->g()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v3, p1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->D()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    monitor-enter v3

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p0, v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->h(Ljava/lang/Object;)V

    .line 52
    .line 53
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v3

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->J(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v3

    .line 61
    throw p1

    .line 62
    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->A(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "MutableState(value="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->g()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, ")@"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method
