.class public Lcom/bumptech/glide/load/engine/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/a;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final VALUE_COUNT:I = 0x1

.field private static wrapper:Lcom/bumptech/glide/load/engine/cache/e;


# instance fields
.field private final directory:Ljava/io/File;

.field private diskLruCache:Lcom/bumptech/glide/disklrucache/b;

.field private final maxSize:J

.field private final safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/j;

.field private final writeLocker:Lcom/bumptech/glide/load/engine/cache/c;


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/c;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/c;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->writeLocker:Lcom/bumptech/glide/load/engine/cache/c;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->directory:Ljava/io/File;

    .line 13
    .line 14
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/e;->maxSize:J

    .line 15
    .line 16
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/j;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/cache/j;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/j;

    .line 22
    return-void
.end method

.method public static c(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/e;-><init>(Ljava/io/File;J)V

    .line 6
    return-object v0
.end method

.method private declared-synchronized d()Lcom/bumptech/glide/disklrucache/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->diskLruCache:Lcom/bumptech/glide/disklrucache/b;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->directory:Ljava/io/File;

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/e;->maxSize:J

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/disklrucache/b;->Q(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/b;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->diskLruCache:Lcom/bumptech/glide/disklrucache/b;

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->diskLruCache:Lcom/bumptech/glide/disklrucache/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object v0

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/cache/a$b;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "DiskLruCacheWrapper"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/e;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/j;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/cache/j;->b(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/e;->writeLocker:Lcom/bumptech/glide/load/engine/cache/c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/cache/c;->a(Ljava/lang/String;)V

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v3, "Put: Obtained: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, " for for Key: "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_5

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->d()Lcom/bumptech/glide/disklrucache/b;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/b;->L(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/b$e;

    .line 59
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->writeLocker:Lcom/bumptech/glide/load/engine/cache/c;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Ljava/lang/String;)V

    .line 67
    return-void

    .line 68
    .line 69
    .line 70
    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/disklrucache/b;->p(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/b$c;

    .line 71
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    const/4 v2, 0x0

    .line 75
    .line 76
    .line 77
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/disklrucache/b$c;->f(I)Ljava/io/File;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/cache/a$b;->a(Ljava/io/File;)Z

    .line 82
    move-result p2

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/b$c;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    goto :goto_1

    .line 89
    :catchall_1
    move-exception p2

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/b$c;->b()V

    .line 94
    goto :goto_4

    .line 95
    :catch_0
    move-exception p1

    .line 96
    goto :goto_3

    .line 97
    .line 98
    .line 99
    :goto_2
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/b$c;->b()V

    .line 100
    throw p2

    .line 101
    .line 102
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    const-string v2, "Had two simultaneous puts for: "

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    :goto_3
    const/4 p2, 0x5

    .line 125
    .line 126
    .line 127
    :try_start_5
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 128
    move-result p2

    .line 129
    .line 130
    if-eqz p2, :cond_4

    .line 131
    .line 132
    const-string p2, "Unable to put to disk cache"

    .line 133
    .line 134
    .line 135
    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    .line 137
    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->writeLocker:Lcom/bumptech/glide/load/engine/cache/c;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Ljava/lang/String;)V

    .line 141
    return-void

    .line 142
    .line 143
    :goto_5
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/cache/e;->writeLocker:Lcom/bumptech/glide/load/engine/cache/c;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Ljava/lang/String;)V

    .line 147
    throw p1
.end method

.method public b(Lcom/bumptech/glide/load/g;)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->safeKeyGenerator:Lcom/bumptech/glide/load/engine/cache/j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/j;->b(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    const-string v2, "DiskLruCacheWrapper"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v3, "Get: Obtained: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, " for for Key: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->d()Lcom/bumptech/glide/disklrucache/b;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/disklrucache/b;->L(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/b$e;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/disklrucache/b$e;->a(I)Ljava/io/File;

    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v1, 0x5

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    const-string v1, "Unable to get from disk cache"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_1
    :goto_0
    return-object p1
.end method
