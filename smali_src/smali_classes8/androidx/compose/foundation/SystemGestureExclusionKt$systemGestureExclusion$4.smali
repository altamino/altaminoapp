.class final Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
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
    value = "SMAP\nSystemGestureExclusion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemGestureExclusion.kt\nandroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4\n+ 2 SystemGestureExclusion.kt\nandroidx/compose/foundation/SystemGestureExclusionKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,157:1\n81#2:158\n82#2:160\n83#2:169\n76#3:159\n50#4:161\n49#4:162\n1057#5,6:163\n*S KotlinDebug\n*F\n+ 1 SystemGestureExclusion.kt\nandroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4\n*L\n71#1:158\n71#1:160\n71#1:169\n71#1:159\n71#1:161\n71#1:162\n71#1:163,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $exclusion:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2
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
    const p1, 0x1a9c7

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4;->$exclusion:Le8/l;

    .line 14
    .line 15
    .line 16
    const p3, 0xc13b6bc

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    check-cast p3, Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const v0, 0x1e7b2b64

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    or-int/2addr v0, v1

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-ne v1, v0, :cond_1

    .line 59
    .line 60
    :cond_0
    new-instance v1, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;-><init>(Landroid/view/View;Le8/l;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 70
    .line 71
    check-cast v1, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;

    .line 72
    .line 73
    new-instance p1, Landroidx/compose/foundation/SystemGestureExclusionKt$excludeFromSystemGestureR$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v1}, Landroidx/compose/foundation/SystemGestureExclusionKt$excludeFromSystemGestureR$1;-><init>(Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;)V

    .line 77
    const/4 p3, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static {v1, p1, p2, p3}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 87
    return-object v1
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
