.class public final Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/google/zxing/a;IILjava/nio/charset/Charset;II)Lg5/b;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/a;->AZTEC:Lcom/google/zxing/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p5, p6}, Lcom/google/zxing/aztec/encoder/c;->d([BII)Lcom/google/zxing/aztec/encoder/a;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p2, p3}, Lf5/a;->c(Lcom/google/zxing/aztec/encoder/a;II)Lg5/b;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p2, "Can only encode AZTEC, but got "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method private static c(Lcom/google/zxing/aztec/encoder/a;II)Lg5/b;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/a;->a()Lg5/b;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lg5/b;->i()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lg5/b;->g()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p2

    .line 23
    .line 24
    div-int v2, p1, v0

    .line 25
    .line 26
    div-int v3, p2, v1

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v2

    .line 31
    .line 32
    mul-int v3, v0, v2

    .line 33
    .line 34
    sub-int v3, p1, v3

    .line 35
    .line 36
    div-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    mul-int v4, v1, v2

    .line 39
    .line 40
    sub-int v4, p2, v4

    .line 41
    .line 42
    div-int/lit8 v4, v4, 0x2

    .line 43
    .line 44
    new-instance v5, Lg5/b;

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, p1, p2}, Lg5/b;-><init>(II)V

    .line 48
    const/4 p1, 0x0

    .line 49
    move p2, p1

    .line 50
    .line 51
    :goto_0
    if-ge p2, v1, :cond_2

    .line 52
    move v6, p1

    .line 53
    move v7, v3

    .line 54
    .line 55
    :goto_1
    if-ge v6, v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v6, p2}, Lg5/b;->f(II)Z

    .line 59
    move-result v8

    .line 60
    .line 61
    if-eqz v8, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v7, v4, v2, v2}, Lg5/b;->k(IIII)V

    .line 65
    .line 66
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 67
    add-int/2addr v7, v2

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 71
    add-int/2addr v4, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v5

    .line 74
    .line 75
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 79
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lg5/b;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    const/16 v1, 0x21

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz p5, :cond_2

    .line 8
    .line 9
    sget-object v3, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    .line 10
    .line 11
    .line 12
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v4

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    :cond_0
    sget-object v3, Lcom/google/zxing/c;->ERROR_CORRECTION:Lcom/google/zxing/c;

    .line 30
    .line 31
    .line 32
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    move-result v1

    .line 48
    .line 49
    :cond_1
    sget-object v3, Lcom/google/zxing/c;->AZTEC_LAYERS:Lcom/google/zxing/c;

    .line 50
    .line 51
    .line 52
    invoke-interface {p5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p5

    .line 60
    .line 61
    .line 62
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object p5

    .line 64
    .line 65
    .line 66
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    move-result v2

    .line 68
    :cond_2
    move-object v7, v0

    .line 69
    move v8, v1

    .line 70
    move v9, v2

    .line 71
    move-object v3, p1

    .line 72
    move-object v4, p2

    .line 73
    move v5, p3

    .line 74
    move v6, p4

    .line 75
    .line 76
    .line 77
    invoke-static/range {v3 .. v9}, Lf5/a;->b(Ljava/lang/String;Lcom/google/zxing/a;IILjava/nio/charset/Charset;II)Lg5/b;

    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method
