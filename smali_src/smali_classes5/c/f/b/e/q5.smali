.class public Lc/f/b/e/q5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    sget-object v0, La0/a;->i:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lc/f/b/e/q5;->a()Z

    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    .line 13
    sget-object v1, La0/a;->i:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "ntv fld"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    sput-boolean v0, Lc/f/b/e/q5;->a:Z

    .line 23
    return-void
.end method

.method private static native a()Z
.end method

.method public static a([BI)[B
    .locals 2

    sget-boolean v0, Lc/f/b/e/q5;->a:Z

    if-eqz v0, :cond_1

    .line 1
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 2
    invoke-static {p0, v0, p1}, Lc/f/b/e/q5;->b([B[BI)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object p1, La0/a;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "natv fld wth c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/f/b/e/q5;->errc()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lc/f/b/e/q5;->errs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, La0/a;->i:Ljava/lang/String;

    const-string v1, "natv fld wth b-func"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lc/f/b/e/q5;->a([BI)[B

    move-result-object p0

    .line 2
    array-length v1, p0

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    add-int/lit8 v3, v1, -0x10

    if-lt v2, v3, :cond_1

    .line 3
    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    .line 4
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    sget-object v3, La0/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v1, La0/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static native b([B[BI)Z
.end method

.method private static native c([B[BI)Ljava/lang/String;
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 5

    .line 1
    sget-object v0, La0/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    array-length v0, p0

    .line 3
    rem-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    rsub-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v0

    .line 4
    new-array v2, v1, [B

    move v3, v0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 5
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    :goto_1
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Lc/f/b/e/q5;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([BLjava/lang/String;I)Ljava/lang/String;
    .locals 7

    const-string p1, "e7309ecc0953c6fa60005b2765f99dbbc965c8e9"

    invoke-static {p1}, Lc/f/b/e/q5;->h(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1}, Lc/f/b/e/q5;->hm([B[B)[B

    move-result-object p0

    array-length v3, v1

    array-length v4, p0

    add-int v5, v3, v4

    new-array v5, v5, [B

    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Lc/f/b/e/q5;->g([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e([B[BI)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lc/f/b/e/q5;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lc/f/b/e/q5;->c([B[BI)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, La0/a;->i:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "natv fld wth c "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lc/f/b/e/q5;->errc()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ": "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lc/f/b/e/q5;->errs()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object p1

    .line 53
    .line 54
    :goto_0
    sget-object v0, La0/a;->i:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "natv fld wth c-func"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v0, "FF"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/4 v0, 0x1

    .line 71
    .line 72
    new-array v0, v0, [B

    .line 73
    const/4 v1, 0x0

    .line 74
    int-to-byte p2, p2

    .line 75
    .line 76
    aput-byte p2, v0, v1

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lc/f/b/e/q5;->g([B)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lc/f/b/e/q5;->g([B)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public static native errc()I
.end method

.method private static native errs()Ljava/lang/String;
.end method

.method public static f([BLjava/lang/String;I)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string p1, "dfa5ed192dda6e88a12fe12130dc6206b1251e44"

    invoke-static {p1}, Lc/f/b/e/q5;->h(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p0}, Lc/f/b/e/q5;->hm([B[B)[B

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    array-length v2, p0

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static g([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    new-array v0, v0, [C

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p0, v1

    .line 12
    .line 13
    and-int/lit16 v3, v2, 0xff

    .line 14
    .line 15
    mul-int/lit8 v4, v1, 0x2

    .line 16
    .line 17
    sget-object v5, La0/a;->e:[C

    .line 18
    .line 19
    ushr-int/lit8 v3, v3, 0x4

    .line 20
    .line 21
    aget-char v3, v5, v3

    .line 22
    .line 23
    aput-char v3, v0, v4

    .line 24
    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0xf

    .line 28
    .line 29
    aget-char v2, v5, v2

    .line 30
    .line 31
    aput-char v2, v0, v4

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 40
    return-object p0
.end method

.method private static h(Ljava/lang/String;)[B
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    div-int/lit8 v1, v0, 0x2

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    div-int/lit8 v3, v2, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v4

    .line 18
    .line 19
    const/16 v5, 0x10

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 23
    move-result v4

    .line 24
    .line 25
    shl-int/lit8 v4, v4, 0x4

    .line 26
    .line 27
    add-int/lit8 v6, v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 31
    move-result v6

    .line 32
    .line 33
    .line 34
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    .line 35
    move-result v5

    .line 36
    add-int/2addr v4, v5

    .line 37
    int-to-byte v4, v4

    .line 38
    .line 39
    aput-byte v4, v1, v3

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

.method private static hm([B[B)[B
    .locals 3

    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static native s([B[BI)[B
.end method
