.class public final Li5/a;
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

.method private static b(Lcom/google/zxing/qrcode/encoder/b;II)Lg5/b;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->e()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/b;->d()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v3

    .line 17
    .line 18
    div-int v4, v2, v0

    .line 19
    .line 20
    div-int v5, v3, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v4

    .line 25
    .line 26
    mul-int v5, v0, v4

    .line 27
    sub-int/2addr v2, v5

    .line 28
    .line 29
    div-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    mul-int v5, v1, v4

    .line 32
    sub-int/2addr v3, v5

    .line 33
    .line 34
    div-int/lit8 v3, v3, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    .line 37
    if-lt p2, v1, :cond_1

    .line 38
    .line 39
    if-ge p1, v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    new-instance v6, Lg5/b;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6, p1, p2}, Lg5/b;-><init>(II)V

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    :goto_0
    new-instance v6, Lg5/b;

    .line 49
    .line 50
    .line 51
    invoke-direct {v6, v0, v1}, Lg5/b;-><init>(II)V

    .line 52
    move v2, v5

    .line 53
    move v3, v2

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v6}, Lg5/b;->c()V

    .line 57
    move p1, v5

    .line 58
    .line 59
    :goto_2
    if-ge p1, v1, :cond_4

    .line 60
    move v7, v2

    .line 61
    move p2, v5

    .line 62
    .line 63
    :goto_3
    if-ge p2, v0, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/qrcode/encoder/b;->b(II)B

    .line 67
    move-result v8

    .line 68
    const/4 v9, 0x1

    .line 69
    .line 70
    if-ne v8, v9, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v7, v3, v4, v4}, Lg5/b;->k(IIII)V

    .line 74
    .line 75
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 76
    add-int/2addr v7, v4

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 80
    add-int/2addr v3, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    return-object v6
.end method

