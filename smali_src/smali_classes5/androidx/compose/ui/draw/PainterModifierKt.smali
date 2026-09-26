.class public final Landroidx/compose/ui/draw/PainterModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPainterModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PainterModifier.kt\nandroidx/compose/ui/draw/PainterModifierKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,320:1\n135#2:321\n*S KotlinDebug\n*F\n+ 1 PainterModifier.kt\nandroidx/compose/ui/draw/PainterModifierKt\n*L\n72#1:321\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
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
    const-string v0, "painter"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "alignment"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "contentScale"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/draw/PainterModifier;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->c()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;

    .line 31
    move-object v2, v1

    .line 32
    move-object v3, p1

    .line 33
    move v4, p2

    .line 34
    move-object v5, p3

    .line 35
    move-object v6, p4

    .line 36
    move v7, p5

    .line 37
    move-object v8, p6

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/draw/PainterModifierKt$paint$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 41
    :goto_0
    move-object v8, v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Le8/l;

    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    move-object v1, v0

    .line 49
    move-object v2, p1

    .line 50
    move v3, p2

    .line 51
    move-object v4, p3

    .line 52
    move-object v5, p4

    .line 53
    move v6, p5

    .line 54
    move-object v7, p6

    .line 55
    .line 56
    .line 57
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/draw/PainterModifier;-><init>(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Le8/l;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x2

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    move v2, p2

    .line 7
    .line 8
    and-int/lit8 p2, p7, 0x4

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 16
    move-result-object p3

    .line 17
    :cond_1
    move-object v3, p3

    .line 18
    .line 19
    and-int/lit8 p2, p7, 0x8

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    sget-object p2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/compose/ui/layout/ContentScale$Companion;->c()Landroidx/compose/ui/layout/ContentScale;

    .line 27
    move-result-object p4

    .line 28
    :cond_2
    move-object v4, p4

    .line 29
    .line 30
    and-int/lit8 p2, p7, 0x10

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    const/high16 p5, 0x3f800000    # 1.0f

    .line 35
    :cond_3
    move v5, p5

    .line 36
    .line 37
    and-int/lit8 p2, p7, 0x20

    .line 38
    .line 39
    if-eqz p2, :cond_4

    .line 40
    const/4 p6, 0x0

    .line 41
    :cond_4
    move-object v6, p6

    .line 42
    move-object v0, p0

    .line 43
    move-object v1, p1

    .line 44
    .line 45
    .line 46
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;)Landroidx/compose/ui/Modifier;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
