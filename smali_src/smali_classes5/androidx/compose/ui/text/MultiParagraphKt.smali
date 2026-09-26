.class public final Landroidx/compose/ui/text/MultiParagraphKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraph.kt\nandroidx/compose/ui/text/MultiParagraphKt\n*L\n1#1,958:1\n828#1,16:959\n828#1,16:975\n828#1,16:991\n*S KotlinDebug\n*F\n+ 1 MultiParagraph.kt\nandroidx/compose/ui/text/MultiParagraphKt\n*L\n778#1:959,16\n798#1:975,16\n818#1:991,16\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/util/List;I)I
    .locals 7
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "paragraphInfoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    .line 15
    :goto_0
    if-gt v3, v0, :cond_3

    .line 16
    .line 17
    add-int v4, v3, v0

    .line 18
    ushr-int/2addr v4, v1

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->f()I

    .line 28
    move-result v6

    .line 29
    .line 30
    if-le v6, p1, :cond_0

    .line 31
    move v5, v1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->b()I

    .line 36
    move-result v5

    .line 37
    .line 38
    if-gt v5, p1, :cond_1

    .line 39
    const/4 v5, -0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v2

    .line 42
    .line 43
    :goto_1
    if-gez v5, :cond_2

    .line 44
    .line 45
    add-int/lit8 v3, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_2
    if-lez v5, :cond_4

    .line 49
    .line 50
    add-int/lit8 v0, v4, -0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    add-int/2addr v3, v1

    .line 53
    neg-int v4, v3

    .line 54
    :cond_4
    return v4
.end method

.method public static final b(Ljava/util/List;I)I
    .locals 7
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "paragraphInfoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    .line 15
    :goto_0
    if-gt v3, v0, :cond_3

    .line 16
    .line 17
    add-int v4, v3, v0

    .line 18
    ushr-int/2addr v4, v1

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->g()I

    .line 28
    move-result v6

    .line 29
    .line 30
    if-le v6, p1, :cond_0

    .line 31
    move v5, v1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->c()I

    .line 36
    move-result v5

    .line 37
    .line 38
    if-gt v5, p1, :cond_1

    .line 39
    const/4 v5, -0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v2

    .line 42
    .line 43
    :goto_1
    if-gez v5, :cond_2

    .line 44
    .line 45
    add-int/lit8 v3, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_2
    if-lez v5, :cond_4

    .line 49
    .line 50
    add-int/lit8 v0, v4, -0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    add-int/2addr v3, v1

    .line 53
    neg-int v4, v3

    .line 54
    :cond_4
    return v4
.end method

.method public static final c(Ljava/util/List;F)I
    .locals 7
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/ParagraphInfo;",
            ">;F)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "paragraphInfoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    .line 15
    :goto_0
    if-gt v3, v0, :cond_3

    .line 16
    .line 17
    add-int v4, v3, v0

    .line 18
    ushr-int/2addr v4, v1

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/ui/text/ParagraphInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->h()F

    .line 28
    move-result v6

    .line 29
    .line 30
    cmpl-float v6, v6, p1

    .line 31
    .line 32
    if-lez v6, :cond_0

    .line 33
    move v5, v1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/ParagraphInfo;->a()F

    .line 38
    move-result v5

    .line 39
    .line 40
    cmpg-float v5, v5, p1

    .line 41
    .line 42
    if-gtz v5, :cond_1

    .line 43
    const/4 v5, -0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v5, v2

    .line 46
    .line 47
    :goto_1
    if-gez v5, :cond_2

    .line 48
    .line 49
    add-int/lit8 v3, v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    if-lez v5, :cond_4

    .line 53
    .line 54
    add-int/lit8 v0, v4, -0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    add-int/2addr v3, v1

    .line 57
    neg-int v4, v3

    .line 58
    :cond_4
    return v4
.end method