.method private static c(Lcom/google/zxing/datamatrix/encoder/e;Lcom/google/zxing/datamatrix/encoder/k;II)Lg5/b;
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->h()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->g()I

    .line 8
    move-result v1

    .line 9
    .line 10
    new-instance v2, Lcom/google/zxing/qrcode/encoder/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->j()I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->i()I

    .line 18
    move-result v4

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/b;-><init>(II)V

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    move v5, v4

    .line 25
    .line 26
    :goto_0
    if-ge v4, v1, :cond_9

    .line 27
    .line 28
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/k;->matrixHeight:I

    .line 29
    .line 30
    rem-int v6, v4, v6

    .line 31
    const/4 v7, 0x1

    .line 32
    .line 33
    if-nez v6, :cond_2

    .line 34
    move v6, v3

    .line 35
    move v8, v6

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->j()I

    .line 39
    move-result v9

    .line 40
    .line 41
    if-ge v6, v9, :cond_1

    .line 42
    .line 43
    rem-int/lit8 v9, v6, 0x2

    .line 44
    .line 45
    if-nez v9, :cond_0

    .line 46
    move v9, v7

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    move v9, v3

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 52
    add-int/2addr v8, v7

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 58
    :cond_2
    move v6, v3

    .line 59
    move v8, v6

    .line 60
    .line 61
    :goto_3
    if-ge v6, v0, :cond_6

    .line 62
    .line 63
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/k;->matrixWidth:I

    .line 64
    .line 65
    rem-int v9, v6, v9

    .line 66
    .line 67
    if-nez v9, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 71
    .line 72
    add-int/lit8 v8, v8, 0x1

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0, v6, v4}, Lcom/google/zxing/datamatrix/encoder/e;->e(II)Z

    .line 76
    move-result v9

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 80
    .line 81
    add-int/lit8 v9, v8, 0x1

    .line 82
    .line 83
    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/k;->matrixWidth:I

    .line 84
    .line 85
    rem-int v11, v6, v10

    .line 86
    sub-int/2addr v10, v7

    .line 87
    .line 88
    if-ne v11, v10, :cond_5

    .line 89
    .line 90
    rem-int/lit8 v10, v4, 0x2

    .line 91
    .line 92
    if-nez v10, :cond_4

    .line 93
    move v10, v7

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move v10, v3

    .line 96
    .line 97
    .line 98
    :goto_4
    invoke-virtual {v2, v9, v5, v10}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 99
    .line 100
    add-int/lit8 v8, v8, 0x2

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    move v8, v9

    .line 103
    .line 104
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_3

    .line 106
    .line 107
    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 108
    .line 109
    iget v8, p1, Lcom/google/zxing/datamatrix/encoder/k;->matrixHeight:I

    .line 110
    .line 111
    rem-int v9, v4, v8

    .line 112
    sub-int/2addr v8, v7

    .line 113
    .line 114
    if-ne v9, v8, :cond_8

    .line 115
    move v8, v3

    .line 116
    move v9, v8

    .line 117
    .line 118
    .line 119
    :goto_6
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/k;->j()I

    .line 120
    move-result v10

    .line 121
    .line 122
    if-ge v8, v10, :cond_7

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v9, v6, v7}, Lcom/google/zxing/qrcode/encoder/b;->g(IIZ)V

    .line 126
    add-int/2addr v9, v7

    .line 127
    .line 128
    add-int/lit8 v8, v8, 0x1

    .line 129
    goto :goto_6

    .line 130
    .line 131
    :cond_7
    add-int/lit8 v5, v5, 0x2

    .line 132
    goto :goto_7

    .line 133
    :cond_8
    move v5, v6

    .line 134
    .line 135
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 136
    goto :goto_0

    .line 137
    .line 138
    .line 139
    :cond_9
    invoke-static {v2, p2, p3}, Li5/a;->b(Lcom/google/zxing/qrcode/encoder/b;II)Lg5/b;

    .line 140
    move-result-object p0

    .line 141
    return-object p0
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    sget-object v0, Lcom/google/zxing/a;->DATA_MATRIX:Lcom/google/zxing/a;

    .line 9
    .line 10
    if-ne p2, v0, :cond_5

    .line 11
    .line 12
    if-ltz p3, :cond_4

    .line 13
    .line 14
    if-ltz p4, :cond_4

    .line 15
    .line 16
    sget-object p2, Lcom/google/zxing/datamatrix/encoder/l;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/l;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    if-eqz p5, :cond_3

    .line 20
    .line 21
    sget-object v1, Lcom/google/zxing/c;->DATA_MATRIX_SHAPE:Lcom/google/zxing/c;

    .line 22
    .line 23
    .line 24
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/google/zxing/datamatrix/encoder/l;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    move-object p2, v1

    .line 31
    .line 32
    :cond_0
    sget-object v1, Lcom/google/zxing/c;->MIN_SIZE:Lcom/google/zxing/c;

    .line 33
    .line 34
    .line 35
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/google/zxing/b;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v1, v0

    .line 43
    .line 44
    :goto_0
    sget-object v2, Lcom/google/zxing/c;->MAX_SIZE:Lcom/google/zxing/c;

    .line 45
    .line 46
    .line 47
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p5

    .line 49
    .line 50
    check-cast p5, Lcom/google/zxing/b;

    .line 51
    .line 52
    if-eqz p5, :cond_2

    .line 53
    :goto_1
    move-object v0, v1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object p5, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object p5, v0

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-static {p1, p2, v0, p5}, Lcom/google/zxing/datamatrix/encoder/j;->b(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/l;Lcom/google/zxing/b;Lcom/google/zxing/b;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x1

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p2, v0, p5, v2}, Lcom/google/zxing/datamatrix/encoder/k;->l(ILcom/google/zxing/datamatrix/encoder/l;Lcom/google/zxing/b;Lcom/google/zxing/b;Z)Lcom/google/zxing/datamatrix/encoder/k;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/i;->c(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/k;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    new-instance p5, Lcom/google/zxing/datamatrix/encoder/e;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/k;->h()I

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/k;->g()I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-direct {p5, p1, v0, v1}, Lcom/google/zxing/datamatrix/encoder/e;-><init>(Ljava/lang/CharSequence;II)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p5}, Lcom/google/zxing/datamatrix/encoder/e;->h()V

    .line 91
    .line 92
    .line 93
    invoke-static {p5, p2, p3, p4}, Li5/a;->c(Lcom/google/zxing/datamatrix/encoder/e;Lcom/google/zxing/datamatrix/encoder/k;II)Lg5/b;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string p5, "Requested dimensions can\'t be negative: "

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const/16 p3, 0x78

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1

    .line 124
    .line 125
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    .line 128
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    const-string p3, "Can only encode DATA_MATRIX, but got "

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p1

    .line 140
    .line 141
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    const-string p2, "Found empty contents"

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p1
.end method
