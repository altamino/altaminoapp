.class public final Landroidx/compose/ui/graphics/ShadowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/Shadow;F)Landroidx/compose/ui/graphics/Shadow;
    .locals 8
    .param p0    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

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
    new-instance v0, Landroidx/compose/ui/graphics/Shadow;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Shadow;->c()J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->c()J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, v3, v4, p2}, Landroidx/compose/ui/graphics/ColorKt;->i(JJF)J

    .line 24
    move-result-wide v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 28
    move-result-wide v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 32
    move-result-wide v6

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v5, v6, v7, p2}, Landroidx/compose/ui/geometry/OffsetKt;->e(JJF)J

    .line 36
    move-result-wide v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Shadow;->b()F

    .line 40
    move-result p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->b()F

    .line 44
    move-result p1

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->a(FFF)F

    .line 48
    move-result v6

    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v1, v0

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/k;)V

    .line 54
    return-object v0
.end method
