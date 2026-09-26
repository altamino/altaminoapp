.class public final Landroidx/compose/foundation/BackgroundKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackground.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Background.kt\nandroidx/compose/foundation/BackgroundKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,146:1\n135#2:147\n135#2:148\n*S KotlinDebug\n*F\n+ 1 Background.kt\nandroidx/compose/foundation/BackgroundKt\n*L\n49#1:147\n78#1:148\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$background"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "shape"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/Background;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroidx/compose/foundation/BackgroundKt$background-bw27NRU$$inlined$debugInspectorInfo$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1, p2, p3}, Landroidx/compose/foundation/BackgroundKt$background-bw27NRU$$inlined$debugInspectorInfo$1;-><init>(JLandroidx/compose/ui/graphics/Shape;)V

    .line 30
    move-object v6, v1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 35
    move-result-object p1

    .line 36
    move-object v6, p1

    .line 37
    :goto_0
    const/4 v7, 0x6

    .line 38
    const/4 v8, 0x0

    .line 39
    move-object v1, v0

    .line 40
    move-object v5, p3

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/Background;-><init>(Landroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Le8/l;ILkotlin/jvm/internal/k;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x2

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->a()Landroidx/compose/ui/graphics/Shape;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/BackgroundKt;->a(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
