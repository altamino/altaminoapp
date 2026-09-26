.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewResponder.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewResponder.android.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,45:1\n76#2:46\n36#3:47\n1057#4,6:48\n*S KotlinDebug\n*F\n+ 1 BringIntoViewResponder.android.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt\n*L\n30#1:46\n31#1:47\n31#1:48,6\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;->c(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/relocation/BringIntoViewParent;
    .locals 2
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
    const p1, -0x3d7a14e4

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

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
    check-cast p1, Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v0, 0x44faf204

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-ne v1, v0, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v1, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p1}, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;-><init>(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    check-cast v1, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;

    .line 54
    .line 55
    .line 56
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 57
    return-object v1
.end method

.method private static final c(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 21
    move-result p0

    .line 22
    float-to-int p0, p0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 26
    return-object v0
.end method
