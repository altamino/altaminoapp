.class public Lorg/apache/commons/compress/archivers/sevenz/CLI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    }
.end annotation


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

.method private static grabMode([Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    sget-object p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    aget-object p0, p0, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    .line 23
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->usage()V

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/CLI;->grabMode([Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->getMessage()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, " "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    aget-object v4, p0, v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    aget-object p0, p0, v3

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 54
    move-result p0

    .line 55
    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, " doesn\'t exist or is a directory"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    :cond_1
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    .line 99
    return-void

    .line 100
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :catchall_1
    move-exception v1

    .line 102
    .line 103
    .line 104
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    goto :goto_2

    .line 106
    :catchall_2
    move-exception p0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    :goto_2
    throw v1
.end method

.method private static usage()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    .line 4
    const-string v1, "Parameters: archive-name [list|extract]"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    return-void
.end method
