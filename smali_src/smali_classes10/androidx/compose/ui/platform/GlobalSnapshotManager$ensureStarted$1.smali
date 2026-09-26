.class final Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/GlobalSnapshotManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalSnapshotManager.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalSnapshotManager.android.kt\nandroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,55:1\n103#2:56\n80#2,6:57\n104#2,2:63\n90#2:65\n86#2,4:66\n*S KotlinDebug\n*F\n+ 1 GlobalSnapshotManager.android.kt\nandroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1\n*L\n45#1:56\n45#1:57,6\n45#1:63,2\n45#1:65\n45#1:66,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1"
    f = "GlobalSnapshotManager.android.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/d<",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->$channel:Lkotlinx/coroutines/channels/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;

    iget-object v0, p0, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->$channel:Lkotlinx/coroutines/channels/d;

    invoke-direct {p1, v0, p2}, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;-><init>(Lkotlinx/coroutines/channels/d;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lkotlinx/coroutines/channels/f;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Lkotlinx/coroutines/channels/t;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    move-object v4, v3

    .line 24
    move-object v3, v1

    .line 25
    move-object v1, v0

    .line 26
    move-object v0, p0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->$channel:Lkotlinx/coroutines/channels/d;

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-interface {v3}, Lkotlinx/coroutines/channels/t;->iterator()Lkotlinx/coroutines/channels/f;

    .line 46
    move-result-object p1

    .line 47
    move-object v1, p1

    .line 48
    move-object p1, p0

    .line 49
    .line 50
    :goto_0
    iput-object v3, p1, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v1, p1, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    iput v2, p1, Landroidx/compose/ui/platform/GlobalSnapshotManager$ensureStarted$1;->label:I

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/f;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 58
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    if-ne v4, v0, :cond_2

    .line 61
    return-object v0

    .line 62
    :cond_2
    move-object v5, v0

    .line 63
    move-object v0, p1

    .line 64
    move-object p1, v4

    .line 65
    move-object v4, v3

    .line 66
    move-object v3, v1

    .line 67
    move-object v1, v5

    .line 68
    .line 69
    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-interface {v3}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    check-cast p1, Lw7/l0;

    .line 82
    .line 83
    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    move-object p1, v0

    .line 88
    move-object v0, v1

    .line 89
    move-object v1, v3

    .line 90
    move-object v3, v4

    .line 91
    goto :goto_0

    .line 92
    :catchall_1
    move-exception p1

    .line 93
    move-object v3, v4

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/4 p1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-static {v4, p1}, Lkotlinx/coroutines/channels/j;->a(Lkotlinx/coroutines/channels/t;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 101
    return-object p1

    .line 102
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    :catchall_2
    move-exception v0

    .line 104
    .line 105
    .line 106
    invoke-static {v3, p1}, Lkotlinx/coroutines/channels/j;->a(Lkotlinx/coroutines/channels/t;Ljava/lang/Throwable;)V

    .line 107
    throw v0
.end method
