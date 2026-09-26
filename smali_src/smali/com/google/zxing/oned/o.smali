.class public abstract Lcom/google/zxing/oned/o;
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

.method protected static b([ZI[IZ)I
    .locals 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget v4, p2, v2

    .line 9
    move v5, v1

    .line 10
    .line 11
    :goto_1
    if-ge v5, v4, :cond_0

    .line 12
    .line 13
    add-int/lit8 v6, p1, 0x1

    .line 14
    .line 15
    aput-boolean p3, p0, p1

    .line 16
    .line 17
    add-int/lit8 v5, v5, 0x1

    .line 18
    move p1, v6

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/2addr v3, v4

    .line 21
    .line 22
    xor-int/lit8 p3, p3, 0x1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v3
.end method

.method private static e([ZIII)Lg5/b;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/2addr p3, v0

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result p2

    .line 12
    .line 13
    div-int p3, p1, p3

    .line 14
    .line 15
    mul-int v1, v0, p3

    .line 16
    .line 17
    sub-int v1, p1, v1

    .line 18
    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    new-instance v2, Lg5/b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p1, p2}, Lg5/b;-><init>(II)V

    .line 25
    const/4 p1, 0x0

    .line 26
    move v3, p1

    .line 27
    .line 28
    :goto_0
    if-ge v3, v0, :cond_1

    .line 29
    .line 30
    aget-boolean v4, p0, v3

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1, p1, p3, p2}, Lg5/b;->k(IIII)V

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 38
    add-int/2addr v1, p3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lg5/b;
    .locals 2
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
    move-result p2

    .line 5
    .line 6
    if-nez p2, :cond_2

    .line 7
    .line 8
    if-ltz p3, :cond_1

    .line 9
    .line 10
    if-ltz p4, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/zxing/oned/o;->d()I

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/zxing/c;->MARGIN:Lcom/google/zxing/c;

    .line 19
    .line 20
    .line 21
    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/o;->c(Ljava/lang/String;)[Z

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p3, p4, p2}, Lcom/google/zxing/oned/o;->e([ZIII)Lg5/b;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p5, "Negative size is not allowed. Input: "

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const/16 p3, 0x78

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p2, "Found empty contents"

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p1
.end method

.method public abstract c(Ljava/lang/String;)[Z
.end method

.method public d()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    return v0
.end method
