.class public final La0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final d:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:J

.field private static final f:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, La0/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, La0/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, La0/b;->a:La0/b;

    .line 8
    .line 9
    sget-object v0, La0/b$b;->q:La0/b$b;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, La0/b;->d:Lw7/m;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 21
    .line 22
    sput-object v0, La0/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, La0/b;->g:Ljava/util/concurrent/locks/Condition;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic a(La0/b;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, La0/b;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    sget-object v0, La0/b;->g:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La0/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, La0/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La0/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic f(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, La0/b;->b:Ljava/lang/String;

    return-void
.end method

.method private final g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "getAdvertisingIdInfo(...)"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return-object p1
.end method

.method private final h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "android_id"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method private final i()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "toString(...)"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method private final j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget v0, Lr0/a;->dsc:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getString(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    sget v2, Lr0/a;->dsv:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, La0/b;->o(Landroid/content/Context;)[B

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lc/f/b/e/q5;->d([BLjava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public static final k()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, La0/b;->b:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {}, La0/b;->n()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_2

    .line 24
    .line 25
    :cond_0
    sget-object v0, La0/b;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29
    .line 30
    :catch_0
    :goto_0
    :try_start_0
    sget-object v1, La0/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    :try_start_1
    sget-object v1, La0/b;->g:Ljava/util/concurrent/locks/Condition;

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    :try_start_2
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 46
    .line 47
    sget-object v0, La0/b;->b:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    throw v1

    .line 56
    :cond_2
    :goto_2
    return-object v0
.end method

.method private final l(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget-object v1, La0/a;->d:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public static final m()J
    .locals 2

    .line 1
    sget-wide v0, La0/b;->e:J

    return-wide v0
.end method

.method public static final n()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, La0/b;->d:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    return-object v0
.end method

.method private final o(Landroid/content/Context;)[B
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, La0/b;->i()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v2, "getBytes(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, La0/b;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x1

    .line 21
    .line 22
    new-array v5, v4, [B

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v6

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, p1}, La0/b;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    new-array v3, v4, [B

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v4

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :cond_1
    array-length p1, v0

    .line 60
    array-length v1, v5

    .line 61
    array-length v2, v3

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v4

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 69
    move-result v4

    .line 70
    .line 71
    new-array v6, v4, [B

    .line 72
    const/4 v7, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    new-array v0, v4, [B

    .line 78
    .line 79
    .line 80
    invoke-static {v5, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    new-array v5, v4, [B

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    new-array v3, v4, [B

    .line 88
    .line 89
    new-array v8, v4, [B

    .line 90
    .line 91
    new-array v9, v4, [B

    .line 92
    move v10, v7

    .line 93
    .line 94
    :goto_0
    if-ge v10, v4, :cond_2

    .line 95
    .line 96
    aget-byte v11, v0, v10

    .line 97
    .line 98
    aget-byte v12, v5, v10

    .line 99
    xor-int/2addr v11, v12

    .line 100
    int-to-byte v11, v11

    .line 101
    .line 102
    aput-byte v11, v3, v10

    .line 103
    .line 104
    aget-byte v11, v6, v10

    .line 105
    .line 106
    aget-byte v12, v0, v10

    .line 107
    xor-int/2addr v11, v12

    .line 108
    int-to-byte v11, v11

    .line 109
    .line 110
    aput-byte v11, v8, v10

    .line 111
    .line 112
    aget-byte v11, v6, v10

    .line 113
    .line 114
    aget-byte v12, v5, v10

    .line 115
    xor-int/2addr v11, v12

    .line 116
    int-to-byte v11, v11

    .line 117
    .line 118
    aput-byte v11, v9, v10

    .line 119
    .line 120
    add-int/lit8 v10, v10, 0x1

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_2
    mul-int/lit8 v0, v4, 0x4

    .line 124
    .line 125
    add-int/lit8 v0, v0, 0x6

    .line 126
    .line 127
    new-array v0, v0, [B

    .line 128
    const/4 v5, 0x2

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 132
    move-result-object v10

    .line 133
    int-to-short p1, p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-static {p1, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    .line 146
    .line 147
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 148
    move-result-object p1

    .line 149
    int-to-short v1, v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 157
    move-result-object p1

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v7, v0, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    .line 162
    .line 163
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 164
    move-result-object p1

    .line 165
    int-to-short v1, v2

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 173
    move-result-object p1

    .line 174
    const/4 v1, 0x4

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v7, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    move p1, v7

    .line 179
    .line 180
    :goto_1
    if-ge p1, v4, :cond_3

    .line 181
    .line 182
    mul-int/lit8 v1, p1, 0x3

    .line 183
    .line 184
    add-int/lit8 v2, v1, 0x6

    .line 185
    .line 186
    aget-byte v5, v6, p1

    .line 187
    .line 188
    aput-byte v5, v0, v2

    .line 189
    .line 190
    add-int/lit8 v2, v1, 0x7

    .line 191
    .line 192
    aget-byte v5, v8, p1

    .line 193
    .line 194
    aput-byte v5, v0, v2

    .line 195
    .line 196
    add-int/lit8 v1, v1, 0x8

    .line 197
    .line 198
    aget-byte v2, v9, p1

    .line 199
    .line 200
    aput-byte v2, v0, v1

    .line 201
    .line 202
    add-int/lit8 p1, p1, 0x1

    .line 203
    goto :goto_1

    .line 204
    .line 205
    :cond_3
    mul-int/lit8 p1, v4, 0x3

    .line 206
    .line 207
    add-int/lit8 p1, p1, 0x6

    .line 208
    .line 209
    .line 210
    invoke-static {v3, v7, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    return-object v0
.end method

.method public static final p(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, La0/b;->a:La0/b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, La0/b;->l(Landroid/content/Context;)Ljava/io/File;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    :try_start_0
    sget-object v1, La0/c;->a:La0/c;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, La0/c;->b(Ljava/io/File;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v2, La0/a;->f:Ljava/lang/String;

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v3, v5, v4}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    move-result v2

    .line 35
    .line 36
    const/16 v3, 0x52

    .line 37
    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    .line 40
    sget-object v2, La0/a;->g:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    sput-object v1, La0/b;->b:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 60
    move-result-wide v1

    .line 61
    .line 62
    sput-wide v1, La0/b;->e:J

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_0
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v2, "dcid"

    .line 68
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v4, "mlfrmd dvcid: "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    :catch_0
    :cond_1
    :goto_0
    sget-object v1, La0/b;->b:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    sget-object v1, La0/b;->a:La0/b;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 101
    move-result v1

    .line 102
    int-to-long v1, v1

    .line 103
    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    move-result-wide v3

    .line 107
    add-long/2addr v1, v3

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    sput-object v1, La0/b;->c:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    move-result-wide v1

    .line 118
    .line 119
    sput-wide v1, La0/b;->e:J

    .line 120
    .line 121
    sget-object v1, La0/a;->h:Ljava/lang/String;

    .line 122
    .line 123
    new-instance v2, La0/b$a;

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, p0, v0, v1}, La0/b$a;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 130
    :cond_2
    return-void
.end method

.method public static final q()Z
    .locals 1

    .line 1
    sget-object v0, La0/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
