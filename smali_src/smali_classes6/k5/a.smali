.class public final Lk5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


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

.method private static b(Lcom/google/zxing/qrcode/encoder/f;III)Lg5/b;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/f;->a()Lcom/google/zxing/qrcode/encoder/b;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    shl-int/2addr p3, v2

    .line 17
    .line 18
    add-int v3, v0, p3

    .line 19
    add-int/2addr p3, v1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 27
    move-result p2

    .line 28
    .line 29
    div-int v3, p1, v3

    .line 30
    .line 31
    div-int p3, p2, p3

    .line 32
    .line 33
    .line 34
    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result p3

    .line 36
    .line 37
    mul-int v3, v0, p3

    .line 38
    .line 39
    sub-int v3, p1, v3

    .line 40
    .line 41
    div-int/lit8 v3, v3, 0x2

    .line 42
    .line 43
    mul-int v4, v1, p3

    .line 44
    .line 45
    sub-int v4, p2, v4

    .line 46
    .line 47
    div-int/lit8 v4, v4, 0x2

    .line 48
    .line 49
    new-instance v5, Lg5/b;

    .line 50
    .line 51
    .line 52
    invoke-direct {v5, p1, p2}, Lg5/b;-><init>(II)V

    .line 53
    const/4 p1, 0x0

    .line 54
    move p2, p1

    .line 55
    .line 56
    :goto_0
    if-ge p2, v1, :cond_2

    .line 57
    move v6, p1

    .line 58
    move v7, v3

    .line 59
    .line 60
    :goto_1
    if-ge v6, v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v6, p2}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 64
    move-result v8

    .line 65
    .line 66
    if-ne v8, v2, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v7, v4, p3, p3}, Lg5/b;->k(IIII)V

    .line 70
    .line 71
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 72
    add-int/2addr v7, p3

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 76
    add-int/2addr v4, p3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    return-object v5

    .line 79
    .line 80
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 84
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    sget-object v0, Lcom/google/zxing/a;->QR_CODE:Lcom/google/zxing/a;

    .line 9
    .line 10
    if-ne p2, v0, :cond_3

    .line 11
    .line 12
    if-ltz p3, :cond_2

    .line 13
    .line 14
    if-ltz p4, :cond_2

    .line 15
    .line 16
    sget-object p2, Ll5/a;->L:Ll5/a;

    .line 17
    const/4 v0, 0x4

    .line 18
    .line 19
    if-eqz p5, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/google/zxing/c;->ERROR_CORRECTION:Lcom/google/zxing/c;

    .line 22
    .line 23
    .line 24
    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Ll5/a;->valueOf(Ljava/lang/String;)Ll5/a;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    :cond_0
    sget-object v1, Lcom/google/zxing/c;->MARGIN:Lcom/google/zxing/c;

    .line 42
    .line 43
    .line 44
    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-static {p1, p2, p5}, Lcom/google/zxing/qrcode/encoder/c;->n(Ljava/lang/String;Ll5/a;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/f;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p3, p4, v0}, Lk5/a;->b(Lcom/google/zxing/qrcode/encoder/f;III)Lg5/b;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p5, "Requested dimensions are too small: "

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const/16 p3, 0x78

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    const-string p3, "Can only encode QR_CODE, but got "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p1

    .line 113
    .line 114
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string p2, "Found empty contents"

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1
.end method
