.class public final Landroidx/compose/ui/text/android/LayoutCompatKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/text/Layout;IZ)I
    .locals 2
    .param p0    # Landroid/text/Layout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
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
    if-gtz p1, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lt p1, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 23
    move-result p0

    .line 24
    .line 25
    add-int/lit8 p0, p0, -0x1

    .line 26
    return p0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 38
    move-result p0

    .line 39
    .line 40
    if-eq v1, p1, :cond_2

    .line 41
    .line 42
    if-eq p0, p1, :cond_2

    .line 43
    return v0

    .line 44
    .line 45
    :cond_2
    if-ne v1, p1, :cond_3

    .line 46
    .line 47
    if-eqz p2, :cond_5

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    if-eqz p2, :cond_4

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_5
    :goto_0
    return v0
.end method
