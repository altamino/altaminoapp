.class public Lcom/narvii/video/pro/YUVImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static rotateYUV420Degree180([BII)[B
    .locals 4

    .line 1
    mul-int/2addr p1, p2

    .line 2
    .line 3
    mul-int/lit8 p2, p1, 0x3

    .line 4
    .line 5
    div-int/lit8 p2, p2, 0x2

    .line 6
    .line 7
    new-array v0, p2, [B

    .line 8
    .line 9
    add-int/lit8 v1, p1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    aget-byte v3, p0, v1

    .line 15
    .line 16
    aput-byte v3, v0, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 24
    .line 25
    :goto_1
    if-lt p2, p1, :cond_1

    .line 26
    .line 27
    add-int/lit8 v1, v2, 0x1

    .line 28
    .line 29
    add-int/lit8 v3, p2, -0x1

    .line 30
    .line 31
    aget-byte v3, p0, v3

    .line 32
    .line 33
    aput-byte v3, v0, v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x2

    .line 36
    .line 37
    aget-byte v3, p0, p2

    .line 38
    .line 39
    aput-byte v3, v0, v1

    .line 40
    .line 41
    add-int/lit8 p2, p2, -0x2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-object v0
.end method

.method public static rotateYUV420Degree270([BII)[B
    .locals 10

    .line 1
    .line 2
    mul-int v0, p1, p2

    .line 3
    .line 4
    mul-int/lit8 v1, v0, 0x3

    .line 5
    .line 6
    div-int/lit8 v1, v1, 0x2

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    move v3, v0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    :goto_0
    shr-int/lit8 v3, p2, 0x1

    .line 20
    :goto_1
    move v4, v2

    .line 21
    move v5, v4

    .line 22
    .line 23
    :goto_2
    if-ge v4, p1, :cond_3

    .line 24
    move v6, v2

    .line 25
    move v7, v6

    .line 26
    .line 27
    :goto_3
    if-ge v6, p2, :cond_2

    .line 28
    .line 29
    add-int v8, v7, v4

    .line 30
    .line 31
    aget-byte v8, p0, v8

    .line 32
    .line 33
    aput-byte v8, v1, v5

    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    add-int/2addr v7, p1

    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    goto :goto_3

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    move v4, v2

    .line 44
    .line 45
    :goto_4
    if-ge v4, p1, :cond_5

    .line 46
    move v7, v0

    .line 47
    move v6, v2

    .line 48
    .line 49
    :goto_5
    if-ge v6, v3, :cond_4

    .line 50
    .line 51
    add-int v8, v7, v4

    .line 52
    .line 53
    aget-byte v9, p0, v8

    .line 54
    .line 55
    aput-byte v9, v1, v5

    .line 56
    .line 57
    add-int/lit8 v9, v5, 0x1

    .line 58
    .line 59
    add-int/lit8 v8, v8, 0x1

    .line 60
    .line 61
    aget-byte v8, p0, v8

    .line 62
    .line 63
    aput-byte v8, v1, v9

    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x2

    .line 66
    add-int/2addr v7, p1

    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    goto :goto_5

    .line 70
    .line 71
    :cond_4
    add-int/lit8 v4, v4, 0x2

    .line 72
    goto :goto_4

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-static {v1, p1, p2}, Lcom/narvii/video/pro/YUVImageHelper;->rotateYUV420Degree180([BII)[B

    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static rotateYUV420Degree90([BII)[B
    .locals 9

    .line 1
    .line 2
    mul-int v0, p1, p2

    .line 3
    .line 4
    mul-int/lit8 v1, v0, 0x3

    .line 5
    .line 6
    div-int/lit8 v1, v1, 0x2

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    .line 13
    :goto_0
    if-ge v4, p1, :cond_1

    .line 14
    .line 15
    add-int/lit8 v6, p2, -0x1

    .line 16
    .line 17
    :goto_1
    if-ltz v6, :cond_0

    .line 18
    .line 19
    mul-int v7, v6, p1

    .line 20
    add-int/2addr v7, v4

    .line 21
    .line 22
    aget-byte v7, p0, v7

    .line 23
    .line 24
    aput-byte v7, v2, v5

    .line 25
    .line 26
    add-int/lit8 v5, v5, 0x1

    .line 27
    .line 28
    add-int/lit8 v6, v6, -0x1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    add-int/lit8 v4, p1, -0x1

    .line 37
    .line 38
    :goto_2
    if-lez v4, :cond_3

    .line 39
    move v5, v3

    .line 40
    .line 41
    :goto_3
    div-int/lit8 v6, p2, 0x2

    .line 42
    .line 43
    if-ge v5, v6, :cond_2

    .line 44
    .line 45
    mul-int v6, v5, p1

    .line 46
    add-int/2addr v6, v0

    .line 47
    .line 48
    add-int v7, v6, v4

    .line 49
    .line 50
    aget-byte v7, p0, v7

    .line 51
    .line 52
    aput-byte v7, v2, v1

    .line 53
    .line 54
    add-int/lit8 v7, v1, -0x1

    .line 55
    .line 56
    add-int/lit8 v8, v4, -0x1

    .line 57
    add-int/2addr v6, v8

    .line 58
    .line 59
    aget-byte v6, p0, v6

    .line 60
    .line 61
    aput-byte v6, v2, v7

    .line 62
    .line 63
    add-int/lit8 v1, v1, -0x2

    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_2
    add-int/lit8 v4, v4, -0x2

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    return-object v2
.end method
