.class public abstract Landroidx/compose/runtime/snapshots/Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2107:1\n1682#2:2108\n1682#2:2110\n66#3:2109\n66#3:2111\n1#4:2112\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n84#1:2108\n233#1:2110\n84#1:2109\n233#1:2111\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private disposed:Z

.field private id:I

.field private invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pinningTrackingHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/snapshots/Snapshot;->$stable:I

    return-void
.end method

.method private constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iput p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->id:I

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->U(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/snapshots/Snapshot;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    .line 3
    return p0
.end method


# virtual methods
.method public final b()V
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
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->c()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->q()V

    .line 12
    .line 13
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
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
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->r(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V

    .line 16
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->C()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->p()V

    .line 12
    .line 13
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->id:I

    return v0
.end method

.method public g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public abstract h()Le8/l;
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
.end method

.method public abstract i()Z
.end method

.method public abstract j()Le8/l;
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
.end method

.method public k()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 18
    return-object v0
.end method

.method public abstract l(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract m(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract n()V
.end method

.method public abstract o(Landroidx/compose/runtime/snapshots/StateObject;)V
    .param p1    # Landroidx/compose/runtime/snapshots/StateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final p()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->Q(I)V

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    .line 11
    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->p()V

    .line 4
    return-void
.end method

.method public r(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->id:I

    return-void
.end method

.method public u(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->invalid:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method public abstract v(Le8/l;)Landroidx/compose/runtime/snapshots/Snapshot;
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
.end method

.method public final w()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/snapshots/Snapshot;->pinningTrackingHandle:I

    return v0
.end method

.method public final x()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ExperimentalComposeApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->k()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final y(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/Snapshot;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/runtime/ExperimentalComposeApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->j()Landroidx/compose/runtime/SnapshotThreadLocal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-ne v0, p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/Snapshot;->r(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v0, "Cannot leave snapshot; "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, " is not the current snapshot"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method

.method public final z()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/Snapshot;->disposed:Z

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "Cannot use a disposed snapshot"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method
