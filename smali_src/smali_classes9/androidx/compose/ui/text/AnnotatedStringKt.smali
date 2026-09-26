.class public final Landroidx/compose/ui/text/AnnotatedStringKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnnotatedString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,863:1\n32#2,6:864\n32#2,4:873\n37#2:879\n126#2,3:881\n32#2,4:884\n129#2,2:888\n37#2:890\n131#2:891\n126#2,3:892\n32#2,4:895\n129#2,2:899\n37#2:901\n131#2:902\n32#2,4:907\n37#2:913\n126#2,5:915\n37#2:920\n131#2:921\n34#3,3:870\n37#3,2:877\n39#3:880\n34#3,3:904\n37#3,2:911\n39#3:914\n1#4:903\n*S KotlinDebug\n*F\n+ 1 AnnotatedString.kt\nandroidx/compose/ui/text/AnnotatedStringKt\n*L\n497#1:864,6\n532#1:873,4\n532#1:879\n533#1:881,3\n533#1:884,4\n533#1:888,2\n533#1:890\n533#1:891\n568#1:892,3\n568#1:895,4\n568#1:899,2\n568#1:901\n568#1:902\n786#1:907,4\n786#1:913\n786#1:915,5\n786#1:920\n786#1:921\n532#1:870,3\n532#1:877,2\n532#1:880\n786#1:904,3\n786#1:911,2\n786#1:914\n*E\n"
.end annotation


# static fields
.field private static final EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, v6

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 13
    .line 14
    sput-object v6, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    return-void
.end method

.method public static final synthetic a(Ljava/util/List;II)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->e(Ljava/util/List;II)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->i(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(IIII)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-gt p0, p2, :cond_3

    if-gt p3, p1, :cond_3

    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    if-ne p2, p3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p0, p1, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-ne p2, p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static final d()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

    return-object v0
.end method

.method private static final e(Ljava/util/List;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "+TT;>;>;II)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-gt p1, p2, :cond_3

    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    .line 19
    :goto_0
    if-ge v3, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    move-object v5, v4

    .line 25
    .line 26
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 30
    move-result v6

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 34
    move-result v5

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2, v6, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->g(IIII)Z

    .line 38
    move-result v5

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    move-result v1

    .line 60
    .line 61
    :goto_1
    if-ge v2, v1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 68
    .line 69
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 77
    move-result v6

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    .line 81
    move-result v6

    .line 82
    sub-int/2addr v6, p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 86
    move-result v7

    .line 87
    .line 88
    .line 89
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result v7

    .line 91
    sub-int/2addr v7, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->g()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, v5, v6, v7, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    return-object p0

    .line 106
    .line 107
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v0, "start ("

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p1, ") should be less than or equal to end ("

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const/16 p1, 0x29

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p1
.end method

.method private static final f(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "II)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lt p2, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->e()Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    move v3, v2

    .line 44
    .line 45
    :goto_0
    if-ge v3, v1, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    move-object v5, v4

    .line 51
    .line 52
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 56
    move-result v6

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 60
    move-result v5

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2, v6, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->g(IIII)Z

    .line 64
    move-result v5

    .line 65
    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 78
    move-result v1

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 85
    move-result v1

    .line 86
    .line 87
    :goto_1
    if-ge v2, v1, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 94
    .line 95
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 103
    move-result v6

    .line 104
    .line 105
    .line 106
    invoke-static {v6, p1, p2}, Lj8/m;->n(III)I

    .line 107
    move-result v6

    .line 108
    sub-int/2addr v6, p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 112
    move-result v3

    .line 113
    .line 114
    .line 115
    invoke-static {v3, p1, p2}, Lj8/m;->n(III)I

    .line 116
    move-result v3

    .line 117
    sub-int/2addr v3, p1

    .line 118
    .line 119
    .line 120
    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    return-object p0
.end method

.method public static final g(IIII)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/AnnotatedStringKt;->c(IIII)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/AnnotatedStringKt;->c(IIII)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method

.method public static final h(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/ParagraphStyle;)Ljava/util/List;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/ParagraphStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/ParagraphStyle;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/ParagraphStyle;",
            ">;>;"
        }
    .end annotation

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
    const-string v0, "defaultParagraphStyle"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->d()Ljava/util/List;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    move v4, v3

    .line 34
    move v5, v4

    .line 35
    .line 36
    :goto_0
    if-ge v4, v2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->a()Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->b()I

    .line 52
    move-result v8

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->c()I

    .line 56
    move-result v6

    .line 57
    .line 58
    if-eq v8, v5, :cond_0

    .line 59
    .line 60
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 61
    .line 62
    .line 63
    invoke-direct {v9, p1, v5, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    :cond_0
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v7}, Landroidx/compose/ui/text/ParagraphStyle;->i(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 72
    move-result-object v7

    .line 73
    .line 74
    .line 75
    invoke-direct {v5, v7, v8, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    move v5, v6

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    if-eq v5, v0, :cond_2

    .line 85
    .line 86
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 96
    move-result p0

    .line 97
    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1, v3, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3
    return-object v1
.end method

.method private static final i(Landroidx/compose/ui/text/AnnotatedString;II)Landroidx/compose/ui/text/AnnotatedString;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 3
    .line 4
    if-eq p1, p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :goto_0
    move-object v1, v0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    const-string v0, ""

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AnnotatedStringKt;->f(Landroidx/compose/ui/text/AnnotatedString;II)Ljava/util/List;

    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v0, v6

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 34
    return-object v6
.end method
