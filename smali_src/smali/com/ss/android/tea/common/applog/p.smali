.class public Lcom/ss/android/tea/common/applog/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = -0x1

.field private static b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/ss/android/tea/common/applog/p;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget v1, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/p;->d(Landroid/content/Context;)V

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    .line 15
    :cond_0
    :goto_0
    sget v1, Lcom/ss/android/tea/common/applog/p;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    const/16 v2, 0x1f4

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    .line 23
    :cond_1
    :try_start_1
    sget-object v1, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/p;->d(Landroid/content/Context;)V

    .line 29
    .line 30
    :cond_2
    sget-object p0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    .line 36
    :cond_3
    :goto_1
    :try_start_2
    sget p0, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 37
    .line 38
    if-le p0, v2, :cond_4

    .line 39
    .line 40
    sget-object p0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 44
    move-result p0

    .line 45
    .line 46
    if-lez p0, :cond_4

    .line 47
    .line 48
    sget-object p0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    check-cast p0, Ljava/io/File;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 58
    .line 59
    sget p0, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 60
    .line 61
    add-int/lit8 p0, p0, -0x1

    .line 62
    .line 63
    sput p0, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_4
    sget p0, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 67
    .line 68
    if-gez p0, :cond_5

    .line 69
    const/4 p0, -0x1

    .line 70
    .line 71
    sput p0, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 72
    .line 73
    :cond_5
    sget-object p0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 77
    move-result p0

    .line 78
    .line 79
    if-eqz p0, :cond_6

    .line 80
    const/4 p0, 0x0

    .line 81
    .line 82
    sput-object p0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    goto :goto_3

    .line 84
    .line 85
    .line 86
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :cond_6
    :goto_3
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    monitor-exit v0

    .line 91
    throw p0
.end method

.method private static b(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :catchall_0
    :cond_0
    return-void
.end method

.method private static c(Ljava/io/File;)[Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    const-string v0, "^log_[0-9]+_\\.log$"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/ss/android/tea/common/applog/p$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/ss/android/tea/common/applog/p$a;-><init>(Ljava/util/regex/Pattern;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    array-length v0, p0

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/ss/android/tea/common/applog/p$b;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lcom/ss/android/tea/common/applog/p$b;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/p;->c(Ljava/io/File;)[Ljava/io/File;

    .line 8
    move-result-object p0

    .line 9
    array-length v0, p0

    .line 10
    .line 11
    sput v0, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 12
    array-length v0, p0

    .line 13
    .line 14
    const/16 v1, 0x1f4

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    .line 23
    sput-object v0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;

    .line 24
    array-length v1, p0

    .line 25
    .line 26
    const/16 v2, 0x64

    .line 27
    .line 28
    if-gt v1, v2, :cond_0

    .line 29
    array-length v2, p0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_1
    return-void
.end method

.method public static e(Landroid/content/Context;J)V
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/ss/android/tea/common/applog/p;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    if-eqz p0, :cond_3

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    if-gtz v0, :cond_2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    const-string v2, "discard_logs.log"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    new-instance p0, Ljava/io/FileOutputStream;

    .line 36
    const/4 v2, 0x1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    new-instance p1, Ljava/util/Date;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p1, "\n"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/p;->b(Ljava/io/Closeable;)V

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-object v0, p0

    .line 81
    .line 82
    .line 83
    :catchall_1
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/p;->b(Ljava/io/Closeable;)V

    .line 84
    :cond_3
    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;JLjava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    sget-boolean v0, Lcom/ss/android/tea/common/applog/p;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    if-eqz p0, :cond_6

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    if-lez v0, :cond_6

    .line 21
    .line 22
    if-eqz p3, :cond_6

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-gtz v0, :cond_2

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_2
    const-string v0, "item_impression"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 37
    .line 38
    if-gtz v0, :cond_3

    .line 39
    return-void

    .line 40
    :cond_3
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    new-instance v2, Ljava/io/File;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    const-string v4, "log_"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p1, "_.log"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    new-instance p1, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    .line 88
    :try_start_2
    const-class p1, Lcom/ss/android/tea/common/applog/p;

    .line 89
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    .line 91
    :try_start_3
    sget p2, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 92
    .line 93
    if-ltz p2, :cond_4

    .line 94
    .line 95
    add-int/lit8 p2, p2, 0x1

    .line 96
    .line 97
    sput p2, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p2

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    .line 104
    :catchall_1
    :goto_1
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/p;->b(Ljava/io/Closeable;)V

    .line 105
    goto :goto_3

    .line 106
    :goto_2
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    :catchall_2
    move-object v0, p1

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/p;->a(Landroid/content/Context;)V

    .line 113
    .line 114
    sget-object p0, Lcom/ss/android/tea/common/applog/p;->b:Ljava/util/LinkedList;

    .line 115
    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 120
    move-result p0

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    const/4 p0, -0x1

    .line 123
    .line 124
    :goto_4
    const-string p1, "LogDebugUtil"

    .line 125
    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    const-string p3, "logCount: "

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    sget p3, Lcom/ss/android/tea/common/applog/p;->a:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string p3, ", purgeQueueSize: "

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_6
    :goto_5
    return-void
.end method
