.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewResponder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,301:1\n135#2:302\n*S KotlinDebug\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderKt\n*L\n105#1:302\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->d(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->e(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewResponder;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/relocation/BringIntoViewResponder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "responder"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$$inlined$debugInspectorInfo$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    :goto_0
    new-instance v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt$bringIntoViewResponder$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 8
    move-result v1

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 20
    move-result v1

    .line 21
    .line 22
    cmpg-float v0, v0, v1

    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 32
    move-result v1

    .line 33
    .line 34
    cmpl-float v0, v0, v1

    .line 35
    .line 36
    if-ltz v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 40
    move-result p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 44
    move-result p1

    .line 45
    .line 46
    cmpl-float p0, p0, p1

    .line 47
    .line 48
    if-ltz p0, :cond_0

    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    :goto_0
    return p0
.end method

.method private static final e(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->r(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->n()J

    .line 9
    move-result-wide p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0, p1}, Landroidx/compose/ui/geometry/Rect;->t(J)Landroidx/compose/ui/geometry/Rect;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
