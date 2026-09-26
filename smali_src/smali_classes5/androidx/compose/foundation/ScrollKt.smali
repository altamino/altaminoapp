.class public final Landroidx/compose/foundation/ScrollKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scroll.kt\nandroidx/compose/foundation/ScrollKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,382:1\n135#2:383\n*S KotlinDebug\n*F\n+ 1 Scroll.kt\nandroidx/compose/foundation/ScrollKt\n*L\n314#1:383\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 7
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    const-string v0, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move v3, p4

    .line 15
    move-object v4, p3

    .line 16
    move v5, p2

    .line 17
    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)Landroidx/compose/ui/Modifier;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x2

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    const/4 p4, 0x0

    .line 16
    .line 17
    .line 18
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final c(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;
    .locals 7
    .param p1    # Landroidx/compose/runtime/Composer;
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
    const p2, -0x5746c6c7

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 p2, p3, 0x1

    .line 9
    const/4 p3, 0x0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    move p0, p3

    .line 13
    .line 14
    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    .line 15
    .line 16
    sget-object p2, Landroidx/compose/foundation/ScrollState;->Companion:Landroidx/compose/foundation/ScrollState$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/foundation/ScrollState$Companion;->a()Landroidx/compose/runtime/saveable/Saver;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    new-instance v3, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, p0}, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1;-><init>(I)V

    .line 27
    .line 28
    const/16 v5, 0x48

    .line 29
    const/4 v6, 0x4

    .line 30
    move-object v4, p1

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    check-cast p0, Landroidx/compose/foundation/ScrollState;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 40
    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/ScrollKt$scroll$$inlined$debugInspectorInfo$1;

    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move v5, p4

    .line 14
    move v6, p5

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt$scroll$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    :goto_0
    new-instance v7, Landroidx/compose/foundation/ScrollKt$scroll$2;

    .line 25
    move-object v1, v7

    .line 26
    move v2, p5

    .line 27
    move-object v3, p1

    .line 28
    move v4, p4

    .line 29
    move-object v5, p3

    .line 30
    move v6, p2

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt$scroll$2;-><init>(ZLandroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/ui/Modifier;Le8/l;Le8/q;)Landroidx/compose/ui/Modifier;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 7
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    const-string v0, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v6, 0x1

    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move v3, p4

    .line 15
    move-object v4, p3

    .line 16
    move v5, p2

    .line 17
    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)Landroidx/compose/ui/Modifier;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x2

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    const/4 p4, 0x0

    .line 16
    .line 17
    .line 18
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
