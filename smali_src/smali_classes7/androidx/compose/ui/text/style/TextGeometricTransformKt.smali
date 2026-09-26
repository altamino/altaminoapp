.class public final Landroidx/compose/ui/text/style/TextGeometricTransformKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/style/TextGeometricTransform;F)Landroidx/compose/ui/text/style/TextGeometricTransform;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/style/TextGeometricTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextGeometricTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "start"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "stop"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->b()F

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->b()F

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->c()F

    .line 28
    move-result p0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->c()F

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 36
    move-result p0

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    .line 40
    return-object v0
.end method
