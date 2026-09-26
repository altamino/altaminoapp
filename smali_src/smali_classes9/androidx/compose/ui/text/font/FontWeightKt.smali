.class public final Landroidx/compose/ui/text/font/FontWeightKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontWeight;F)Landroidx/compose/ui/text/font/FontWeight;
    .locals 1
    .param p0    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
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
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 14
    move-result p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->b(IIF)I

    .line 22
    move-result p0

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    const/16 p2, 0x3e8

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, p2}, Lj8/m;->n(III)I

    .line 29
    move-result p0

    .line 30
    .line 31
    new-instance p1, Landroidx/compose/ui/text/font/FontWeight;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    .line 35
    return-object p1
.end method
