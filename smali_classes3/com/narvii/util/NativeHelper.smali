.class public Lcom/narvii/util/NativeHelper;
.super Ljava/lang/Object;
.source "NativeHelper.java"


# static fields
.field private static final HEX_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "animate"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "0123456789ABCDEF"

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/narvii/util/NativeHelper;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static B([BI)[B
    .locals 0

    return-object p0
.end method

.method public static Bd([B)Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static Be(Ljava/lang/String;)[B
    .locals 1

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static C([B)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/narvii/util/NativeHelper;->c([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/NativeHelper;->bytes2hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C([BLjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p0}, Lcom/narvii/util/NativeHelper;->c([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/narvii/util/NativeHelper;->bytes2hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {p0}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S([B)Ljava/lang/String;
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S([BLjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 18
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S([B[BI)Ljava/lang/String;
    .locals 0

    .line 21
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static addPadding([BI)I
    .locals 2

    .line 61
    array-length v0, p0

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    .line 62
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 63
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static bytes2hex([B)Ljava/lang/String;
    .locals 6

    .line 51
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 52
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 53
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 54
    sget-object v4, Lcom/narvii/util/NativeHelper;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 55
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static native c([B)[B
.end method

.method public static hex2bytes(Ljava/lang/String;)[B
    .locals 7

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 42
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 44
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 45
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static padCount([B)I
    .locals 8

    .line 70
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v2, v0

    .line 72
    array-length v3, p0

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    or-int/2addr v3, v5

    move v5, v4

    .line 73
    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_4

    .line 74
    array-length v6, p0

    sub-int/2addr v6, v5

    if-gt v6, v0, :cond_2

    move v6, v1

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    aget-byte v7, p0, v5

    if-eq v7, v2, :cond_3

    move v7, v1

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    and-int/2addr v6, v7

    or-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    return v0
.end method

.method public static padder16([B)[B
    .locals 3

    .line 83
    array-length v0, p0

    .line 84
    rem-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    sub-int/2addr v2, v1

    :cond_0
    add-int/2addr v2, v0

    .line 89
    new-array v1, v2, [B

    const/4 v2, 0x0

    .line 90
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-static {v1, v0}, Lcom/narvii/util/NativeHelper;->addPadding([BI)I

    return-object v1
.end method

.method public static native s(Ljava/lang/String;)[B
.end method

.method public static test()V
    .locals 5

    const-string v0, "test"

    .line 113
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qlg1+2sQEq8OpKQFK4noqFoLq8Z1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "PASS"

    const-string v3, "FAIL"

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-string v4, "TESTJNI TEST"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test2"

    .line 114
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "QoyTINLutnic5yrff5V4VUVv4ahv"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    const-string v4, "TESTJNI TEST2"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test3"

    .line 115
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "QqgOFYAblu4lnnPPRpFUeFh7A2q1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    const-string v4, "TESTJNI TEST3"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "test4"

    .line 116
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QgELK6vmhEpAH3ANGsX4zzB+qLaj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    const-string v0, "TESTJNI TEST4"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FE343E39C4D39E539A24E574F4C1628C88975410"

    .line 117
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->C([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TESTJNI DID"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "42FE343E39C4D39E539A24E574F4C1628C889754100204751C23A79242CF18ABC25FCDB263CF52FEE5"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "28187A9644F937F785E58E5A5439916A809C0E91"

    .line 119
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->C([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TESTJNI DID2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "4228187A9644F937F785E58E5A5439916A809C0E91B6C1F4D75B7A6E769D4BD00EF5BAE245F6142BEA"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "50B53761B1F6097759EB1628E39297C7E7EB931C"

    .line 121
    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->hex2bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/NativeHelper;->C([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "4250B53761B1F6097759EB1628E39297C7E7EB931CF9F6E07CB1DAC1EC0AC5B8D1D0FA0E366FDBA3DD"

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unpadder16([B)[B
    .locals 3

    .line 96
    invoke-static {p0}, Lcom/narvii/util/NativeHelper;->padCount([B)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p0

    .line 100
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 101
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
