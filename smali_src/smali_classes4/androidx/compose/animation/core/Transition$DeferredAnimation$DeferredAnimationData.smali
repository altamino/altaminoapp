.class public final Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/Transition$DeferredAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeferredAnimationData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/State<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private targetValueByState:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-TS;+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>;"
        }
    .end annotation
.end field

.field private transitionSpec:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Le8/l;Le8/l;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/Transition$DeferredAnimation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/Transition$TransitionAnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;",
            "Le8/l<",
            "-TS;+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "transitionSpec"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "targetValueByState"

    .line 13
    .line 14
    .line 15
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->this$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 23
    .line 24
    iput-object p3, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Le8/l;

    .line 25
    .line 26
    iput-object p4, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Le8/l;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.TransitionAnimationState<TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    return-object v0
.end method

.method public final b()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "TS;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Le8/l;

    return-object v0
.end method

.method public final d()Le8/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/l<",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Le8/l;

    return-object v0
.end method

.method public final e(Le8/l;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-TS;+TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Le8/l;

    return-void
.end method

.method public final f(Le8/l;)V
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Le8/l;

    return-void
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
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->this$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j(Landroidx/compose/animation/core/Transition$Segment;)V

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final j(Landroidx/compose/animation/core/Transition$Segment;)V
    .locals 4
    .param p1    # Landroidx/compose/animation/core/Transition$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "segment"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Le8/l;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->b()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->this$0:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->targetValueByState:Le8/l;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Le8/l;

    .line 40
    .line 41
    .line 42
    invoke-interface {v3, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1, v0, p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->x(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->animation:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->transitionSpec:Le8/l;

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, p1}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->y(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 63
    :goto_0
    return-void
.end method
