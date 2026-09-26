.class public final Lorg/threeten/bp/zone/c;
.super Lorg/threeten/bp/zone/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/c$a;
    }
.end annotation


# instance fields
.field private loadedUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final versions:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/zone/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/threeten/bp/zone/i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->loadedUrls:Ljava/util/Set;

    const-class v0, Lorg/threeten/bp/zone/i;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/c;->h(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lorg/threeten/bp/zone/g;

    const-string v1, "No time-zone rules found for \'TZDB\'"

    invoke-direct {v0, v1}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lorg/threeten/bp/zone/i;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->loadedUrls:Ljava/util/Set;

    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/c;->g(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lorg/threeten/bp/zone/g;

    const-string v1, "Unable to load TZDB time-zone rules"

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Lorg/threeten/bp/zone/i;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/c;->loadedUrls:Ljava/util/Set;

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/c;->i(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/threeten/bp/zone/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No time-zone rules found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lorg/threeten/bp/zone/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load TZDB time-zone rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private g(Ljava/io/InputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/c;->j(Ljava/io/InputStream;)Ljava/lang/Iterable;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lorg/threeten/bp/zone/c$a;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/zone/c;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lorg/threeten/bp/zone/c$a;->a(Lorg/threeten/bp/zone/c$a;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lorg/threeten/bp/zone/c$a;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lorg/threeten/bp/zone/c$a;->a(Lorg/threeten/bp/zone/c$a;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lorg/threeten/bp/zone/c$a;->a(Lorg/threeten/bp/zone/c$a;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_0
    new-instance p1, Lorg/threeten/bp/zone/g;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v2, "Data already loaded for TZDB time-zone rules version: "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lorg/threeten/bp/zone/c$a;->a(Lorg/threeten/bp/zone/c$a;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return v0
.end method

.method private h(Ljava/lang/ClassLoader;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "org/threeten/bp/TZDB.dat"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-direct {p0, v2}, Lorg/threeten/bp/zone/c;->i(Ljava/net/URL;)Z

    .line 24
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    or-int/2addr v1, v0

    .line 26
    move-object v0, v2

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    move-object v0, v2

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    return v1

    .line 34
    .line 35
    :goto_1
    new-instance v1, Lorg/threeten/bp/zone/g;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v3, "Unable to load TZDB time-zone rules: "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0, p1}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    throw v1
.end method

.method private i(Ljava/net/URL;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Lorg/threeten/bp/zone/g;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/c;->loadedUrls:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/c;->g(Ljava/io/InputStream;)Z

    .line 20
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    const/4 p1, 0x0

    .line 31
    .line 32
    :goto_0
    if-eqz p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 36
    :cond_0
    throw v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :cond_2
    :goto_1
    return v0
.end method

.method private j(Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/threeten/bp/zone/c$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/DataInputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    const-string v2, "File format not recognised"

    .line 13
    .line 14
    if-ne p1, v1, :cond_6

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v1, "TZDB"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 30
    move-result p1

    .line 31
    .line 32
    new-array v1, p1, [Ljava/lang/String;

    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    .line 36
    :goto_0
    if-ge v3, p1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    aput-object v4, v1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 49
    move-result v3

    .line 50
    .line 51
    new-array v4, v3, [Ljava/lang/String;

    .line 52
    move v5, v2

    .line 53
    .line 54
    :goto_1
    if-ge v5, v3, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    aput-object v6, v4, v5

    .line 61
    .line 62
    add-int/lit8 v5, v5, 0x1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    iput-object v3, p0, Lorg/threeten/bp/zone/c;->regionIds:Ljava/util/List;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 73
    move-result v3

    .line 74
    .line 75
    new-array v5, v3, [Ljava/lang/Object;

    .line 76
    move v6, v2

    .line 77
    .line 78
    :goto_2
    if-ge v6, v3, :cond_2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 82
    move-result v7

    .line 83
    .line 84
    new-array v7, v7, [B

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 88
    .line 89
    aput-object v7, v5, v6

    .line 90
    .line 91
    add-int/lit8 v6, v6, 0x1

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    .line 98
    .line 99
    new-instance v5, Ljava/util/HashSet;

    .line 100
    .line 101
    .line 102
    invoke-direct {v5, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    move v6, v2

    .line 104
    .line 105
    :goto_3
    if-ge v6, p1, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 109
    move-result v7

    .line 110
    .line 111
    new-array v8, v7, [Ljava/lang/String;

    .line 112
    .line 113
    new-array v9, v7, [S

    .line 114
    move v10, v2

    .line 115
    .line 116
    :goto_4
    if-ge v10, v7, :cond_3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 120
    move-result v11

    .line 121
    .line 122
    aget-object v11, v4, v11

    .line 123
    .line 124
    aput-object v11, v8, v10

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 128
    move-result v11

    .line 129
    .line 130
    aput-short v11, v9, v10

    .line 131
    .line 132
    add-int/lit8 v10, v10, 0x1

    .line 133
    goto :goto_4

    .line 134
    .line 135
    :cond_3
    new-instance v7, Lorg/threeten/bp/zone/c$a;

    .line 136
    .line 137
    aget-object v10, v1, v6

    .line 138
    .line 139
    .line 140
    invoke-direct {v7, v10, v8, v9, v3}, Lorg/threeten/bp/zone/c$a;-><init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    add-int/lit8 v6, v6, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    return-object v5

    .line 148
    .line 149
    :cond_5
    new-instance p1, Ljava/io/StreamCorruptedException;

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p1

    .line 154
    .line 155
    :cond_6
    new-instance p1, Ljava/io/StreamCorruptedException;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p1
.end method


# virtual methods
.method protected c(Ljava/lang/String;Z)Lorg/threeten/bp/zone/f;
    .locals 2

    .line 1
    .line 2
    const-string p2, "zoneId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p2, p0, Lorg/threeten/bp/zone/c;->versions:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lorg/threeten/bp/zone/c$a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lorg/threeten/bp/zone/c$a;->c(Ljava/lang/String;)Lorg/threeten/bp/zone/f;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    return-object p2

    .line 25
    .line 26
    :cond_0
    new-instance p2, Lorg/threeten/bp/zone/g;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v1, "Unknown time-zone ID: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p1}, Lorg/threeten/bp/zone/g;-><init>(Ljava/lang/String;)V

    .line 47
    throw p2
.end method

.method protected d()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/zone/c;->regionIds:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TZDB"

    return-object v0
.end method
