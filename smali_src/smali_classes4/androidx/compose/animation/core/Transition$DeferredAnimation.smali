.class public final Landroidx/compose/animation/core/Transition$DeferredAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/animation/core/InternalAnimationApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeferredAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>.DeferredAnimationData<TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final label:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final typeConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "typeConverter"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "label"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 18
    .line 19
    iput-object p3, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->label:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Le8/l;Le8/l;)Landroidx/compose/runtime/State;
    .locals 8
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
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
            "TT;>;>;",
            "Le8/l<",
            "-TS;+TT;>;)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "transitionSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "targetValueByState"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data:Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 17
    .line 18
    new-instance v7, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v4}, Landroidx/compose/animation/core/AnimationStateKt;->g(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    iget-object v5, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->typeConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 47
    .line 48
    iget-object v6, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->label:Ljava/lang/String;

    .line 49
    move-object v1, v7

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0, v7, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Le8/l;Le8/l;)V

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 58
    .line 59
    iput-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data:Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->a()Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/compose/animation/core/Transition;->d(Landroidx/compose/animation/core/Transition$TransitionAnimationState;)Z

    .line 67
    .line 68
    :cond_0
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->e(Le8/l;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->f(Le8/l;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j(Landroidx/compose/animation/core/Transition$Segment;)V

    .line 82
    return-object v0
.end method

.method public final b()Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>.DeferredAnimationData<TT;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data:Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->data:Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;->this$0:Landroidx/compose/animation/core/Transition;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->a()Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->b()Le8/l;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-interface {v4}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-interface {v3, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->b()Le8/l;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-interface {v5}, Landroidx/compose/animation/core/Transition$Segment;->b()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-interface {v4, v5}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->d()Le8/l;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3, v4, v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->x(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 60
    :cond_0
    return-void
.end method
