.class public Lcom/narvii/util/ZipUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static compressedFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0, v2}, Lcom/narvii/util/ZipUtils;->createCompressedFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 48
    throw p0
.end method

.method private static createCompressedFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "/"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string p2, ""

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    :goto_0
    array-length v0, p1

    .line 63
    .line 64
    if-ge v1, v0, :cond_4

    .line 65
    .line 66
    aget-object v0, p1, v1

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    aget-object v3, p1, v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v0, v2}, Lcom/narvii/util/ZipUtils;->createCompressedFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 91
    move-result v2

    .line 92
    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 100
    .line 101
    new-instance p1, Ljava/util/zip/ZipEntry;

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 108
    .line 109
    const/16 p1, 0x1000

    .line 110
    .line 111
    new-array p1, p1, [B

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 115
    move-result p2

    .line 116
    const/4 v3, -0x1

    .line 117
    .line 118
    if-eq p2, v3, :cond_3

    .line 119
    .line 120
    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 126
    move-result v3

    .line 127
    .line 128
    if-eqz v3, :cond_2

    .line 129
    goto :goto_2

    .line 130
    .line 131
    .line 132
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    move v1, v2

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 141
    move v2, v1

    .line 142
    :cond_4
    return v2
.end method

.method public static extract(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v1, p1}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    sget-object p1, Lcom/narvii/util/ZipUtils;->TAG:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    const/4 p0, 0x0

    return p0

    :goto_1
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 6
    throw p0
.end method

.method public static extract(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 8

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 9
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {v4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    .line 10
    :goto_0
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    move p0, v0

    goto :goto_3

    .line 12
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 16
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    .line 17
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 18
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_1
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    move p0, v0

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v5, v3, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v5

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v1, v5

    goto :goto_4

    .line 22
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 23
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Zip Path Traversal Vulnerability"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    return p0

    :goto_4
    :try_start_3
    sget-object p1, Lcom/narvii/util/ZipUtils;->TAG:Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    return v0

    :goto_5
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 28
    throw p0
.end method

.method public static storeFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    :try_start_0
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p0, v2}, Lcom/narvii/util/ZipUtils;->createCompressedFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 53
    return p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 58
    throw p0
.end method
