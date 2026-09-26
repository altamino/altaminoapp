.class public Lcom/mixpanel/android/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final map1:[C

.field private static final map2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x40

    .line 3
    .line 4
    new-array v1, v0, [C

    .line 5
    .line 6
    sput-object v1, Lcom/mixpanel/android/util/a;->map1:[C

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    const/16 v2, 0x41

    .line 10
    move v3, v1

    .line 11
    .line 12
    :goto_0
    const/16 v4, 0x5a

    .line 13
    .line 14
    if-gt v2, v4, :cond_0

    .line 15
    .line 16
    sget-object v4, Lcom/mixpanel/android/util/a;->map1:[C

    .line 17
    .line 18
    add-int/lit8 v5, v3, 0x1

    .line 19
    .line 20
    aput-char v2, v4, v3

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    int-to-char v2, v2

    .line 24
    move v3, v5

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    const/16 v2, 0x61

    .line 28
    .line 29
    :goto_1
    const/16 v4, 0x7a

    .line 30
    .line 31
    if-gt v2, v4, :cond_1

    .line 32
    .line 33
    sget-object v4, Lcom/mixpanel/android/util/a;->map1:[C

    .line 34
    .line 35
    add-int/lit8 v5, v3, 0x1

    .line 36
    .line 37
    aput-char v2, v4, v3

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    int-to-char v2, v2

    .line 41
    move v3, v5

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    const/16 v2, 0x30

    .line 45
    .line 46
    :goto_2
    const/16 v4, 0x39

    .line 47
    .line 48
    if-gt v2, v4, :cond_2

    .line 49
    .line 50
    sget-object v4, Lcom/mixpanel/android/util/a;->map1:[C

    .line 51
    .line 52
    add-int/lit8 v5, v3, 0x1

    .line 53
    .line 54
    aput-char v2, v4, v3

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    int-to-char v2, v2

    .line 58
    move v3, v5

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_2
    sget-object v2, Lcom/mixpanel/android/util/a;->map1:[C

    .line 62
    .line 63
    add-int/lit8 v4, v3, 0x1

    .line 64
    .line 65
    const/16 v5, 0x2b

    .line 66
    .line 67
    aput-char v5, v2, v3

    .line 68
    .line 69
    const/16 v3, 0x2f

    .line 70
    .line 71
    aput-char v3, v2, v4

    .line 72
    .line 73
    const/16 v2, 0x80

    .line 74
    .line 75
    new-array v2, v2, [B

    .line 76
    .line 77
    sput-object v2, Lcom/mixpanel/android/util/a;->map2:[B

    .line 78
    move v2, v1

    .line 79
    .line 80
    :goto_3
    sget-object v3, Lcom/mixpanel/android/util/a;->map2:[B

    .line 81
    array-length v4, v3

    .line 82
    .line 83
    if-ge v2, v4, :cond_3

    .line 84
    const/4 v4, -0x1

    .line 85
    .line 86
    aput-byte v4, v3, v2

    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_3
    :goto_4
    if-ge v1, v0, :cond_4

    .line 92
    .line 93
    sget-object v2, Lcom/mixpanel/android/util/a;->map2:[B

    .line 94
    .line 95
    sget-object v3, Lcom/mixpanel/android/util/a;->map1:[C

    .line 96
    .line 97
    aget-char v3, v3, v1

    .line 98
    int-to-byte v4, v1

    .line 99
    .line 100
    aput-byte v4, v2, v3

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a([B)[C
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/mixpanel/android/util/a;->b([BI)[C

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b([BI)[C
    .locals 11

    .line 1
    .line 2
    mul-int/lit8 v0, p1, 0x4

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    div-int/lit8 v0, v0, 0x3

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x2

    .line 9
    .line 10
    div-int/lit8 v1, v1, 0x3

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x4

    .line 13
    .line 14
    new-array v1, v1, [C

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    .line 19
    :goto_0
    if-ge v3, p1, :cond_4

    .line 20
    .line 21
    add-int/lit8 v5, v3, 0x1

    .line 22
    .line 23
    aget-byte v6, p0, v3

    .line 24
    .line 25
    and-int/lit16 v7, v6, 0xff

    .line 26
    .line 27
    if-ge v5, p1, :cond_0

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x2

    .line 30
    .line 31
    aget-byte v5, p0, v5

    .line 32
    .line 33
    and-int/lit16 v5, v5, 0xff

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v3, v5

    .line 36
    move v5, v2

    .line 37
    .line 38
    :goto_1
    if-ge v3, p1, :cond_1

    .line 39
    .line 40
    add-int/lit8 v8, v3, 0x1

    .line 41
    .line 42
    aget-byte v3, p0, v3

    .line 43
    .line 44
    and-int/lit16 v3, v3, 0xff

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v8, v3

    .line 47
    move v3, v2

    .line 48
    .line 49
    :goto_2
    ushr-int/lit8 v7, v7, 0x2

    .line 50
    .line 51
    and-int/lit8 v6, v6, 0x3

    .line 52
    .line 53
    shl-int/lit8 v6, v6, 0x4

    .line 54
    .line 55
    ushr-int/lit8 v9, v5, 0x4

    .line 56
    or-int/2addr v6, v9

    .line 57
    .line 58
    and-int/lit8 v5, v5, 0xf

    .line 59
    .line 60
    shl-int/lit8 v5, v5, 0x2

    .line 61
    .line 62
    ushr-int/lit8 v9, v3, 0x6

    .line 63
    or-int/2addr v5, v9

    .line 64
    .line 65
    and-int/lit8 v3, v3, 0x3f

    .line 66
    .line 67
    add-int/lit8 v9, v4, 0x1

    .line 68
    .line 69
    sget-object v10, Lcom/mixpanel/android/util/a;->map1:[C

    .line 70
    .line 71
    aget-char v7, v10, v7

    .line 72
    .line 73
    aput-char v7, v1, v4

    .line 74
    .line 75
    add-int/lit8 v7, v4, 0x2

    .line 76
    .line 77
    aget-char v6, v10, v6

    .line 78
    .line 79
    aput-char v6, v1, v9

    .line 80
    .line 81
    const/16 v6, 0x3d

    .line 82
    .line 83
    if-ge v7, v0, :cond_2

    .line 84
    .line 85
    aget-char v5, v10, v5

    .line 86
    goto :goto_3

    .line 87
    :cond_2
    move v5, v6

    .line 88
    .line 89
    :goto_3
    aput-char v5, v1, v7

    .line 90
    .line 91
    add-int/lit8 v5, v4, 0x3

    .line 92
    .line 93
    if-ge v5, v0, :cond_3

    .line 94
    .line 95
    aget-char v6, v10, v3

    .line 96
    .line 97
    :cond_3
    aput-char v6, v1, v5

    .line 98
    .line 99
    add-int/lit8 v4, v4, 0x4

    .line 100
    move v3, v8

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/mixpanel/android/util/a;->a([B)[C

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 14
    return-object v0
.end method
