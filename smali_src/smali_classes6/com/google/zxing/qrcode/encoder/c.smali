.class public final Lcom/google/zxing/qrcode/encoder/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/c;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(Ljava/lang/String;Lg5/a;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    array-length p2, p0

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v0, p2, :cond_0

    .line 9
    .line 10
    aget-byte v1, p0, v0

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Lg5/a;->d(II)V

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    .line 22
    new-instance p1, Lcom/google/zxing/h;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/google/zxing/h;-><init>(Ljava/lang/Throwable;)V

    .line 26
    throw p1
.end method

.method static b(Ljava/lang/CharSequence;Lg5/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

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
    :goto_0
    if-ge v1, v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/c;->p(I)I

    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    .line 20
    add-int/lit8 v4, v1, 0x1

    .line 21
    .line 22
    if-ge v4, v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/c;->p(I)I

    .line 30
    move-result v4

    .line 31
    .line 32
    if-eq v4, v3, :cond_0

    .line 33
    .line 34
    mul-int/lit8 v2, v2, 0x2d

    .line 35
    add-int/2addr v2, v4

    .line 36
    .line 37
    const/16 v3, 0xb

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2, v3}, Lg5/a;->d(II)V

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/google/zxing/h;-><init>()V

    .line 49
    throw p0

    .line 50
    :cond_1
    const/4 v1, 0x6

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2, v1}, Lg5/a;->d(II)V

    .line 54
    move v1, v4

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    new-instance p0, Lcom/google/zxing/h;

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/google/zxing/h;-><init>()V

    .line 61
    throw p0

    .line 62
    :cond_3
    return-void
.end method

.method static c(Ljava/lang/String;Ll5/b;Lg5/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/qrcode/encoder/c$a;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    const/4 p3, 0x4

    .line 19
    .line 20
    if-ne v0, p3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/c;->e(Ljava/lang/String;Lg5/a;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance p0, Lcom/google/zxing/h;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string p2, "Invalid mode: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/c;->a(Ljava/lang/String;Lg5/a;Ljava/lang/String;)V

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/c;->b(Ljava/lang/CharSequence;Lg5/a;)V

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/c;->h(Ljava/lang/CharSequence;Lg5/a;)V

    .line 52
    return-void
.end method

.method private static d(Lg5/c;Lg5/a;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ll5/b;->ECI:Ll5/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ll5/b;->a()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lg5/a;->d(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lg5/c;->b()I

    .line 14
    move-result p0

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0, v0}, Lg5/a;->d(II)V

    .line 20
    return-void
.end method

.method static e(Ljava/lang/String;Lg5/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "Shift_JIS"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_3

    .line 11
    .line 12
    aget-byte v2, p0, v1

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    add-int/lit8 v3, v1, 0x1

    .line 17
    .line 18
    aget-byte v3, p0, v3

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    shl-int/lit8 v2, v2, 0x8

    .line 23
    or-int/2addr v2, v3

    .line 24
    .line 25
    .line 26
    const v3, 0x8140

    .line 27
    const/4 v4, -0x1

    .line 28
    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    .line 32
    const v5, 0x9ffc

    .line 33
    .line 34
    if-gt v2, v5, :cond_0

    .line 35
    :goto_1
    sub-int/2addr v2, v3

    .line 36
    goto :goto_2

    .line 37
    .line 38
    .line 39
    :cond_0
    const v3, 0xe040

    .line 40
    .line 41
    if-lt v2, v3, :cond_1

    .line 42
    .line 43
    .line 44
    const v3, 0xebbf

    .line 45
    .line 46
    if-gt v2, v3, :cond_1

    .line 47
    .line 48
    .line 49
    const v3, 0xc140

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v2, v4

    .line 52
    .line 53
    :goto_2
    if-eq v2, v4, :cond_2

    .line 54
    .line 55
    shr-int/lit8 v3, v2, 0x8

    .line 56
    .line 57
    mul-int/lit16 v3, v3, 0xc0

    .line 58
    .line 59
    and-int/lit16 v2, v2, 0xff

    .line 60
    add-int/2addr v3, v2

    .line 61
    .line 62
    const/16 v2, 0xd

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3, v2}, Lg5/a;->d(II)V

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x2

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    new-instance p0, Lcom/google/zxing/h;

    .line 71
    .line 72
    const-string p1, "Invalid byte sequence"

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0

    .line 77
    :cond_3
    return-void

    .line 78
    :catch_0
    move-exception p0

    .line 79
    .line 80
    new-instance p1, Lcom/google/zxing/h;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/google/zxing/h;-><init>(Ljava/lang/Throwable;)V

    .line 84
    throw p1
.end method

.method static f(ILl5/c;Ll5/b;Lg5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ll5/b;->b(Ll5/c;)I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    shl-int v0, p2, p1

    .line 8
    .line 9
    if-ge p0, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p0, p1}, Lg5/a;->d(II)V

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance p1, Lcom/google/zxing/h;

    .line 16
    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p0, " is bigger than "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    sub-int/2addr v0, p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 40
    throw p1
.end method

.method static g(Ll5/b;Lg5/a;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ll5/b;->a()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0, v0}, Lg5/a;->d(II)V

    .line 9
    return-void
.end method

.method static h(Ljava/lang/CharSequence;Lg5/a;)V
    .locals 6

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
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    move-result v2

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x30

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x2

    .line 16
    .line 17
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 23
    move-result v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, -0x30

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    move-result v3

    .line 30
    .line 31
    add-int/lit8 v3, v3, -0x30

    .line 32
    .line 33
    mul-int/lit8 v2, v2, 0x64

    .line 34
    .line 35
    const/16 v5, 0xa

    .line 36
    mul-int/2addr v4, v5

    .line 37
    add-int/2addr v2, v4

    .line 38
    add-int/2addr v2, v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2, v5}, Lg5/a;->d(II)V

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x3

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    if-ge v1, v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 52
    move-result v1

    .line 53
    .line 54
    add-int/lit8 v1, v1, -0x30

    .line 55
    .line 56
    mul-int/lit8 v2, v2, 0xa

    .line 57
    add-int/2addr v2, v1

    .line 58
    const/4 v1, 0x7

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2, v1}, Lg5/a;->d(II)V

    .line 62
    move v1, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v3, 0x4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2, v3}, Lg5/a;->d(II)V

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method private static i(Ll5/b;Lg5/a;Lg5/a;Ll5/c;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3}, Ll5/b;->b(Ll5/c;)I

    .line 8
    move-result p0

    .line 9
    add-int/2addr p1, p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lg5/a;->i()I

    .line 13
    move-result p0

    .line 14
    add-int/2addr p1, p0

    .line 15
    return p1
