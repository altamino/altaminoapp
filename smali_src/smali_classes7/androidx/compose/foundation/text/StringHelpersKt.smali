.class public final Landroidx/compose/foundation/text/StringHelpersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    move-result v0

    .line 12
    .line 13
    :goto_0
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 17
    move-result v1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    return p1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static final b(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    :goto_0
    if-lez p1, :cond_1

    .line 10
    .line 11
    add-int/lit8 v0, p1, -0x1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    move-result v0

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    return p1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static final c(Ljava/lang/CharSequence;I)J
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/StringHelpersKt;->b(Ljava/lang/CharSequence;I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/StringHelpersKt;->a(Ljava/lang/CharSequence;I)I

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
