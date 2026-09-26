.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsicsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiParagraphIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsicsKt\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,152:1\n34#2,3:153\n37#2,2:160\n39#2:163\n32#3,4:156\n37#3:162\n126#3,5:164\n37#3:169\n131#3:170\n*S KotlinDebug\n*F\n+ 1 MultiParagraphIntrinsics.kt\nandroidx/compose/ui/text/MultiParagraphIntrinsicsKt\n*L\n141#1:153,3\n141#1:160,2\n141#1:163\n141#1:156,4\n141#1:162\n141#1:164,5\n141#1:169\n141#1:170\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/MultiParagraphIntrinsicsKt;->b(Ljava/util/List;II)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;II)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    :goto_0
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    move-object v5, v4

    .line 23
    .line 24
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 28
    move-result v6

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 32
    move-result v5

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2, v6, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->g(IIII)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    move-result v1

    .line 58
    .line 59
    :goto_1
    if-ge v2, v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 69
    move-result v4

    .line 70
    .line 71
    if-gt p1, v4, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 75
    move-result v4

    .line 76
    .line 77
    if-gt v4, p2, :cond_2

    .line 78
    .line 79
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 87
    move-result v6

    .line 88
    sub-int/2addr v6, p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 92
    move-result v3

    .line 93
    sub-int/2addr v3, p1

    .line 94
    .line 95
    .line 96
    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p1, "placeholder can not overlap with paragraph."

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p0

    .line 115
    :cond_3
    return-object p0
.end method
