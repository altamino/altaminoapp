.class final Landroidx/compose/animation/core/Transition$totalDurationNanos$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition$totalDurationNanos$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1150:1\n1849#2,2:1151\n1849#2,2:1153\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/Transition$totalDurationNanos$2\n*L\n272#1:1151,2\n275#1:1153,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Long;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/animation/core/Transition;->a(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    check-cast v3, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->d()J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 32
    move-result-wide v1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->this$0:Landroidx/compose/animation/core/Transition;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/compose/animation/core/Transition;->b(Landroidx/compose/animation/core/Transition;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Landroidx/compose/animation/core/Transition;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->n()J

    .line 59
    move-result-wide v3

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 63
    move-result-wide v1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition$totalDurationNanos$2;->b()Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
