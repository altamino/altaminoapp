.class final Lcom/google/zxing/pdf417/encoder/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x1e

    .line 3
    .line 4
    new-array v1, v0, [B

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    sput-object v1, Lcom/google/zxing/pdf417/encoder/g;->TEXT_MIXED_RAW:[B

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    sput-object v0, Lcom/google/zxing/pdf417/encoder/g;->TEXT_PUNCTUATION_RAW:[B

    .line 17
    .line 18
    const/16 v0, 0x80

    .line 19
    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    sput-object v1, Lcom/google/zxing/pdf417/encoder/g;->MIXED:[B

    .line 23
    .line 24
    new-array v0, v0, [B

    .line 25
    .line 26
    sput-object v0, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 27
    .line 28
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    sput-object v0, Lcom/google/zxing/pdf417/encoder/g;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 31
    const/4 v0, -0x1

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 35
    const/4 v1, 0x0

    .line 36
    move v2, v1

    .line 37
    .line 38
    :goto_0
    sget-object v3, Lcom/google/zxing/pdf417/encoder/g;->TEXT_MIXED_RAW:[B

    .line 39
    array-length v4, v3

    .line 40
    .line 41
    if-ge v2, v4, :cond_1

    .line 42
    .line 43
    aget-byte v3, v3, v2

    .line 44
    .line 45
    if-lez v3, :cond_0

    .line 46
    .line 47
    sget-object v4, Lcom/google/zxing/pdf417/encoder/g;->MIXED:[B

    .line 48
    int-to-byte v5, v2

    .line 49
    .line 50
    aput-byte v5, v4, v3

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 59
    .line 60
    :goto_1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/g;->TEXT_PUNCTUATION_RAW:[B

    .line 61
    array-length v2, v0

    .line 62
    .line 63
    if-ge v1, v2, :cond_3

    .line 64
    .line 65
    aget-byte v0, v0, v1

    .line 66
    .line 67
    if-lez v0, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 70
    int-to-byte v3, v1

    .line 71
    .line 72
    aput-byte v3, v2, v0

    .line 73
    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-void

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 96
    nop

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private static a(Ljava/lang/String;ILjava/nio/charset/Charset;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    move v1, p1

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_1
    const/16 v4, 0xd

    .line 19
    .line 20
    if-ge v3, v4, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/g;->k(C)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    add-int v2, v1, v3

    .line 31
    .line 32
    if-ge v2, v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 36
    move-result v2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    if-lt v3, v4, :cond_1

    .line 40
    sub-int/2addr v1, p1

    .line 41
    return v1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    new-instance p0, Lcom/google/zxing/h;

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p2, "Non-encodable character detected: "

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p2, " (Unicode: "

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const/16 p2, 0x29

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0

    .line 88
    :cond_3
    sub-int/2addr v1, p1

    .line 89
    return v1
.end method

.method private static b(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/g;->k(C)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    if-ge p1, v0, :cond_1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    if-ge p1, v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method private static c(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    move v1, p1

    .line 6
    .line 7
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    :cond_1
    :goto_1
    const/16 v4, 0xd

    .line 15
    .line 16
    if-ge v3, v4, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/g;->k(C)Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    if-ge v1, v0, :cond_2

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    if-ge v1, v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    move-result v2

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    if-lt v3, v4, :cond_3

    .line 38
    sub-int/2addr v1, p1

    .line 39
    sub-int/2addr v1, v3

    .line 40
    return v1

    .line 41
    .line 42
    :cond_3
    if-gtz v3, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/g;->n(C)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sub-int/2addr v1, p1

    .line 57
    return v1
.end method

.method private static d([BIIILjava/lang/StringBuilder;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/16 p3, 0x391

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    rem-int/lit8 p3, p2, 0x6

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    const/16 p3, 0x39c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    const/16 p3, 0x385

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    :goto_0
    const/4 p3, 0x6

    .line 28
    .line 29
    if-lt p2, p3, :cond_5

    .line 30
    const/4 v0, 0x5

    .line 31
    .line 32
    new-array v1, v0, [C

    .line 33
    move v2, p1

    .line 34
    .line 35
    :goto_1
    add-int v3, p1, p2

    .line 36
    sub-int/2addr v3, v2

    .line 37
    .line 38
    if-lt v3, p3, :cond_6

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    move v6, v3

    .line 43
    .line 44
    :goto_2
    if-ge v6, p3, :cond_2

    .line 45
    .line 46
    const/16 v7, 0x8

    .line 47
    shl-long/2addr v4, v7

    .line 48
    .line 49
    add-int v7, v2, v6

    .line 50
    .line 51
    aget-byte v7, p0, v7

    .line 52
    .line 53
    and-int/lit16 v7, v7, 0xff

    .line 54
    int-to-long v7, v7

    .line 55
    add-long/2addr v4, v7

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_2
    :goto_3
    if-ge v3, v0, :cond_3

    .line 61
    .line 62
    const-wide/16 v6, 0x384

    .line 63
    .line 64
    rem-long v8, v4, v6

    .line 65
    long-to-int v8, v8

    .line 66
    int-to-char v8, v8

    .line 67
    .line 68
    aput-char v8, v1, v3

    .line 69
    div-long/2addr v4, v6

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/4 v3, 0x4

    .line 74
    .line 75
    :goto_4
    if-ltz v3, :cond_4

    .line 76
    .line 77
    aget-char v4, v1, v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    add-int/lit8 v3, v3, -0x1

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move v2, p1

    .line 88
    .line 89
    :cond_6
    :goto_5
    add-int p3, p1, p2

    .line 90
    .line 91
    if-ge v2, p3, :cond_7

    .line 92
    .line 93
    aget-byte p3, p0, v2

    .line 94
    .line 95
    and-int/lit16 p3, p3, 0xff

    .line 96
    int-to-char p3, p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    return-void
.end method

.method static e(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/c;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    sget-object p2, Lcom/google/zxing/pdf417/encoder/g;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sget-object v1, Lcom/google/zxing/pdf417/encoder/g;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lg5/c;->a(Ljava/lang/String;)Lg5/c;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lg5/c;->b()I

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/google/zxing/pdf417/encoder/g;->h(ILjava/lang/StringBuilder;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result v1

    .line 44
    .line 45
    sget-object v2, Lcom/google/zxing/pdf417/encoder/g$a;->$SwitchMap$com$google$zxing$pdf417$encoder$Compaction:[I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result p1

    .line 50
    .line 51
    aget p1, v2, p1

    .line 52
    const/4 v2, 0x1

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    if-eq p1, v2, :cond_a

    .line 56
    const/4 v4, 0x2

    .line 57
    .line 58
    if-eq p1, v4, :cond_9

    .line 59
    const/4 v5, 0x3

    .line 60
    .line 61
    const/16 v6, 0x386

    .line 62
    .line 63
    if-eq p1, v5, :cond_8

    .line 64
    move p1, v3

    .line 65
    move v5, p1

    .line 66
    move v7, v5

    .line 67
    .line 68
    :goto_1
    if-ge p1, v1, :cond_b

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/encoder/g;->b(Ljava/lang/CharSequence;I)I

    .line 72
    move-result v8

    .line 73
    .line 74
    const/16 v9, 0xd

    .line 75
    .line 76
    if-lt v8, v9, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {p0, p1, v8, v0}, Lcom/google/zxing/pdf417/encoder/g;->f(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 83
    add-int/2addr p1, v8

    .line 84
    move v5, v3

    .line 85
    move v7, v4

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-static {p0, p1}, Lcom/google/zxing/pdf417/encoder/g;->c(Ljava/lang/CharSequence;I)I

    .line 90
    move-result v9

    .line 91
    const/4 v10, 0x5

    .line 92
    .line 93
    if-ge v9, v10, :cond_6

    .line 94
    .line 95
    if-ne v8, v1, :cond_3

    .line 96
    goto :goto_3

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/google/zxing/pdf417/encoder/g;->a(Ljava/lang/String;ILjava/nio/charset/Charset;)I

    .line 100
    move-result v8

    .line 101
    .line 102
    if-nez v8, :cond_4

    .line 103
    move v8, v2

    .line 104
    :cond_4
    add-int/2addr v8, p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 112
    move-result-object p1

    .line 113
    array-length v9, p1

    .line 114
    .line 115
    if-ne v9, v2, :cond_5

    .line 116
    .line 117
    if-nez v7, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v3, v2, v3, v0}, Lcom/google/zxing/pdf417/encoder/g;->d([BIIILjava/lang/StringBuilder;)V

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    array-length v5, p1

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v3, v5, v7, v0}, Lcom/google/zxing/pdf417/encoder/g;->d([BIIILjava/lang/StringBuilder;)V

    .line 126
    move v7, v2

    .line 127
    move v5, v3

    .line 128
    :goto_2
    move p1, v8

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 132
    .line 133
    const/16 v5, 0x384

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    move v5, v3

    .line 138
    move v7, v5

    .line 139
    .line 140
    .line 141
    :cond_7
    invoke-static {p0, p1, v9, v0, v5}, Lcom/google/zxing/pdf417/encoder/g;->g(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 142
    move-result v5

    .line 143
    add-int/2addr p1, v9

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-static {p0, v3, v1, v0}, Lcom/google/zxing/pdf417/encoder/g;->f(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 151
    goto :goto_4

    .line 152
    .line 153
    .line 154
    :cond_9
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 155
    move-result-object p0

    .line 156
    array-length p1, p0

    .line 157
    .line 158
    .line 159
    invoke-static {p0, v3, p1, v2, v0}, Lcom/google/zxing/pdf417/encoder/g;->d([BIIILjava/lang/StringBuilder;)V

    .line 160
    goto :goto_4

    .line 161
    .line 162
    .line 163
    :cond_a
    invoke-static {p0, v3, v1, v0, v3}, Lcom/google/zxing/pdf417/encoder/g;->g(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    .line 164
    .line 165
    .line 166
    :cond_b
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    return-object p0
.end method

.method private static f(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    div-int/lit8 v1, p2, 0x3

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    const-wide/16 v1, 0x384

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    .line 25
    :goto_0
    if-ge v4, p2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 29
    .line 30
    const/16 v5, 0x2c

    .line 31
    .line 32
    sub-int v6, p2, v4

    .line 33
    .line 34
    .line 35
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result v5

    .line 37
    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v7, "1"

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    add-int v7, p1, v4

    .line 46
    .line 47
    add-int v8, v7, v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    new-instance v7, Ljava/math/BigInteger;

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    .line 71
    move-result v6

    .line 72
    int-to-char v6, v6

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v6

    .line 84
    .line 85
    if-eqz v6, :cond_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 89
    move-result v6

    .line 90
    .line 91
    add-int/lit8 v6, v6, -0x1

    .line 92
    .line 93
    :goto_1
    if-ltz v6, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 97
    move-result v7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    add-int/lit8 v6, v6, -0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    add-int/2addr v4, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method private static g(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    move/from16 v5, p4

    .line 15
    move v6, v4

    .line 16
    .line 17
    :cond_0
    :goto_0
    add-int v7, p1, v6

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    move-result v8

    .line 22
    .line 23
    const/16 v9, 0x1a

    .line 24
    .line 25
    const/16 v10, 0x20

    .line 26
    .line 27
    const/16 v11, 0x1b

    .line 28
    .line 29
    const/16 v12, 0x1c

    .line 30
    .line 31
    const/16 v13, 0x1d

    .line 32
    const/4 v14, 0x2

    .line 33
    const/4 v15, 0x1

    .line 34
    .line 35
    if-eqz v5, :cond_c

    .line 36
    .line 37
    if-eq v5, v15, :cond_7

    .line 38
    .line 39
    if-eq v5, v14, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->m(C)Z

    .line 43
    move-result v7

    .line 44
    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    sget-object v7, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 48
    .line 49
    aget-byte v7, v7, v8

    .line 50
    int-to-char v7, v7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    :goto_1
    move v5, v4

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->l(C)Z

    .line 64
    move-result v9

    .line 65
    .line 66
    if-eqz v9, :cond_3

    .line 67
    .line 68
    sget-object v7, Lcom/google/zxing/pdf417/encoder/g;->MIXED:[B

    .line 69
    .line 70
    aget-byte v7, v7, v8

    .line 71
    int-to-char v7, v7

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->j(C)Z

    .line 80
    move-result v9

    .line 81
    .line 82
    if-eqz v9, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->i(C)Z

    .line 90
    move-result v9

    .line 91
    .line 92
    if-eqz v9, :cond_5

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_2
    move v5, v15

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 100
    .line 101
    if-ge v7, v1, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 105
    move-result v7

    .line 106
    .line 107
    .line 108
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/g;->m(C)Z

    .line 109
    move-result v7

    .line 110
    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    const/16 v5, 0x19

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    const/4 v5, 0x3

    .line 118
    goto :goto_0

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    sget-object v7, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 124
    .line 125
    aget-byte v7, v7, v8

    .line 126
    int-to-char v7, v7

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->i(C)Z

    .line 135
    move-result v7

    .line 136
    .line 137
    if-eqz v7, :cond_9

    .line 138
    .line 139
    if-ne v8, v10, :cond_8

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    goto :goto_4

    .line 144
    .line 145
    :cond_8
    add-int/lit8 v8, v8, -0x61

    .line 146
    int-to-char v7, v8

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    goto :goto_4

    .line 151
    .line 152
    .line 153
    :cond_9
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->j(C)Z

    .line 154
    move-result v7

    .line 155
    .line 156
    if-eqz v7, :cond_a

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    add-int/lit8 v8, v8, -0x41

    .line 162
    int-to-char v7, v8

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    goto :goto_4

    .line 167
    .line 168
    .line 169
    :cond_a
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->l(C)Z

    .line 170
    move-result v7

    .line 171
    .line 172
    if-eqz v7, :cond_b

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    :goto_3
    move v5, v14

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    .line 181
    :cond_b
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    sget-object v7, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 184
    .line 185
    aget-byte v7, v7, v8

    .line 186
    int-to-char v7, v7

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    goto :goto_4

    .line 191
    .line 192
    .line 193
    :cond_c
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->j(C)Z

    .line 194
    move-result v7

    .line 195
    .line 196
    if-eqz v7, :cond_e

    .line 197
    .line 198
    if-ne v8, v10, :cond_d

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    goto :goto_4

    .line 203
    .line 204
    :cond_d
    add-int/lit8 v8, v8, -0x41

    .line 205
    int-to-char v7, v8

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    goto :goto_4

    .line 210
    .line 211
    .line 212
    :cond_e
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->i(C)Z

    .line 213
    move-result v7

    .line 214
    .line 215
    if-eqz v7, :cond_f

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    goto :goto_2

    .line 220
    .line 221
    .line 222
    :cond_f
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/g;->l(C)Z

    .line 223
    move-result v7

    .line 224
    .line 225
    if-eqz v7, :cond_10

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    goto :goto_3

    .line 230
    .line 231
    .line 232
    :cond_10
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    sget-object v7, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 235
    .line 236
    aget-byte v7, v7, v8

    .line 237
    int-to-char v7, v7

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 243
    .line 244
    if-lt v6, v1, :cond_0

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 248
    move-result v0

    .line 249
    move v1, v4

    .line 250
    .line 251
    :goto_5
    if-ge v4, v0, :cond_12

    .line 252
    .line 253
    rem-int/lit8 v6, v4, 0x2

    .line 254
    .line 255
    if-eqz v6, :cond_11

    .line 256
    .line 257
    mul-int/lit8 v1, v1, 0x1e

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 261
    move-result v6

    .line 262
    add-int/2addr v1, v6

    .line 263
    int-to-char v1, v1

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    goto :goto_6

    .line 268
    .line 269
    .line 270
    :cond_11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 271
    move-result v1

    .line 272
    .line 273
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 274
    goto :goto_5

    .line 275
    :cond_12
    rem-int/2addr v0, v14

    .line 276
    .line 277
    if-eqz v0, :cond_13

    .line 278
    .line 279
    mul-int/lit8 v1, v1, 0x1e

    .line 280
    add-int/2addr v1, v13

    .line 281
    int-to-char v0, v1

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_13
    return v5
.end method

.method private static h(ILjava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x384

    .line 3
    .line 4
    if-ltz p0, :cond_0

    .line 5
    .line 6
    if-ge p0, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x39f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    int-to-char p0, p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    const v1, 0xc5f94

    .line 20
    .line 21
    if-ge p0, v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x39e

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    div-int/lit16 v1, p0, 0x384

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    int-to-char v1, v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    rem-int/2addr p0, v0

    .line 36
    int-to-char p0, p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    const v0, 0xc6318

    .line 44
    .line 45
    if-ge p0, v0, :cond_2

    .line 46
    .line 47
    const/16 v0, 0x39d

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    sub-int/2addr v1, p0

    .line 52
    int-to-char p0, v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    return-void

    .line 57
    .line 58
    :cond_2
    new-instance p1, Lcom/google/zxing/h;

    .line 59
    .line 60
    const-string v0, "ECI number not in valid range from 0..811799, but was "

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
.end method

.method private static i(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static j(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static k(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static l(C)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/pdf417/encoder/g;->MIXED:[B

    .line 3
    .line 4
    aget-byte p0, v0, p0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private static m(C)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/pdf417/encoder/g;->PUNCTUATION:[B

    .line 3
    .line 4
    aget-byte p0, v0, p0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private static n(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
