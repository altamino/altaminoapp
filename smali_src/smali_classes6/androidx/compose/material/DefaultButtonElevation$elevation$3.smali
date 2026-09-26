.class final Landroidx/compose/material/DefaultButtonElevation$elevation$3;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DefaultButtonElevation;->a(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.material.DefaultButtonElevation$elevation$3"
    f = "Button.kt"
    l = {
        0x231
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interaction:Landroidx/compose/foundation/interaction/Interaction;

.field final synthetic $target:F

.field label:I

.field final synthetic this$0:Landroidx/compose/material/DefaultButtonElevation;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material/DefaultButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;",
            "Landroidx/compose/material/DefaultButtonElevation;",
            "F",
            "Landroidx/compose/foundation/interaction/Interaction;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/material/DefaultButtonElevation$elevation$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    iput p3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$target:F

    iput-object p4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 6
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

    new-instance p1, Landroidx/compose/material/DefaultButtonElevation$elevation$3;

    iget-object v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    iget v3, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$target:F

    iget-object v4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$3;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material/DefaultButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/DefaultButtonElevation$elevation$3;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->label:I

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
    .line 14
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->l()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 38
    move-result p1

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Landroidx/compose/material/DefaultButtonElevation;->d(Landroidx/compose/material/DefaultButtonElevation;)F

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 48
    move-result v1

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 54
    .line 55
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 59
    move-result-wide v4

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v4, v5, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/k;)V

    .line 63
    move-object v3, p1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iget-object v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroidx/compose/material/DefaultButtonElevation;->c(Landroidx/compose/material/DefaultButtonElevation;)F

    .line 70
    move-result v1

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    new-instance v3, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 79
    .line 80
    .line 81
    invoke-direct {v3}, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;-><init>()V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_3
    iget-object v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->this$0:Landroidx/compose/material/DefaultButtonElevation;

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroidx/compose/material/DefaultButtonElevation;->b(Landroidx/compose/material/DefaultButtonElevation;)F

    .line 88
    move-result v1

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    new-instance v3, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 97
    .line 98
    .line 99
    invoke-direct {v3}, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;-><init>()V

    .line 100
    .line 101
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$animatable:Landroidx/compose/animation/core/Animatable;

    .line 102
    .line 103
    iget v1, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$target:F

    .line 104
    .line 105
    iget-object v4, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->$interaction:Landroidx/compose/foundation/interaction/Interaction;

    .line 106
    .line 107
    iput v2, p0, Landroidx/compose/material/DefaultButtonElevation$elevation$3;->label:I

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v1, v3, v4, p0}, Landroidx/compose/material/ElevationKt;->d(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/foundation/interaction/Interaction;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    if-ne p1, v0, :cond_5

    .line 114
    return-object v0

    .line 115
    .line 116
    :cond_5
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 117
    return-object p1
.end method
