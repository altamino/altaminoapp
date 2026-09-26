.class Lkotlin/text/t;
.super Lkotlin/text/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,805:1\n1174#2,2:806\n1#3:808\n1726#4,3:809\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:806,2\n600#1:809,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/s;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-nez p5, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p0

    .line 19
    move v1, p5

    .line 20
    move v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move v4, p3

    .line 23
    move v5, p4

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 27
    move-result p0

    .line 28
    :goto_0
    return p0
.end method

.method public static synthetic B(Ljava/lang/String;ILjava/lang/String;IIZILjava/lang/Object;)Z
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->A(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static C(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/CharSequence;
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
    if-ltz p1, :cond_5

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-eq p1, v1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    if-eq v2, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    move-result v2

    .line 29
    mul-int/2addr v2, p1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    new-instance v2, Lj8/i;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v1, p1}, Lj8/i;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lj8/g;->j()Lkotlin/collections/m0;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lkotlin/collections/m0;->nextInt()I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 67
    move-result p0

    .line 68
    .line 69
    new-array v1, p1, [C

    .line 70
    .line 71
    :goto_1
    if-ge v0, p1, :cond_2

    .line 72
    .line 73
    aput-char p0, v1, v0

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 82
    goto :goto_2

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    :cond_4
    :goto_2
    return-object v0

    .line 88
    .line 89
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v0, "Count \'n\' must be non-negative, but was "

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const/16 p1, 0x2e

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p1
.end method

.method public static final D(Ljava/lang/String;CCZ)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
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
    if-nez p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string p1, "replace(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 31
    move-result v2

    .line 32
    .line 33
    if-ge v0, v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p1, p3}, Lkotlin/text/c;->h(CCZ)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    move v2, p2

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    const-string p1, "toString(...)"

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    return-object p0
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "oldValue"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "newValue"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, v0, p3}, Lkotlin/text/k;->Y(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    return-object p0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lj8/m;->e(II)I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    move-result v4

    .line 37
    sub-int/2addr v4, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    move-result v5

    .line 42
    add-int/2addr v4, v5

    .line 43
    .line 44
    if-ltz v4, :cond_3

    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v5, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    add-int v0, v1, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    move-result v4

    .line 62
    .line 63
    if-ge v1, v4, :cond_2

    .line 64
    add-int/2addr v1, v3

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1, v1, p3}, Lkotlin/text/k;->Y(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 68
    move-result v1

    .line 69
    .line 70
    if-gtz v1, :cond_1

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 74
    move-result p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p0, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    const-string p1, "toString(...)"

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-object p0

    .line 88
    .line 89
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 93
    throw p0
.end method

.method public static synthetic F(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/t;->D(Ljava/lang/String;CCZ)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/k;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static H(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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
    const-string v0, "prefix"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    move-result v4

    .line 23
    move-object v0, p0

    .line 24
    move v1, p2

    .line 25
    move-object v2, p1

    .line 26
    move v5, p3

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->A(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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
    const-string v0, "prefix"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    move-result v4

    .line 24
    move-object v0, p0

    .line 25
    move-object v2, p1

    .line 26
    move v5, p2

    .line 27
    .line 28
    .line 29
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->A(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static synthetic J(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/text/k;->H(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/text/k;->I(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static q([C)Ljava/lang/String;
    .locals 1
    .param p0    # [C
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
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 11
    return-object v0
.end method

.method public static r([CII)Ljava/lang/String;
    .locals 2
    .param p0    # [C
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
    sget-object v0, Lkotlin/collections/c;->Companion:Lkotlin/collections/c$a;

    .line 8
    array-length v1, p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/c$a;->a(III)V

    .line 12
    .line 13
    new-instance v0, Ljava/lang/String;

    .line 14
    sub-int/2addr p2, p1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 18
    return-object v0
.end method

.method public static s([B)Ljava/lang/String;
    .locals 2
    .param p0    # [B
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
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    return-object v0
.end method

.method public static t(Ljava/lang/String;)[B
    .locals 1
    .param p0    # Ljava/lang/String;
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
    sget-object v0, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p0

    .line 12
    .line 13
    const-string v0, "getBytes(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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
    const-string v0, "suffix"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    sub-int v2, p2, v0

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x1

    .line 34
    move-object v1, p0

    .line 35
    move-object v3, p1

    .line 36
    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->A(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public static synthetic v(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/text/k;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0

    .line 9
    .line 10
    :cond_1
    if-nez p2, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    :goto_1
    return p0
.end method

.method public static synthetic x(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/text/k;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static y(Lkotlin/jvm/internal/u0;)Ljava/util/Comparator;
    .locals 1
    .param p0    # Lkotlin/jvm/internal/u0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/u0;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
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
    sget-object p0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 8
    .line 9
    const-string v0, "CASE_INSENSITIVE_ORDER"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    return-object p0
.end method

.method public static z(Ljava/lang/CharSequence;)Z
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
    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/text/k;->V(Ljava/lang/CharSequence;)Lj8/i;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v1, v0, Ljava/util/Collection;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    check-cast v1, Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    move-object v1, v0

    .line 41
    .line 42
    check-cast v1, Lkotlin/collections/m0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lkotlin/collections/m0;->nextInt()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/text/a;->c(C)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    const/4 p0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 60
    :goto_1
    return p0
.end method
