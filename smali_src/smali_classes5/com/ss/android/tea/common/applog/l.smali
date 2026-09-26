.class public Lcom/ss/android/tea/common/applog/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true

.field private static k:Lcom/ss/android/tea/common/applog/l;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/l;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    .line 14
    const/4 v2, -0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/l;->f:J

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/l;->g:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/l;->h:Z

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/ss/android/tea/common/applog/l;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-wide v1

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    move-result p0

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 24
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_1
    return-wide v1
.end method

.method static synthetic c(Lcom/ss/android/tea/common/applog/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/l;->q()V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/ss/android/tea/common/applog/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/l;->t()V

    .line 4
    return-void
.end method

.method static synthetic i(Lcom/ss/android/tea/common/applog/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/l;->s()V

    .line 4
    return-void
.end method

.method static synthetic k(Lcom/ss/android/tea/common/applog/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/ss/android/tea/common/applog/l;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method private q()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "CustomChannelHandler"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "getSystemRecordChannel"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v2, "get mSystemRecordChannel = "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/l;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/applog/l;->k:Lcom/ss/android/tea/common/applog/l;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lcom/ss/android/tea/common/applog/l;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/ss/android/tea/common/applog/l;->k:Lcom/ss/android/tea/common/applog/l;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/ss/android/tea/common/applog/l;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/ss/android/tea/common/applog/l;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    sput-object v1, Lcom/ss/android/tea/common/applog/l;->k:Lcom/ss/android/tea/common/applog/l;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    .line 27
    :cond_1
    :goto_2
    sget-object p0, Lcom/ss/android/tea/common/applog/l;->k:Lcom/ss/android/tea/common/applog/l;

    .line 28
    return-object p0
.end method

.method private s()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "CustomChannelHandler"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "getApkInfo"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->a(Ljava/lang/String;)J

    .line 58
    move-result-wide v2

    .line 59
    .line 60
    const-wide/16 v4, 0x3e8

    .line 61
    div-long/2addr v2, v4

    .line 62
    .line 63
    iput-wide v2, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string v3, "get mApkCreateTime = "

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-wide v3, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    :catch_0
    :cond_2
    if-nez v0, :cond_3

    .line 94
    return-void

    .line 95
    .line 96
    .line 97
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const-string v2, "(.*)-(\\d+)(.*)"

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_4

    .line 115
    const/4 v2, 0x2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 123
    move-result v0

    .line 124
    .line 125
    iput v0, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    const/4 v0, -0x1

    .line 128
    .line 129
    iput v0, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 130
    .line 131
    .line 132
    :goto_0
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 133
    move-result v0

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    const-string v2, "get mApkSuffixNum = "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    iget v2, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :catch_1
    :cond_5
    return-void
.end method

.method private t()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "CustomChannelHandler"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "getSystemCreateTime"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    const-string v2, "/system/app"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    array-length v3, v0

    .line 37
    const/4 v4, 0x0

    .line 38
    move v5, v4

    .line 39
    .line 40
    :goto_0
    if-ge v4, v3, :cond_3

    .line 41
    .line 42
    aget-object v6, v0, v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 46
    move-result v7

    .line 47
    .line 48
    if-nez v7, :cond_1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v7, 0x5

    .line 51
    .line 52
    if-ge v5, v7, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 56
    move-result-wide v6

    .line 57
    .line 58
    const-wide/16 v8, 0x3e8

    .line 59
    div-long/2addr v6, v8

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 78
    move-result v0

    .line 79
    .line 80
    div-int/lit8 v0, v0, 0x2

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 90
    move-result-wide v2

    .line 91
    .line 92
    iput-wide v2, p0, Lcom/ss/android/tea/common/applog/l;->f:J

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string v2, "get mSystemCreateTime = "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    iget-wide v2, p0, Lcom/ss/android/tea/common/applog/l;->f:J

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->b:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    const-wide/16 v2, -0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    .line 22
    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget v0, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/l;->f:J

    .line 32
    .line 33
    cmp-long v0, v4, v2

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    :try_start_0
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/l;->b:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 48
    move-result v4

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    const-string v4, "app_channel"

    .line 53
    .line 54
    iget-object v5, p0, Lcom/ss/android/tea/common/applog/l;->b:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    :cond_1
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    .line 68
    const-string/jumbo v4, "system_record_channel"

    .line 69
    .line 70
    iget-object v5, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    :cond_2
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    .line 76
    .line 77
    cmp-long v6, v4, v2

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    const-string v6, "apk_create_time"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    .line 86
    :cond_3
    iget v4, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 87
    .line 88
    if-eq v4, v1, :cond_4

    .line 89
    .line 90
    const-string v1, "apk_shuffix_num"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    :cond_4
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/l;->f:J

    .line 96
    .line 97
    cmp-long v1, v4, v2

    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "system_create_time"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    :cond_5
    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    :try_start_0
    const-string v1, "app_channel"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/ss/android/tea/common/applog/l;->b:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "system_record_channel"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "apk_create_time"

    .line 25
    .line 26
    const-wide/16 v1, -0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 30
    move-result-wide v3

    .line 31
    .line 32
    iput-wide v3, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    .line 33
    .line 34
    const-string v0, "apk_shuffix_num"

    .line 35
    const/4 v3, -0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    move-result v0

    .line 40
    .line 41
    iput v0, p0, Lcom/ss/android/tea/common/applog/l;->e:I

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "system_create_time"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/l;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/ss/android/tea/common/applog/l;->g:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/l;->o()V

    .line 6
    return-void
.end method

.method public f()Lorg/json/JSONObject;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "system_record_channel"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/l;->c:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    :cond_1
    return-object v0
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/tea/common/applog/l;->h:Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/tea/common/applog/l;->g:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/tea/common/applog/l;->h:Z

    return v0
.end method

.method public m()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/android/tea/common/applog/l;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ss/android/tea/common/applog/l;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/ss/android/tea/common/applog/l$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/ss/android/tea/common/applog/l$a;-><init>(Lcom/ss/android/tea/common/applog/l;)V

    .line 26
    .line 27
    new-instance v1, Lcom/bytedance/tea/common/utility/b/b;

    .line 28
    .line 29
    const-string v3, "get_apk_install_info"

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0, v3, v2}, Lcom/bytedance/tea/common/utility/b/b;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/tea/common/utility/b/b;->a()V

    .line 36
    return-void
.end method

.method public o()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->r(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/l;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/android/tea/common/applog/l;->b()Lorg/json/JSONObject;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const-string v2, "CustomChannelHandler"

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v4, "save appInstallJson = "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    :cond_1
    const-string v2, "custom_channels"

    .line 58
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    :try_start_1
    const-string v3, "has_send_app_info"

    .line 61
    .line 62
    iget-boolean v4, p0, Lcom/ss/android/tea/common/applog/l;->g:Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    .line 67
    const-string v3, "custom_channels"

    .line 68
    const/4 v4, 0x0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    const-string v3, "app_install_info"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/c/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 89
    monitor-exit v2

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public p()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/l;->j:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    :try_start_0
    const-string v1, "custom_channels"

    .line 20
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    :try_start_1
    const-string v2, "custom_channels"

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    const-string v4, "app_install_info"

    .line 30
    .line 31
    const-string v5, ""

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-instance v4, Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/l;->r(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/l;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Lcom/ss/android/tea/common/applog/l;->d(Lorg/json/JSONObject;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const-string v0, "CustomChannelHandler"

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v5, "load appInstallJson = "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_1
    :goto_0
    const-string v0, "has_send_app_info"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/l;->g:Z

    .line 87
    monitor-exit v1

    .line 88
    goto :goto_2

    .line 89
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :catch_0
    :goto_2
    return-void
.end method
