.class public Lcom/narvii/video/pro/YUVImageHelper;
.super Ljava/lang/Object;
.source "YUVImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rotateYUV420Degree180([BII)[B
    .locals 4

    mul-int p1, p1, p2

    mul-int/lit8 p2, p1, 0x3

    .line 33
    div-int/lit8 p2, p2, 0x2

    new-array v0, p2, [B

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 37
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-lt p2, p1, :cond_1

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 43
    aget-byte v3, p0, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 44
    aget-byte v3, p0, p2

    aput-byte v3, v0, v1

    add-int/lit8 p2, p2, -0x2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static rotateYUV420Degree270([BII)[B
    .locals 10

    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 51
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    shr-int/lit8 v3, p2, 0x1

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, p1, :cond_3

    move v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v5, p2, :cond_2

    add-int v8, v7, v4

    .line 66
    aget-byte v8, p0, v8

    aput-byte v8, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, p1, :cond_5

    move v7, v0

    move v6, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v3, :cond_4

    add-int v8, v7, v4

    .line 74
    aget-byte v9, p0, v8

    aput-byte v9, v1, v6

    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 75
    aget-byte v8, p0, v8

    aput-byte v8, v1, v9

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x2

    move v5, v6

    goto :goto_4

    .line 80
    :cond_5
    invoke-static {v1, p1, p2}, Lcom/narvii/video/pro/YUVImageHelper;->rotateYUV420Degree180([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static rotateYUV420Degree90([BII)[B
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v1, v0, 0x3

    .line 9
    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    add-int/lit8 v6, p2, -0x1

    :goto_1
    if-ltz v6, :cond_0

    mul-int v7, v6, p1

    add-int/2addr v7, v4

    .line 14
    aget-byte v7, p0, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, p1, -0x1

    :goto_2
    if-lez v4, :cond_3

    move v5, v1

    const/4 v1, 0x0

    .line 21
    :goto_3
    div-int/lit8 v6, p2, 0x2

    if-ge v1, v6, :cond_2

    mul-int v6, v1, p1

    add-int/2addr v6, v0

    add-int v7, v6, v4

    .line 22
    aget-byte v7, p0, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v6, v7

    .line 24
    aget-byte v6, p0, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, -0x2

    move v1, v5

    goto :goto_2

    :cond_3
    return-object v2
.end method
