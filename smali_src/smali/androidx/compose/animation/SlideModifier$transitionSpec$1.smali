.class final Landroidx/compose/animation/SlideModifier$transitionSpec$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SlideModifier;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/animation/core/Transition$Segment<",
        "Landroidx/compose/animation/EnterExitState;",
        ">;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "Landroidx/compose/ui/unit/IntOffset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/SlideModifier;


# direct methods
.method constructor <init>(Landroidx/compose/animation/SlideModifier;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SlideModifier$transitionSpec$1;->this$0:Landroidx/compose/animation/SlideModifier;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/Transition$Segment;)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 2
    .param p1    # Landroidx/compose/animation/core/Transition$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;)",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Landroidx/compose/animation/core/Transition$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/animation/SlideModifier$transitionSpec$1;->this$0:Landroidx/compose/animation/SlideModifier;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/animation/SlideModifier;->b()Landroidx/compose/runtime/State;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroidx/compose/animation/Slide;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/animation/Slide;->a()Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->e()Landroidx/compose/animation/core/SpringSpec;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1, v0}, Landroidx/compose/animation/core/Transition$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/animation/SlideModifier$transitionSpec$1;->this$0:Landroidx/compose/animation/SlideModifier;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/animation/SlideModifier;->c()Landroidx/compose/runtime/State;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Landroidx/compose/animation/Slide;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/animation/Slide;->a()Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->e()Landroidx/compose/animation/core/SpringSpec;

    .line 72
    move-result-object p1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-static {}, Landroidx/compose/animation/EnterExitTransitionKt;->e()Landroidx/compose/animation/core/SpringSpec;

    .line 77
    move-result-object p1

    .line 78
    :cond_4
    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/animation/SlideModifier$transitionSpec$1;->a(Landroidx/compose/animation/core/Transition$Segment;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