.end method

.method private static j(Lcom/google/zxing/qrcode/encoder/b;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/d;->a(Lcom/google/zxing/qrcode/encoder/b;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/d;->c(Lcom/google/zxing/qrcode/encoder/b;)I

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/d;->d(Lcom/google/zxing/qrcode/encoder/b;)I

    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/d;->e(Lcom/google/zxing/qrcode/encoder/b;)I

    .line 18
    move-result p0

    .line 19
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method private static k(Lg5/a;Ll5/a;Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    :goto_0
    const/16 v3, 0x8

    .line 8
    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/encoder/e;->a(Lg5/a;Ll5/a;Ll5/c;ILcom/google/zxing/qrcode/encoder/b;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/c;->j(Lcom/google/zxing/qrcode/encoder/b;)I

    .line 16
    move-result v3

    .line 17
    .line 18
    if-ge v3, v0, :cond_0

    .line 19
    move v1, v2

    .line 20
    move v0, v3

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v1
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;)Ll5/b;
    .locals 5

    .line 1
    .line 2
    const-string v0, "Shift_JIS"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/c;->s(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget-object p0, Ll5/b;->KANJI:Ll5/b;

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    move v0, p1

    .line 20
    move v1, v0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-ge p1, v2, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v2

    .line 31
    .line 32
    const/16 v3, 0x30

    .line 33
    const/4 v4, 0x1

    .line 34
    .line 35
    if-lt v2, v3, :cond_1

    .line 36
    .line 37
    const/16 v3, 0x39

    .line 38
    .line 39
    if-gt v2, v3, :cond_1

    .line 40
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/c;->p(I)I

    .line 45
    move-result v0

    .line 46
    const/4 v2, -0x1

    .line 47
    .line 48
    if-eq v0, v2, :cond_2

    .line 49
    move v0, v4

    .line 50
    .line 51
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    sget-object p0, Ll5/b;->BYTE:Ll5/b;

    .line 55
    return-object p0

    .line 56
    .line 57
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sget-object p0, Ll5/b;->ALPHANUMERIC:Ll5/b;

    .line 60
    return-object p0

    .line 61
    .line 62
    :cond_4
    if-eqz v1, :cond_5

    .line 63
    .line 64
    sget-object p0, Ll5/b;->NUMERIC:Ll5/b;

    .line 65
    return-object p0

    .line 66
    .line 67
    :cond_5
    sget-object p0, Ll5/b;->BYTE:Ll5/b;

    .line 68
    return-object p0
.end method

.method private static m(ILl5/a;)Ll5/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :goto_0
    const/16 v1, 0x28

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ll5/c;->e(I)Ll5/c;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/c;->v(ILl5/c;Ll5/a;)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_1
    new-instance p0, Lcom/google/zxing/h;

    .line 22
    .line 23
    const-string p1, "Data too big"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static n(Ljava/lang/String;Ll5/a;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll5/a;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget-object v0, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/google/zxing/c;->CHARACTER_SET:Lcom/google/zxing/c;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    const-string v1, "ISO-8859-1"

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/c;->l(Ljava/lang/String;Ljava/lang/String;)Ll5/b;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    new-instance v3, Lg5/a;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3}, Lg5/a;-><init>()V

    .line 38
    .line 39
    sget-object v4, Ll5/b;->BYTE:Ll5/b;

    .line 40
    .line 41
    if-ne v2, v4, :cond_2

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lg5/c;->a(Ljava/lang/String;)Lg5/c;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v3}, Lcom/google/zxing/qrcode/encoder/c;->d(Lg5/c;Lg5/a;)V

    .line 53
    .line 54
    :cond_2
    if-eqz p2, :cond_3

    .line 55
    .line 56
    sget-object v0, Lcom/google/zxing/c;->GS1_FORMAT:Lcom/google/zxing/c;

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    sget-object v0, Ll5/b;->FNC1_FIRST_POSITION:Ll5/b;

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v3}, Lcom/google/zxing/qrcode/encoder/c;->g(Ll5/b;Lg5/a;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/encoder/c;->g(Ll5/b;Lg5/a;)V

    .line 89
    .line 90
    new-instance v0, Lg5/a;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/c;->c(Ljava/lang/String;Ll5/b;Lg5/a;Ljava/lang/String;)V

    .line 97
    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    sget-object v1, Lcom/google/zxing/c;->QR_VERSION:Lcom/google/zxing/c;

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    move-result v5

    .line 105
    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 118
    move-result p2

    .line 119
    .line 120
    .line 121
    invoke-static {p2}, Ll5/c;->e(I)Ll5/c;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v3, v0, p2}, Lcom/google/zxing/qrcode/encoder/c;->i(Ll5/b;Lg5/a;Lg5/a;Ll5/c;)I

    .line 126
    move-result v1

    .line 127
    .line 128
    .line 129
    invoke-static {v1, p2, p1}, Lcom/google/zxing/qrcode/encoder/c;->v(ILl5/c;Ll5/a;)Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-eqz v1, :cond_4

    .line 133
    goto :goto_2

    .line 134
    .line 135
    :cond_4
    new-instance p0, Lcom/google/zxing/h;

    .line 136
    .line 137
    const-string p1, "Data too big for requested version"

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-static {p1, v2, v3, v0}, Lcom/google/zxing/qrcode/encoder/c;->t(Ll5/a;Ll5/b;Lg5/a;Lg5/a;)Ll5/c;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    :goto_2
    new-instance v1, Lg5/a;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1}, Lg5/a;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3}, Lg5/a;->c(Lg5/a;)V

    .line 154
    .line 155
    if-ne v2, v4, :cond_6

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lg5/a;->j()I

    .line 159
    move-result p0

    .line 160
    goto :goto_3

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 164
    move-result p0

    .line 165
    .line 166
    .line 167
    :goto_3
    invoke-static {p0, p2, v2, v1}, Lcom/google/zxing/qrcode/encoder/c;->f(ILl5/c;Ll5/b;Lg5/a;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Lg5/a;->c(Lg5/a;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p1}, Ll5/c;->c(Ll5/a;)Ll5/c$b;

    .line 174
    move-result-object p0

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Ll5/c;->d()I

    .line 178
    move-result v0

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Ll5/c$b;->d()I

    .line 182
    move-result v3

    .line 183
    sub-int/2addr v0, v3

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/c;->u(ILg5/a;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Ll5/c;->d()I

    .line 190
    move-result v3

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ll5/c$b;->c()I

    .line 194
    move-result p0

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v3, v0, p0}, Lcom/google/zxing/qrcode/encoder/c;->r(Lg5/a;III)Lg5/a;

    .line 198
    move-result-object p0

    .line 199
    .line 200
    new-instance v0, Lcom/google/zxing/qrcode/encoder/f;

    .line 201
    .line 202
    .line 203
    invoke-direct {v0}, Lcom/google/zxing/qrcode/encoder/f;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/f;->c(Ll5/a;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/encoder/f;->f(Ll5/b;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/encoder/f;->g(Ll5/c;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ll5/c;->b()I

    .line 216
    move-result v1

    .line 217
    .line 218
    new-instance v2, Lcom/google/zxing/qrcode/encoder/b;

    .line 219
    .line 220
    .line 221
    invoke-direct {v2, v1, v1}, Lcom/google/zxing/qrcode/encoder/b;-><init>(II)V

    .line 222
    .line 223
    .line 224
    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/qrcode/encoder/c;->k(Lg5/a;Ll5/a;Ll5/c;Lcom/google/zxing/qrcode/encoder/b;)I

    .line 225
    move-result v1

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/f;->d(I)V

    .line 229
    .line 230
    .line 231
    invoke-static {p0, p1, p2, v1, v2}, Lcom/google/zxing/qrcode/encoder/e;->a(Lg5/a;Ll5/a;Ll5/c;ILcom/google/zxing/qrcode/encoder/b;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Lcom/google/zxing/qrcode/encoder/f;->e(Lcom/google/zxing/qrcode/encoder/b;)V

    .line 235
    return-object v0
.end method

.method static o([BI)[B
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    new-array v1, v1, [I

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aget-byte v4, p0, v3

    .line 12
    .line 13
    and-int/lit16 v4, v4, 0xff

    .line 14
    .line 15
    aput v4, v1, v3

    .line 16
    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance p0, Lh5/c;

    .line 21
    .line 22
    sget-object v3, Lh5/a;->QR_CODE_FIELD_256:Lh5/a;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v3}, Lh5/c;-><init>(Lh5/a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, p1}, Lh5/c;->b([II)V

    .line 29
    .line 30
    new-array p0, p1, [B

    .line 31
    .line 32
    :goto_1
    if-ge v2, p1, :cond_1

    .line 33
    .line 34
    add-int v3, v0, v2

    .line 35
    .line 36
    aget v3, v1, v3

    .line 37
    int-to-byte v3, v3

    .line 38
    .line 39
    aput-byte v3, p0, v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-object p0
.end method

.method static p(I)I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/zxing/qrcode/encoder/c;->ALPHANUMERIC_TABLE:[I

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-ge p0, v1, :cond_0

    .line 6
    .line 7
    aget p0, v0, p0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, -0x1

    .line 10
    return p0
.end method

.method static q(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    if-ge p3, p2, :cond_4

    .line 3
    .line 4
    rem-int v0, p0, p2

    .line 5
    .line 6
    sub-int v1, p2, v0

    .line 7
    .line 8
    div-int v2, p0, p2

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    div-int/2addr p1, p2

    .line 12
    .line 13
    add-int/lit8 v4, p1, 0x1

    .line 14
    sub-int/2addr v2, p1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    .line 17
    if-ne v2, v3, :cond_3

    .line 18
    .line 19
    add-int v5, v1, v0

    .line 20
    .line 21
    if-ne p2, v5, :cond_2

    .line 22
    .line 23
    add-int p2, p1, v2

    .line 24
    mul-int/2addr p2, v1

    .line 25
    .line 26
    add-int v5, v4, v3

    .line 27
    mul-int/2addr v5, v0

    .line 28
    add-int/2addr p2, v5

    .line 29
    .line 30
    if-ne p0, p2, :cond_1

    .line 31
    const/4 p0, 0x0

    .line 32
    .line 33
    if-ge p3, v1, :cond_0

    .line 34
    .line 35
    aput p1, p4, p0

    .line 36
    .line 37
    aput v2, p5, p0

    .line 38
    return-void

    .line 39
    .line 40
    :cond_0
    aput v4, p4, p0

    .line 41
    .line 42
    aput v3, p5, p0

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    new-instance p0, Lcom/google/zxing/h;

    .line 46
    .line 47
    const-string p1, "Total bytes mismatch"

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    .line 53
    :cond_2
    new-instance p0, Lcom/google/zxing/h;

    .line 54
    .line 55
    const-string p1, "RS blocks mismatch"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    .line 61
    :cond_3
    new-instance p0, Lcom/google/zxing/h;

    .line 62
    .line 63
    const-string p1, "EC bytes mismatch"

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    .line 69
    :cond_4
    new-instance p0, Lcom/google/zxing/h;

    .line 70
    .line 71
    const-string p1, "Block ID too large"

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
.end method

.method static r(Lg5/a;III)Lg5/a;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v6, p1

    .line 3
    .line 4
    move/from16 v7, p2

    .line 5
    .line 6
    move/from16 v8, p3

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lg5/a;->j()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-ne v0, v7, :cond_9

    .line 13
    .line 14
    new-instance v9, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    const/4 v10, 0x0

    .line 19
    move v11, v10

    .line 20
    move v12, v11

    .line 21
    move v13, v12

    .line 22
    move v14, v13

    .line 23
    .line 24
    :goto_0
    if-ge v11, v8, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    new-array v15, v0, [I

    .line 28
    .line 29
    new-array v5, v0, [I

    .line 30
    .line 31
    move/from16 v0, p1

    .line 32
    .line 33
    move/from16 v1, p2

    .line 34
    .line 35
    move/from16 v2, p3

    .line 36
    move v3, v11

    .line 37
    move-object v4, v15

    .line 38
    .line 39
    move-object/from16 v16, v5

    .line 40
    .line 41
    .line 42
    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/c;->q(IIII[I[I)V

    .line 43
    .line 44
    aget v0, v15, v10

    .line 45
    .line 46
    new-array v1, v0, [B

    .line 47
    .line 48
    shl-int/lit8 v2, v12, 0x3

    .line 49
    .line 50
    move-object/from16 v3, p0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2, v1, v10, v0}, Lg5/a;->l(I[BII)V

    .line 54
    .line 55
    aget v2, v16, v10

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/c;->o([BI)[B

    .line 59
    move-result-object v2

    .line 60
    .line 61
    new-instance v4, Lcom/google/zxing/qrcode/encoder/a;

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v1, v2}, Lcom/google/zxing/qrcode/encoder/a;-><init>([B[B)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    .line 71
    move-result v13

    .line 72
    array-length v0, v2

    .line 73
    .line 74
    .line 75
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v14

    .line 77
    .line 78
    aget v0, v15, v10

    .line 79
    add-int/2addr v12, v0

    .line 80
    .line 81
    add-int/lit8 v11, v11, 0x1

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_0
    if-ne v7, v12, :cond_8

    .line 85
    .line 86
    new-instance v0, Lg5/a;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0}, Lg5/a;-><init>()V

    .line 90
    move v1, v10

    .line 91
    .line 92
    :goto_1
    const/16 v2, 0x8

    .line 93
    .line 94
    if-ge v1, v13, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v4

    .line 103
    .line 104
    if-eqz v4, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    check-cast v4, Lcom/google/zxing/qrcode/encoder/a;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/a;->a()[B

    .line 114
    move-result-object v4

    .line 115
    array-length v5, v4

    .line 116
    .line 117
    if-ge v1, v5, :cond_1

    .line 118
    .line 119
    aget-byte v4, v4, v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v4, v2}, Lg5/a;->d(II)V

    .line 123
    goto :goto_2

    .line 124
    .line 125
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 126
    goto :goto_1

    .line 127
    .line 128
    :cond_3
    :goto_3
    if-ge v10, v14, :cond_6

    .line 129
    .line 130
    .line 131
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v3

    .line 137
    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v3

    .line 143
    .line 144
    check-cast v3, Lcom/google/zxing/qrcode/encoder/a;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/a;->b()[B

    .line 148
    move-result-object v3

    .line 149
    array-length v4, v3

    .line 150
    .line 151
    if-ge v10, v4, :cond_4

    .line 152
    .line 153
    aget-byte v3, v3, v10

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3, v2}, Lg5/a;->d(II)V

    .line 157
    goto :goto_4

    .line 158
    .line 159
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 160
    goto :goto_3

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-virtual {v0}, Lg5/a;->j()I

    .line 164
    move-result v1

    .line 165
    .line 166
    if-ne v6, v1, :cond_7

    .line 167
    return-object v0

    .line 168
    .line 169
    :cond_7
    new-instance v1, Lcom/google/zxing/h;

    .line 170
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v3, "Interleaving error: "

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, " and "

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lg5/a;->j()I

    .line 188
    move-result v0

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v0, " differ."

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    .line 203
    invoke-direct {v1, v0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 204
    throw v1

    .line 205
    .line 206
    :cond_8
    new-instance v0, Lcom/google/zxing/h;

    .line 207
    .line 208
    const-string v1, "Data bytes does not match offset"

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, v1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 212
    throw v0

    .line 213
    .line 214
    :cond_9
    new-instance v0, Lcom/google/zxing/h;

    .line 215
    .line 216
    const-string v1, "Number of bits and data bytes does not match"

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 220
    throw v0
.end method

.method private static s(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Shift_JIS"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    array-length v1, p0

    .line 9
    .line 10
    rem-int/lit8 v2, v1, 0x2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    .line 16
    :goto_0
    if-ge v2, v1, :cond_4

    .line 17
    .line 18
    aget-byte v3, p0, v2

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    const/16 v4, 0x81

    .line 23
    .line 24
    if-lt v3, v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x9f

    .line 27
    .line 28
    if-le v3, v4, :cond_2

    .line 29
    .line 30
    :cond_1
    const/16 v4, 0xe0

    .line 31
    .line 32
    if-lt v3, v4, :cond_3

    .line 33
    .line 34
    const/16 v4, 0xeb

    .line 35
    .line 36
    if-le v3, v4, :cond_2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    add-int/lit8 v2, v2, 0x2

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    return v0

    .line 42
    :cond_4
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :catch_0
    return v0
.end method

.method private static t(Ll5/a;Ll5/b;Lg5/a;Lg5/a;)Ll5/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ll5/c;->e(I)Ll5/c;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/c;->i(Ll5/b;Lg5/a;Lg5/a;Ll5/c;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/c;->m(ILl5/a;)Ll5/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/c;->i(Ll5/b;Lg5/a;Lg5/a;Ll5/c;)I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p0}, Lcom/google/zxing/qrcode/encoder/c;->m(ILl5/a;)Ll5/c;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method static u(ILg5/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1
    .line 2
    shl-int/lit8 v0, p0, 0x3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-gt v1, v0, :cond_5

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    const/4 v3, 0x4

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 17
    move-result v3

    .line 18
    .line 19
    if-ge v3, v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lg5/a;->b(Z)V

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 29
    move-result v2

    .line 30
    .line 31
    and-int/lit8 v2, v2, 0x7

    .line 32
    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    if-lez v2, :cond_1

    .line 36
    .line 37
    :goto_1
    if-ge v2, v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lg5/a;->b(Z)V

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Lg5/a;->j()I

    .line 47
    move-result v2

    .line 48
    sub-int/2addr p0, v2

    .line 49
    .line 50
    :goto_2
    if-ge v1, p0, :cond_3

    .line 51
    .line 52
    and-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    const/16 v2, 0xec

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_2
    const/16 v2, 0x11

    .line 60
    .line 61
    .line 62
    :goto_3
    invoke-virtual {p1, v2, v3}, Lg5/a;->d(II)V

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 69
    move-result p0

    .line 70
    .line 71
    if-ne p0, v0, :cond_4

    .line 72
    return-void

    .line 73
    .line 74
    :cond_4
    new-instance p0, Lcom/google/zxing/h;

    .line 75
    .line 76
    const-string p1, "Bits size does not equal capacity"

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 81
    .line 82
    :cond_5
    new-instance p0, Lcom/google/zxing/h;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "data bits cannot fit in the QR Code"

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lg5/a;->i()I

    .line 93
    move-result p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p1, " > "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p1}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0
.end method

.method private static v(ILl5/c;Ll5/a;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ll5/c;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ll5/c;->c(Ll5/a;)Ll5/c$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ll5/c$b;->d()I

    .line 12
    move-result p1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    .line 15
    add-int/lit8 p0, p0, 0x7

    .line 16
    .line 17
    div-int/lit8 p0, p0, 0x8

    .line 18
    .line 19
    if-lt v0, p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method
