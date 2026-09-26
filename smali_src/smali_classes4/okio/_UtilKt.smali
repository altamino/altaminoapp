.class public final Lokio/_UtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-Util.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Util.kt\nokio/_UtilKt\n*L\n1#1,185:1\n66#1:186\n72#1:187\n*S KotlinDebug\n*F\n+ 1 -Util.kt\nokio/_UtilKt\n*L\n104#1:186\n105#1:187\n*E\n"
.end annotation


# static fields
.field private static final DEFAULT__ByteString_size:I

.field private static final DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lokio/Buffer$UnsafeCursor;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lokio/_UtilKt;->DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;

    .line 8
    .line 9
    .line 10
    const v0, -0x499602d2

    .line 11
    .line 12
    sput v0, Lokio/_UtilKt;->DEFAULT__ByteString_size:I

    .line 13
    return-void
.end method

.method public static final and(BI)I
    .locals 0

    .line 1
    and-int/2addr p0, p1

    return p0
.end method

.method public static final and(BJ)J
    .locals 2

    .line 2
    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final and(IJ)J
    .locals 2

    .line 3
    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final arrayRangeEquals([BI[BII)Z
    .locals 4
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "a"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "b"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    .line 14
    :goto_0
    if-ge v1, p4, :cond_1

    .line 15
    .line 16
    add-int v2, v1, p1

    .line 17
    .line 18
    aget-byte v2, p0, v2

    .line 19
    .line 20
    add-int v3, v1, p3

    .line 21
    .line 22
    aget-byte v3, p2, v3

    .line 23
    .line 24
    if-eq v2, v3, :cond_0

    .line 25
    return v0

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public static final checkOffsetAndCount(JJJ)V
    .locals 4

    .line 1
    .line 2
    or-long v0, p2, p4

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    cmp-long v0, p2, p0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    sub-long v0, p0, p2

    .line 15
    .line 16
    cmp-long v0, v0, p4

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "size="

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p0, " offset="

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p0, " byteCount="

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v0
.end method

.method public static final getDEFAULT__ByteString_size()I
    .locals 1

    sget v0, Lokio/_UtilKt;->DEFAULT__ByteString_size:I

    return v0
.end method

.method public static final getDEFAULT__new_UnsafeCursor()Lokio/Buffer$UnsafeCursor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lokio/_UtilKt;->DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;

    return-object v0
.end method

.method public static synthetic getDEFAULT__new_UnsafeCursor$annotations()V
    .locals 0

    return-void
.end method

.method public static final leftRotate(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static final minOf(IJ)J
    .locals 2

    int-to-long v0, p0

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final minOf(JI)J
    .locals 2

    int-to-long v0, p2

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final resolveDefaultParameter(Lokio/ByteString;I)I
    .locals 1
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lokio/_UtilKt;->DEFAULT__ByteString_size:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final resolveDefaultParameter([BI)I
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lokio/_UtilKt;->DEFAULT__ByteString_size:I

    if-ne p1, v0, :cond_0

    .line 3
    array-length p0, p0

    return p0

    :cond_0
    return p1
.end method

.method public static final resolveDefaultParameter(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .param p0    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unsafeCursor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/_UtilKt;->DEFAULT__new_UnsafeCursor:Lokio/Buffer$UnsafeCursor;

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p0}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static final reverseBytes(I)I
    .locals 2

    .line 1
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static final reverseBytes(J)J
    .locals 8

    .line 2
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, p0

    const/16 v5, 0x28

    ushr-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide v3, 0xff0000000000L

    and-long/2addr v3, p0

    const/16 v6, 0x18

    ushr-long/2addr v3, v6

    or-long/2addr v0, v3

    const-wide v3, 0xff00000000L

    and-long/2addr v3, p0

    const/16 v7, 0x8

    ushr-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide v3, 0xff000000L

    and-long/2addr v3, p0

    shl-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff0000

    and-long/2addr v3, p0

    shl-long/2addr v3, v6

    or-long/2addr v0, v3

    const-wide/32 v3, 0xff00

    and-long/2addr v3, p0

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    const-wide/16 v3, 0xff

    and-long/2addr p0, v3

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final reverseBytes(S)S
    .locals 1

    .line 3
    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static final rightRotate(JI)J
    .locals 2

    ushr-long v0, p0, p2

    rsub-int/lit8 p2, p2, 0x40

    shl-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final shl(BI)I
    .locals 0

    shl-int/2addr p0, p1

    return p0
.end method

.method public static final shr(BI)I
    .locals 0

    shr-int/2addr p0, p1

    return p0
.end method

.method public static final toHexString(B)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 2
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v1

    and-int/lit8 p0, p0, 0xf

    .line 3
    aget-char p0, v1, p0

    const/4 v1, 0x1

    aput-char p0, v0, v1

    .line 4
    invoke-static {v0}, Lkotlin/text/k;->q([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toHexString(I)Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [C

    .line 5
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v3, p0, 0x1c

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 6
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x18

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x1

    aput-char v2, v1, v4

    .line 7
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x14

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x2

    aput-char v2, v1, v4

    .line 8
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x10

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x3

    aput-char v2, v1, v4

    .line 9
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x4

    aput-char v2, v1, v4

    .line 10
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x5

    aput-char v2, v1, v4

    .line 11
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    const/4 v4, 0x6

    aput-char v2, v1, v4

    .line 12
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v2, p0

    const/4 v2, 0x7

    aput-char p0, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 13
    aget-char p0, v1, v3

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v1, v3, v0}, Lkotlin/text/k;->r([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toHexString(J)Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 15
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v3, 0x3c

    shr-long v3, p0, v3

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v3, v3

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 16
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x38

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    aget-char v2, v2, v4

    const/4 v4, 0x1

    aput-char v2, v1, v4

    .line 17
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x34

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    aget-char v2, v2, v4

    const/4 v4, 0x2

    aput-char v2, v1, v4

    .line 18
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v4, 0x30

    shr-long v7, p0, v4

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x3

    aput-char v2, v1, v7

    .line 19
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v7, 0x2c

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/4 v7, 0x4

    aput-char v2, v1, v7

    .line 20
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x28

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/4 v8, 0x5

    aput-char v2, v1, v8

    .line 21
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x24

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/4 v8, 0x6

    aput-char v2, v1, v8

    .line 22
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x20

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/4 v8, 0x7

    aput-char v2, v1, v8

    .line 23
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v8, 0x1c

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/16 v8, 0x8

    aput-char v2, v1, v8

    .line 24
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v9, 0x18

    shr-long v9, p0, v9

    and-long/2addr v9, v5

    long-to-int v9, v9

    aget-char v2, v2, v9

    const/16 v9, 0x9

    aput-char v2, v1, v9

    .line 25
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v9, 0x14

    shr-long v9, p0, v9

    and-long/2addr v9, v5

    long-to-int v9, v9

    aget-char v2, v2, v9

    const/16 v9, 0xa

    aput-char v2, v1, v9

    .line 26
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v9, p0, v0

    and-long/2addr v9, v5

    long-to-int v9, v9

    aget-char v2, v2, v9

    const/16 v9, 0xb

    aput-char v2, v1, v9

    .line 27
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    const/16 v9, 0xc

    shr-long v10, p0, v9

    and-long/2addr v10, v5

    long-to-int v10, v10

    aget-char v2, v2, v10

    aput-char v2, v1, v9

    .line 28
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v8, p0, v8

    and-long/2addr v8, v5

    long-to-int v8, v8

    aget-char v2, v2, v8

    const/16 v8, 0xd

    aput-char v2, v1, v8

    .line 29
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    shr-long v7, p0, v7

    and-long/2addr v7, v5

    long-to-int v7, v7

    aget-char v2, v2, v7

    const/16 v7, 0xe

    aput-char v2, v1, v7

    .line 30
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v2

    and-long/2addr p0, v5

    long-to-int p0, p0

    aget-char p0, v2, p0

    const/16 p1, 0xf

    aput-char p0, v1, p1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 31
    aget-char p0, v1, v3

    if-ne p0, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v1, v3, v0}, Lkotlin/text/k;->r([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final xor(BB)B
    .locals 0

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method
