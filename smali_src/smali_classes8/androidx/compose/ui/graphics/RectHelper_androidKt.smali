.class public final Landroidx/compose/ui/graphics/RectHelper_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 11
    move-result v1

    .line 12
    float-to-int v1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 16
    move-result v2

    .line 17
    float-to-int v2, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 21
    move-result v3

    .line 22
    float-to-int v3, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 26
    move-result p0

    .line 27
    float-to-int p0, p0

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;
    .locals 4
    .param p0    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    new-instance v0, Landroid/graphics/RectF;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 23
    move-result p0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 27
    return-object v0
.end method

.method public static final c(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 8
    .line 9
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 10
    int-to-float v1, v1

    .line 11
    .line 12
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 13
    int-to-float v2, v2

    .line 14
    .line 15
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 16
    int-to-float v3, v3

    .line 17
    .line 18
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 19
    int-to-float p0, p0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 23
    return-object v0
.end method
