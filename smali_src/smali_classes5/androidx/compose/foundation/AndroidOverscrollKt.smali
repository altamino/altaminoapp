.class public final Landroidx/compose/foundation/AndroidOverscrollKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidOverscroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidOverscrollKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,546:1\n76#2:547\n76#2:548\n50#3:549\n49#3:550\n1057#4,6:551\n*S KotlinDebug\n*F\n+ 1 AndroidOverscroll.kt\nandroidx/compose/foundation/AndroidOverscrollKt\n*L\n58#1:547\n59#1:548\n60#1:549\n60#1:550\n60#1:551,6\n*E\n"
.end annotation


# static fields
.field private static final NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1f

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1;->INSTANCE:Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget-object v1, Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2;->INSTANCE:Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 31
    .line 32
    :goto_0
    sput-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;

    .line 33
    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;
    .locals 3
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p1, -0x4d61273

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/foundation/OverscrollConfigurationKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 27
    .line 28
    .line 29
    const v1, 0x1e7b2b64

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    or-int/2addr v1, v2

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-ne v2, v1, :cond_2

    .line 56
    .line 57
    :cond_0
    if-eqz v0, :cond_1

    .line 58
    .line 59
    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V

    .line 63
    move-object v2, v1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    sget-object p1, Landroidx/compose/foundation/AndroidOverscrollKt;->NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 67
    move-object v2, p1

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 74
    .line 75
    check-cast v2, Landroidx/compose/foundation/OverscrollEffect;

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 79
    return-object v2
.end method
