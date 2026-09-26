.class public final Landroidx/compose/ui/text/style/TextDrawStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/style/TextDrawStyle;Landroidx/compose/ui/text/style/TextDrawStyle;F)Landroidx/compose/ui/text/style/TextDrawStyle;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/style/TextDrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextDrawStyle;
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
    instance-of v0, p0, Landroidx/compose/ui/text/style/BrushStyle;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    instance-of v0, p1, Landroidx/compose/ui/text/style/BrushStyle;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/ui/text/style/TextDrawStyle;->Companion:Landroidx/compose/ui/text/style/TextDrawStyle$Companion;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextDrawStyle;->a()J

    .line 24
    move-result-wide v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroidx/compose/ui/text/style/TextDrawStyle;->a()J

    .line 28
    move-result-wide p0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, p0, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->i(JJF)J

    .line 32
    move-result-wide p0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/style/TextDrawStyle$Companion;->b(J)Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    check-cast p0, Landroidx/compose/ui/text/style/TextDrawStyle;

    .line 44
    :goto_0
    return-object p0
.end method
