.class final Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldTransitionScope;->a(Landroidx/compose/material/InputPhase;JJLe8/q;ZLe8/t;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/animation/core/Transition$Segment<",
        "Landroidx/compose/material/InputPhase;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec<",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    invoke-direct {v0}, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;-><init>()V

    sput-object v0, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/Transition$Segment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 4
    .param p1    # Landroidx/compose/animation/core/Transition$Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "Landroidx/compose/material/InputPhase;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$animateFloat"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x405ece8d

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    sget-object p3, Landroidx/compose/material/InputPhase;->Focused:Landroidx/compose/material/InputPhase;

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/material/InputPhase;->UnfocusedEmpty:Landroidx/compose/material/InputPhase;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p3, v0}, Landroidx/compose/animation/core/Transition$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    const/16 v2, 0x43

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->b()Landroidx/compose/animation/core/Easing;

    .line 28
    move-result-object p1

    .line 29
    const/4 p3, 0x2

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v0, p1, p3, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-interface {p1, v0, p3}, Landroidx/compose/animation/core/Transition$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result p3

    .line 40
    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/material/InputPhase;->UnfocusedNotEmpty:Landroidx/compose/material/InputPhase;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p3, v0}, Landroidx/compose/animation/core/Transition$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x7

    .line 52
    const/4 p3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-static {p3, p3, v3, p1, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    :goto_0
    const/16 p1, 0x53

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->b()Landroidx/compose/animation/core/Easing;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->j(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;->a(Landroidx/compose/animation/core/Transition$Segment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
