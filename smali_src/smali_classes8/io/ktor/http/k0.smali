.class public final Lio/ktor/http/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n151#2,6:264\n163#2,6:270\n1#3:276\n*S KotlinDebug\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n*L\n34#1:264,6\n35#1:270,6\n*E\n"
.end annotation


# static fields
.field private static final ROOT_PATH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lio/ktor/http/k0;->ROOT_PATH:Ljava/util/List;

    .line 9
    return-void
.end method

.method private static final a(Ljava/lang/String;IIC)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    add-int v1, p1, v0

    .line 4
    .line 5
    if-ge v1, p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    move-result v1

    .line 10
    .line 11
    if-ne v1, p3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v0
.end method

.method private static final b(Lio/ktor/http/f0;Ljava/lang/String;II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lio/ktor/http/k0;->e(Ljava/lang/String;II)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-lez v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p3

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    if-ge v0, p3, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->x(I)V

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->x(I)V

    .line 60
    :goto_2
    return-void
.end method

.method private static final c(Ljava/lang/String;II)I
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x5b

    .line 7
    .line 8
    const/16 v2, 0x41

    .line 9
    .line 10
    const/16 v3, 0x7b

    .line 11
    const/4 v4, -0x1

    .line 12
    .line 13
    const/16 v5, 0x61

    .line 14
    .line 15
    if-gt v5, v0, :cond_0

    .line 16
    .line 17
    if-ge v0, v3, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-gt v2, v0, :cond_1

    .line 21
    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    :goto_0
    move v0, p1

    .line 24
    move v6, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, p1

    .line 27
    move v6, v0

    .line 28
    .line 29
    :goto_1
    if-ge v0, p2, :cond_9

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 33
    move-result v7

    .line 34
    .line 35
    const/16 v8, 0x3a

    .line 36
    .line 37
    if-ne v7, v8, :cond_3

    .line 38
    .line 39
    if-ne v6, v4, :cond_2

    .line 40
    sub-int/2addr v0, p1

    .line 41
    return v0

    .line 42
    .line 43
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string p2, "Illegal character in scheme at position "

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    .line 66
    :cond_3
    const/16 v9, 0x2f

    .line 67
    .line 68
    if-eq v7, v9, :cond_9

    .line 69
    .line 70
    const/16 v9, 0x3f

    .line 71
    .line 72
    if-eq v7, v9, :cond_9

    .line 73
    .line 74
    const/16 v9, 0x23

    .line 75
    .line 76
    if-ne v7, v9, :cond_4

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_4
    if-ne v6, v4, :cond_8

    .line 80
    .line 81
    if-gt v5, v7, :cond_5

    .line 82
    .line 83
    if-ge v7, v3, :cond_5

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_5
    if-gt v2, v7, :cond_6

    .line 87
    .line 88
    if-ge v7, v1, :cond_6

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_6
    const/16 v9, 0x30

    .line 92
    .line 93
    if-gt v9, v7, :cond_7

    .line 94
    .line 95
    if-ge v7, v8, :cond_7

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_7
    const/16 v8, 0x2e

    .line 99
    .line 100
    if-eq v7, v8, :cond_8

    .line 101
    .line 102
    const/16 v8, 0x2b

    .line 103
    .line 104
    if-eq v7, v8, :cond_8

    .line 105
    .line 106
    const/16 v8, 0x2d

    .line 107
    .line 108
    if-eq v7, v8, :cond_8

    .line 109
    move v6, v0

    .line 110
    .line 111
    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_9
    :goto_3
    return v4
.end method

.method public static final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/k0;->ROOT_PATH:Ljava/util/List;

    return-object v0
.end method

.method private static final e(Ljava/lang/String;II)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    if-ge p1, p2, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    move-result v2

    .line 9
    .line 10
    const/16 v3, 0x5b

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    const/16 v3, 0x5d

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    move v1, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    const/16 v3, 0x3a

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    return p1

    .line 28
    .line 29
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method private static final f(Lio/ktor/http/f0;Ljava/lang/String;III)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 4
    .line 5
    if-eq p4, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 7
    .line 8
    if-ne p4, v0, :cond_0

    .line 9
    .line 10
    const-string p4, ""

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p4}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance p4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const/16 v0, 0x2f

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lio/ktor/http/h0;->i(Lio/ktor/http/f0;Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string p3, "Invalid file url: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    .line 66
    :cond_1
    const/16 v3, 0x2f

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x4

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v2, p1

    .line 71
    move v4, p2

    .line 72
    .line 73
    .line 74
    invoke-static/range {v2 .. v7}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 75
    move-result p4

    .line 76
    const/4 v0, -0x1

    .line 77
    .line 78
    if-eq p4, v0, :cond_3

    .line 79
    .line 80
    if-ne p4, p3, :cond_2

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p2}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Lio/ktor/http/h0;->i(Lio/ktor/http/f0;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private static final g(Lio/ktor/http/f0;Ljava/lang/String;II)V
    .locals 2

    .line 1
    .line 2
    if-ge p2, p3, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    add-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->r(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method private static final h(Lio/ktor/http/f0;Ljava/lang/String;II)V
    .locals 8

    .line 1
    .line 2
    const-string v1, "@"

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x4

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move v2, p2

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->c0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 21
    .line 22
    .line 23
    invoke-static {v2, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x7

    .line 28
    const/4 v7, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static/range {v2 .. v7}, Lio/ktor/http/b;->i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lio/ktor/http/f0;->A(Ljava/lang/String;)V

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 48
    return-void

    .line 49
    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string p3, "Invalid mailto url: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p1, ", it should contain \'@\'."

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method private static final i(Lio/ktor/http/f0;Ljava/lang/String;II)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p2, v0

    .line 3
    .line 4
    if-ne p2, p3, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->z(Z)V

    .line 8
    return p3

    .line 9
    .line 10
    :cond_0
    const/16 v2, 0x23

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v1, p1

    .line 15
    move v3, p2

    .line 16
    .line 17
    .line 18
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    .line 33
    :goto_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p3

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x6

    .line 51
    const/4 v5, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static/range {v0 .. v5}, Lio/ktor/http/e0;->d(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/z;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    new-instance p2, Lio/ktor/http/k0$a;

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p0}, Lio/ktor/http/k0$a;-><init>(Lio/ktor/http/f0;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2}, Lio/ktor/util/t;->d(Le8/p;)V

    .line 64
    return p3
.end method

.method public static final j(Lio/ktor/http/f0;Ljava/lang/String;)Lio/ktor/http/f0;
    .locals 1
    .param p0    # Lio/ktor/http/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
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
    const-string v0, "urlString"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lio/ktor/http/k0;->k(Lio/ktor/http/f0;Ljava/lang/String;)Lio/ktor/http/f0;

    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    .line 25
    new-instance v0, Lio/ktor/http/j0;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, p0}, Lio/ktor/http/j0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw v0
.end method

.method public static final k(Lio/ktor/http/f0;Ljava/lang/String;)Lio/ktor/http/f0;
    .locals 24
    .param p0    # Lio/ktor/http/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "urlString"

    .line 12
    .line 13
    .line 14
    invoke-static {v7, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    const/4 v9, -0x1

    .line 21
    const/4 v10, 0x1

    .line 22
    .line 23
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lkotlin/text/a;->c(C)Z

    .line 31
    move-result v3

    .line 32
    xor-int/2addr v3, v10

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v9

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 43
    move-result v1

    .line 44
    add-int/2addr v1, v9

    .line 45
    .line 46
    if-ltz v1, :cond_4

    .line 47
    .line 48
    :goto_2
    add-int/lit8 v3, v1, -0x1

    .line 49
    .line 50
    .line 51
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 52
    move-result v4

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Lkotlin/text/a;->c(C)Z

    .line 56
    move-result v4

    .line 57
    xor-int/2addr v4, v10

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    move v11, v1

    .line 61
    goto :goto_4

    .line 62
    .line 63
    :cond_2
    if-gez v3, :cond_3

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v1, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_3
    move v11, v9

    .line 68
    .line 69
    :goto_4
    add-int/lit8 v12, v11, 0x1

    .line 70
    .line 71
    .line 72
    invoke-static {v7, v2, v12}, Lio/ktor/http/k0;->c(Ljava/lang/String;II)I

    .line 73
    move-result v1

    .line 74
    .line 75
    const-string v13, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 76
    .line 77
    if-lez v1, :cond_5

    .line 78
    .line 79
    add-int v3, v2, v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    sget-object v4, Lio/ktor/http/l0;->Companion:Lio/ktor/http/l0$a;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Lio/ktor/http/l0$a;->a(Ljava/lang/String;)Lio/ktor/http/l0;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Lio/ktor/http/f0;->y(Lio/ktor/http/l0;)V

    .line 96
    add-int/2addr v1, v10

    .line 97
    add-int/2addr v2, v1

    .line 98
    .line 99
    :cond_5
    const/16 v14, 0x2f

    .line 100
    .line 101
    .line 102
    invoke-static {v7, v2, v12, v14}, Lio/ktor/http/k0;->a(Ljava/lang/String;IIC)I

    .line 103
    move-result v15

    .line 104
    add-int/2addr v2, v15

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/f0;->o()Lio/ktor/http/l0;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lio/ktor/http/l0;->d()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    const-string v3, "file"

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v7, v2, v12, v15}, Lio/ktor/http/k0;->f(Lio/ktor/http/f0;Ljava/lang/String;III)V

    .line 124
    return-object v0

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/f0;->o()Lio/ktor/http/l0;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lio/ktor/http/l0;->d()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    const-string v3, "mailto"

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    if-nez v15, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v7, v2, v12}, Lio/ktor/http/k0;->h(Lio/ktor/http/f0;Ljava/lang/String;II)V

    .line 146
    return-object v0

    .line 147
    .line 148
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string v1, "Failed requirement."

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    throw v0

    .line 159
    :cond_8
    const/4 v1, 0x2

    .line 160
    .line 161
    const/16 v16, 0x0

    .line 162
    .line 163
    if-lt v15, v1, :cond_d

    .line 164
    move v6, v2

    .line 165
    .line 166
    :goto_5
    const-string v1, "@/\\?#"

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Lio/ktor/util/i;->b(Ljava/lang/String;)[C

    .line 170
    move-result-object v2

    .line 171
    const/4 v4, 0x0

    .line 172
    const/4 v5, 0x4

    .line 173
    .line 174
    const/16 v17, 0x0

    .line 175
    .line 176
    move-object/from16 v1, p1

    .line 177
    move v3, v6

    .line 178
    move v8, v6

    .line 179
    .line 180
    move-object/from16 v6, v17

    .line 181
    .line 182
    .line 183
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->e0(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    .line 184
    move-result v1

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 192
    move-result v2

    .line 193
    .line 194
    if-lez v2, :cond_9

    .line 195
    goto :goto_6

    .line 196
    .line 197
    :cond_9
    move-object/from16 v1, v16

    .line 198
    .line 199
    :goto_6
    if-eqz v1, :cond_a

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 203
    move-result v1

    .line 204
    move v2, v1

    .line 205
    goto :goto_7

    .line 206
    :cond_a
    move v2, v12

    .line 207
    .line 208
    :goto_7
    if-ge v2, v12, :cond_c

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    .line 212
    move-result v1

    .line 213
    .line 214
    const/16 v3, 0x40

    .line 215
    .line 216
    if-ne v1, v3, :cond_c

    .line 217
    .line 218
    .line 219
    invoke-static {v7, v8, v2}, Lio/ktor/http/k0;->e(Ljava/lang/String;II)I

    .line 220
    move-result v1

    .line 221
    .line 222
    if-eq v1, v9, :cond_b

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 226
    move-result-object v3

    .line 227
    .line 228
    .line 229
    invoke-static {v3, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v3}, Lio/ktor/http/f0;->v(Ljava/lang/String;)V

    .line 233
    .line 234
    add-int/lit8 v1, v1, 0x1

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lio/ktor/http/f0;->t(Ljava/lang/String;)V

    .line 245
    goto :goto_8

    .line 246
    .line 247
    .line 248
    :cond_b
    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    .line 251
    .line 252
    invoke-static {v1, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Lio/ktor/http/f0;->v(Ljava/lang/String;)V

    .line 256
    .line 257
    :goto_8
    add-int/lit8 v6, v2, 0x1

    .line 258
    goto :goto_5

    .line 259
    .line 260
    .line 261
    :cond_c
    invoke-static {v0, v7, v8, v2}, Lio/ktor/http/k0;->b(Lio/ktor/http/f0;Ljava/lang/String;II)V

    .line 262
    :cond_d
    move v8, v2

    .line 263
    .line 264
    if-lt v8, v12, :cond_f

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    .line 268
    move-result v1

    .line 269
    .line 270
    if-ne v1, v14, :cond_e

    .line 271
    .line 272
    sget-object v1, Lio/ktor/http/k0;->ROOT_PATH:Ljava/util/List;

    .line 273
    goto :goto_9

    .line 274
    .line 275
    .line 276
    :cond_e
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    .line 280
    :goto_9
    invoke-virtual {v0, v1}, Lio/ktor/http/f0;->u(Ljava/util/List;)V

    .line 281
    return-object v0

    .line 282
    .line 283
    :cond_f
    if-nez v15, :cond_10

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/f0;->g()Ljava/util/List;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v10}, Lkotlin/collections/t;->c0(Ljava/util/List;I)Ljava/util/List;

    .line 291
    move-result-object v1

    .line 292
    goto :goto_a

    .line 293
    .line 294
    .line 295
    :cond_10
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    .line 299
    :goto_a
    invoke-virtual {v0, v1}, Lio/ktor/http/f0;->u(Ljava/util/List;)V

    .line 300
    .line 301
    const-string v1, "?#"

    .line 302
    .line 303
    .line 304
    invoke-static {v1}, Lio/ktor/util/i;->b(Ljava/lang/String;)[C

    .line 305
    move-result-object v2

    .line 306
    const/4 v4, 0x0

    .line 307
    const/4 v5, 0x4

    .line 308
    const/4 v6, 0x0

    .line 309
    .line 310
    move-object/from16 v1, p1

    .line 311
    move v3, v8

    .line 312
    .line 313
    .line 314
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->e0(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    .line 315
    move-result v1

    .line 316
    .line 317
    .line 318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    move-result-object v1

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 323
    move-result v2

    .line 324
    .line 325
    if-lez v2, :cond_11

    .line 326
    .line 327
    move-object/from16 v16, v1

    .line 328
    .line 329
    :cond_11
    if-eqz v16, :cond_12

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 333
    move-result v1

    .line 334
    goto :goto_b

    .line 335
    :cond_12
    move v1, v12

    .line 336
    .line 337
    :goto_b
    if-le v1, v8, :cond_16

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 341
    move-result-object v2

    .line 342
    .line 343
    .line 344
    invoke-static {v2, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/f0;->g()Ljava/util/List;

    .line 348
    move-result-object v3

    .line 349
    .line 350
    .line 351
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 352
    move-result v3

    .line 353
    .line 354
    if-ne v3, v10, :cond_13

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/f0;->g()Ljava/util/List;

    .line 358
    move-result-object v3

    .line 359
    .line 360
    .line 361
    invoke-static {v3}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    .line 362
    move-result-object v3

    .line 363
    .line 364
    check-cast v3, Ljava/lang/CharSequence;

    .line 365
    .line 366
    .line 367
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 368
    move-result v3

    .line 369
    .line 370
    if-nez v3, :cond_13

    .line 371
    .line 372
    .line 373
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 374
    move-result-object v3

    .line 375
    goto :goto_c

    .line 376
    .line 377
    .line 378
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/f0;->g()Ljava/util/List;

    .line 379
    move-result-object v3

    .line 380
    .line 381
    :goto_c
    const-string v4, "/"

    .line 382
    .line 383
    .line 384
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    move-result v4

    .line 386
    .line 387
    if-eqz v4, :cond_14

    .line 388
    .line 389
    sget-object v2, Lio/ktor/http/k0;->ROOT_PATH:Ljava/util/List;

    .line 390
    goto :goto_d

    .line 391
    .line 392
    :cond_14
    new-array v4, v10, [C

    .line 393
    const/4 v5, 0x0

    .line 394
    .line 395
    aput-char v14, v4, v5

    .line 396
    .line 397
    const/16 v20, 0x0

    .line 398
    .line 399
    const/16 v21, 0x0

    .line 400
    .line 401
    const/16 v22, 0x6

    .line 402
    .line 403
    const/16 v23, 0x0

    .line 404
    .line 405
    move-object/from16 v18, v2

    .line 406
    .line 407
    move-object/from16 v19, v4

    .line 408
    .line 409
    .line 410
    invoke-static/range {v18 .. v23}, Lkotlin/text/k;->B0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 411
    move-result-object v2

    .line 412
    .line 413
    :goto_d
    if-ne v15, v10, :cond_15

    .line 414
    .line 415
    sget-object v4, Lio/ktor/http/k0;->ROOT_PATH:Ljava/util/List;

    .line 416
    goto :goto_e

    .line 417
    .line 418
    .line 419
    :cond_15
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 420
    move-result-object v4

    .line 421
    .line 422
    :goto_e
    check-cast v4, Ljava/util/Collection;

    .line 423
    .line 424
    check-cast v2, Ljava/lang/Iterable;

    .line 425
    .line 426
    .line 427
    invoke-static {v4, v2}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 428
    move-result-object v2

    .line 429
    .line 430
    check-cast v3, Ljava/util/Collection;

    .line 431
    .line 432
    check-cast v2, Ljava/lang/Iterable;

    .line 433
    .line 434
    .line 435
    invoke-static {v3, v2}, Lkotlin/collections/t;->D0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 436
    move-result-object v2

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v2}, Lio/ktor/http/f0;->u(Ljava/util/List;)V

    .line 440
    move v8, v1

    .line 441
    .line 442
    :cond_16
    if-ge v8, v12, :cond_17

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 446
    move-result v1

    .line 447
    .line 448
    const/16 v2, 0x3f

    .line 449
    .line 450
    if-ne v1, v2, :cond_17

    .line 451
    .line 452
    .line 453
    invoke-static {v0, v7, v8, v12}, Lio/ktor/http/k0;->i(Lio/ktor/http/f0;Ljava/lang/String;II)I

    .line 454
    move-result v8

    .line 455
    .line 456
    .line 457
    :cond_17
    invoke-static {v0, v7, v8, v12}, Lio/ktor/http/k0;->g(Lio/ktor/http/f0;Ljava/lang/String;II)V

    .line 458
    return-object v0
.end method
