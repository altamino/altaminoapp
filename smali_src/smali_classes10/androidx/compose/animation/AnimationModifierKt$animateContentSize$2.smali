.class final Landroidx/compose/animation/AnimationModifierKt$animateContentSize$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimationModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/p;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationModifier.kt\nandroidx/compose/animation/AnimationModifierKt$animateContentSize$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,159:1\n473#2,4:160\n477#2,2:168\n481#2:174\n25#3:164\n36#3:175\n1057#4,3:165\n1060#4,3:171\n1057#4,6:176\n473#5:170\n*S KotlinDebug\n*F\n+ 1 AnimationModifier.kt\nandroidx/compose/animation/AnimationModifierKt$animateContentSize$2\n*L\n76#1:160,4\n76#1:168,2\n76#1:174\n76#1:164\n77#1:175\n76#1:165,3\n76#1:171,3\n77#1:176,6\n76#1:170\n*E\n"
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $finishedListener:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Le8/p;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimationModifierKt$animateContentSize$2;->$finishedListener:Le8/p;

    iput-object p2, p0, Landroidx/compose/animation/AnimationModifierKt$animateContentSize$2;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 4
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x3241ea3f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p3, 0x2e20b340

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    const p3, -0x1d58f75c

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-ne p3, v1, :cond_0

    .line 36
    .line 37
    sget-object p3, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p2}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    move-object p3, v1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 54
    .line 55
    check-cast p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/compose/animation/AnimationModifierKt$animateContentSize$2;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 65
    .line 66
    .line 67
    const v2, 0x44faf204

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 74
    move-result v2

    .line 75
    .line 76
    .line 77
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    if-ne v3, v0, :cond_2

    .line 87
    .line 88
    :cond_1
    new-instance v3, Landroidx/compose/animation/SizeAnimationModifier;

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, v1, p3}, Landroidx/compose/animation/SizeAnimationModifier;-><init>(Landroidx/compose/animation/core/AnimationSpec;Lkotlinx/coroutines/o0;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 98
    .line 99
    check-cast v3, Landroidx/compose/animation/SizeAnimationModifier;

    .line 100
    .line 101
    iget-object p3, p0, Landroidx/compose/animation/AnimationModifierKt$animateContentSize$2;->$finishedListener:Le8/p;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p3}, Landroidx/compose/animation/SizeAnimationModifier;->d(Le8/p;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 116
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/AnimationModifierKt$animateContentSize$2;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
