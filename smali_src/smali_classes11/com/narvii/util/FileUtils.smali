.class public Lcom/narvii/util/FileUtils;
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

.method public static copyFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 8
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    new-instance p2, Lcom/narvii/util/SafeFileOutputStream;

    invoke-direct {p2, v1}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V

    :goto_1
    const/4 p3, -0x1

    if-eq v0, p3, :cond_1

    const/4 p3, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p2, p0, p3, v0}, Lcom/narvii/util/SafeFileOutputStream;->write([BII)V

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 14
    invoke-virtual {p2, p3}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 15
    throw p0

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/4 p0, 0x1

    .line 17
    invoke-virtual {p2, p0}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    return-object v1
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized deleteFile(Ljava/io/File;)Z
    .locals 7

    .line 1
    .line 2
    const-class v0, Lcom/narvii/util/FileUtils;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    monitor-exit v0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    array-length v3, v2

    .line 23
    move v5, v4

    .line 24
    .line 25
    :goto_0
    if-ge v5, v3, :cond_1

    .line 26
    .line 27
    aget-object v6, v2, v5

    .line 28
    .line 29
    .line 30
    invoke-static {v6}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 45
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v1, v4

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    return v1

    .line 52
    :goto_2
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public static getNewFileName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    :cond_0
    const-string v0, "."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    :cond_1
    new-instance v0, Ljava/util/Random;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    :goto_0
    const/16 v2, 0x100

    .line 40
    .line 41
    if-ge v1, v2, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 45
    move-result v2

    .line 46
    .line 47
    and-int/lit16 v2, v2, 0xfff

    .line 48
    .line 49
    or-int/lit16 v2, v2, 0x1000

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    new-instance v3, Ljava/io/File;

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    .line 102
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static isEmpty(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long p0, v1, v3

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    :try_start_0
    const-string v0, "MD5"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    move-result-object p0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    array-length v1, p0

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    :goto_0
    if-ge v2, v1, :cond_1

    .line 27
    .line 28
    aget-byte v3, p0, v2

    .line 29
    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x2

    .line 40
    .line 41
    if-ge v4, v5, :cond_0

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v5, "0"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-object p0

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    const-string p0, ""

    .line 78
    return-object p0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    const-string v0, "file://"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance p1, Ljava/io/File;

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    move-object p1, p0

    .line 58
    .line 59
    .line 60
    :goto_1
    :try_start_0
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    const/4 p0, 0x0

    .line 68
    return p0

    .line 69
    .line 70
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    const-string p1, "Both sourceFilePath and destFilePath cannot be null."

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p0
.end method

.method public static moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :try_start_0
    const-string v2, "assets://"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    move-object v2, v1

    .line 27
    goto :goto_4

    .line 28
    :catch_0
    move-exception p0

    .line 29
    move-object v2, v1

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    move-object v2, p1

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 35
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 41
    .line 42
    .line 43
    :try_start_2
    invoke-static {p0, v2}, Lcom/narvii/util/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 49
    .line 50
    .line 51
    :catch_1
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 52
    :catch_2
    const/4 p0, 0x1

    .line 53
    return p0

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    :goto_1
    move-object v1, p0

    .line 56
    move-object p0, p1

    .line 57
    goto :goto_4

    .line 58
    :catch_3
    move-exception p2

    .line 59
    :goto_2
    move-object v1, p0

    .line 60
    move-object p0, p2

    .line 61
    goto :goto_3

    .line 62
    :catchall_2
    move-exception p1

    .line 63
    move-object v2, v1

    .line 64
    goto :goto_1

    .line 65
    :catch_4
    move-exception p2

    .line 66
    move-object v2, v1

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :goto_3
    :try_start_5
    const-string/jumbo p2, "tag"

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v4, "Failed to copy asset file: "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {p2, p1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    .line 95
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 96
    .line 97
    :catch_5
    :cond_3
    if-eqz v2, :cond_4

    .line 98
    .line 99
    .line 100
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 101
    :catch_6
    :cond_4
    return v0

    .line 102
    :catchall_3
    move-exception p0

    .line 103
    .line 104
    :goto_4
    if-eqz v1, :cond_5

    .line 105
    .line 106
    .line 107
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 108
    .line 109
    :catch_7
    :cond_5
    if-eqz v2, :cond_6

    .line 110
    .line 111
    .line 112
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 113
    :catch_8
    :cond_6
    throw p0
.end method

.method public static writeJsonObjectToFile(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/io/File;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-object v0, v1

    .line 20
    .line 21
    .line 22
    :catch_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 23
    :goto_0
    return-void
.end method
