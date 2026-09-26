.class Lcom/ss/android/tea/common/applog/w;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static p:Landroid/content/Context;

.field private static final q:Ljava/io/FilenameFilter;

.field private static final r:Ljava/io/FilenameFilter;

.field private static s:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final t:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/android/tea/common/applog/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lorg/json/JSONObject;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lcom/ss/android/tea/common/applog/b$e;

.field private f:J

.field private g:J

.field private h:Lcom/ss/android/tea/common/applog/x;

.field private i:J

.field private j:Ljava/util/concurrent/atomic/AtomicLong;

.field private k:I

.field private volatile l:Lorg/json/JSONObject;

.field private volatile m:J

.field private final n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/ss/android/tea/common/applog/w$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/ss/android/tea/common/applog/w$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/ss/android/tea/common/applog/w;->q:Ljava/io/FilenameFilter;

    .line 8
    .line 9
    new-instance v0, Lcom/ss/android/tea/common/applog/w$b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/ss/android/tea/common/applog/w$b;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/ss/android/tea/common/applog/w;->r:Ljava/io/FilenameFilter;

    .line 15
    .line 16
    new-instance v0, Lcom/ss/android/tea/common/applog/w$c;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/ss/android/tea/common/applog/w$c;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/ss/android/tea/common/applog/w;->t:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ss/android/tea/common/applog/b$e;Lcom/ss/android/tea/common/applog/x;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/LinkedList<",
            "Lcom/ss/android/tea/common/applog/u;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/ss/android/tea/common/applog/b$e;",
            "Lcom/ss/android/tea/common/applog/x;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p5, "LogReaper"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p5}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/w;->g:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/w;->i:J

    .line 14
    .line 15
    new-instance p5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    .line 18
    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 19
    .line 20
    iput-object p5, p0, Lcom/ss/android/tea/common/applog/w;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    const/4 p5, 0x0

    .line 22
    .line 23
    iput p5, p0, Lcom/ss/android/tea/common/applog/w;->k:I

    .line 24
    const/4 p5, 0x0

    .line 25
    .line 26
    iput-object p5, p0, Lcom/ss/android/tea/common/applog/w;->l:Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    const-wide/32 v0, 0x1d4c0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/w;->m:J

    .line 32
    .line 33
    iput-object p5, p0, Lcom/ss/android/tea/common/applog/w;->u:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/ss/android/tea/common/applog/w;->v:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/ss/android/tea/common/applog/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    iput-object p6, p0, Lcom/ss/android/tea/common/applog/w;->h:Lcom/ss/android/tea/common/applog/x;

    .line 46
    .line 47
    iput-object p7, p0, Lcom/ss/android/tea/common/applog/w;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    iput-object p8, p0, Lcom/ss/android/tea/common/applog/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ss/android/tea/common/applog/w;->p:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v1, "header"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :cond_0
    :goto_0
    return-object p1
.end method

.method private declared-synchronized e(Lcom/ss/android/tea/common/applog/u;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/ss/android/tea/common/applog/v;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    check-cast p1, Lcom/ss/android/tea/common/applog/v;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/ss/android/tea/common/applog/v;->a:Lcom/ss/android/tea/common/applog/x;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/ss/android/tea/common/applog/v;->b:Lcom/ss/android/tea/common/applog/x;

    .line 16
    .line 17
    iget-boolean v3, p1, Lcom/ss/android/tea/common/applog/v;->c:Z

    .line 18
    .line 19
    iget-wide v4, p1, Lcom/ss/android/tea/common/applog/v;->d:J

    .line 20
    move-object v0, p0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/tea/common/applog/w;->f(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;ZJ)V

    .line 24
    .line 25
    iget-object p1, p1, Lcom/ss/android/tea/common/applog/v;->b:Lcom/ss/android/tea/common/applog/x;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/w;->h:Lcom/ss/android/tea/common/applog/x;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/w;->i:J

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    instance-of v0, p1, Lcom/ss/android/tea/common/applog/t;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    check-cast p1, Lcom/ss/android/tea/common/applog/t;

    .line 43
    .line 44
    iget-wide v0, p1, Lcom/ss/android/tea/common/applog/t;->a:J

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Lcom/ss/android/tea/common/applog/w;->k(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_2
    :goto_0
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    throw p1
.end method

.method private f(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;ZJ)V
    .locals 7

    .line 1
    const/4 v6, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/tea/common/applog/w;->g(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;ZJZ)V

    .line 10
    return-void
.end method

.method private g(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;ZJZ)V
    .locals 21

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v12, p2

    .line 7
    .line 8
    iget-object v2, v1, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lcom/ss/android/tea/common/applog/m;->t(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/m;

    .line 12
    move-result-object v13

    .line 13
    .line 14
    :try_start_0
    iget-object v2, v1, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 15
    .line 16
    iget-object v3, v1, Lcom/ss/android/tea/common/applog/w;->l:Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v13, v2, v3}, Lcom/ss/android/tea/common/applog/m;->h(Lorg/json/JSONObject;Lorg/json/JSONObject;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :catchall_0
    if-nez v0, :cond_0

    .line 22
    .line 23
    if-nez v12, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v14, 0x1

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    new-array v15, v14, [J

    .line 30
    .line 31
    const-wide/16 v16, 0x0

    .line 32
    .line 33
    const/16 v18, 0x0

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    aput-wide p4, v15, v18

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    aput-wide v16, v15, v18

    .line 41
    :goto_0
    const/4 v9, 0x0

    .line 42
    .line 43
    new-array v11, v14, [Ljava/lang/String;

    .line 44
    .line 45
    iget-object v5, v1, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 46
    .line 47
    iget-object v10, v1, Lcom/ss/android/tea/common/applog/w;->l:Lorg/json/JSONObject;

    .line 48
    move-object v2, v13

    .line 49
    .line 50
    move-object/from16 v3, p1

    .line 51
    .line 52
    move-object/from16 v4, p2

    .line 53
    .line 54
    move/from16 v6, p3

    .line 55
    move-object v7, v15

    .line 56
    move-object v8, v11

    .line 57
    .line 58
    move-object/from16 v19, v10

    .line 59
    .line 60
    move/from16 v10, p6

    .line 61
    .line 62
    move-object/from16 v20, v11

    .line 63
    .line 64
    move-object/from16 v11, v19

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v2 .. v11}, Lcom/ss/android/tea/common/applog/m;->e(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;Lorg/json/JSONObject;Z[J[Ljava/lang/String;Lcom/ss/android/tea/common/applog/b$e;ZLorg/json/JSONObject;)J

    .line 68
    move-result-wide v2

    .line 69
    .line 70
    cmp-long v4, v2, v16

    .line 71
    .line 72
    if-lez v4, :cond_8

    .line 73
    .line 74
    aget-object v4, v20, v18

    .line 75
    .line 76
    aget-wide v5, v15, v18

    .line 77
    .line 78
    cmp-long v5, v5, p4

    .line 79
    .line 80
    if-lez v5, :cond_2

    .line 81
    .line 82
    if-eqz p6, :cond_2

    .line 83
    .line 84
    new-instance v5, Lcom/ss/android/tea/common/applog/v;

    .line 85
    .line 86
    .line 87
    invoke-direct {v5}, Lcom/ss/android/tea/common/applog/v;-><init>()V

    .line 88
    .line 89
    iput-object v0, v5, Lcom/ss/android/tea/common/applog/v;->a:Lcom/ss/android/tea/common/applog/x;

    .line 90
    .line 91
    iput-boolean v14, v5, Lcom/ss/android/tea/common/applog/v;->c:Z

    .line 92
    .line 93
    aget-wide v6, v15, v18

    .line 94
    .line 95
    iput-wide v6, v5, Lcom/ss/android/tea/common/applog/v;->d:J

    .line 96
    .line 97
    iget-object v6, v1, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 98
    monitor-enter v6

    .line 99
    .line 100
    :try_start_1
    iget-object v0, v1, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v6

    .line 105
    goto :goto_1

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    throw v0

    .line 109
    .line 110
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    .line 114
    move-result v0

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    :try_start_2
    const-string v0, "AppLog"

    .line 119
    .line 120
    const-string v5, "begin to send batch logs"

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v5}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->K0()Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_3

    .line 130
    .line 131
    iget-wide v5, v1, Lcom/ss/android/tea/common/applog/w;->m:J

    .line 132
    .line 133
    .line 134
    const-wide/32 v7, 0xdbba0

    .line 135
    .line 136
    cmp-long v0, v5, v7

    .line 137
    .line 138
    if-nez v0, :cond_3

    .line 139
    return-void

    .line 140
    :catchall_2
    move-exception v0

    .line 141
    goto :goto_3

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->n0()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v0, v4, v14}, Lcom/ss/android/tea/common/applog/w;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 149
    move-result v18

    .line 150
    .line 151
    if-eqz v18, :cond_4

    .line 152
    .line 153
    if-eqz v12, :cond_4

    .line 154
    .line 155
    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/tea/common/applog/w;->p()Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    iput-boolean v14, v12, Lcom/ss/android/tea/common/applog/x;->j:Z

    .line 162
    .line 163
    iget-wide v4, v12, Lcom/ss/android/tea/common/applog/x;->a:J

    .line 164
    .line 165
    .line 166
    invoke-virtual {v13, v4, v5}, Lcom/ss/android/tea/common/applog/m;->r(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    .line 168
    :cond_4
    :goto_2
    move/from16 v0, v18

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :goto_3
    const-string v4, "AppLog"

    .line 172
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v6, "send session exception: "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    goto :goto_2

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-virtual {v13, v2, v3, v0}, Lcom/ss/android/tea/common/applog/m;->n(JZ)Z

    .line 196
    .line 197
    if-nez v0, :cond_8

    .line 198
    .line 199
    iget-wide v4, v1, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 200
    .line 201
    cmp-long v0, v4, v16

    .line 202
    .line 203
    if-gez v0, :cond_8

    .line 204
    .line 205
    iput-wide v2, v1, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_5
    if-eqz v12, :cond_8

    .line 210
    .line 211
    iget-object v0, v1, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    .line 215
    move-result v0

    .line 216
    .line 217
    if-eqz v0, :cond_8

    .line 218
    .line 219
    iget v0, v1, Lcom/ss/android/tea/common/applog/w;->k:I

    .line 220
    .line 221
    if-lez v0, :cond_8

    .line 222
    .line 223
    iget-boolean v0, v12, Lcom/ss/android/tea/common/applog/x;->i:Z

    .line 224
    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    .line 228
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/tea/common/applog/w;->p()Z

    .line 229
    move-result v0

    .line 230
    .line 231
    if-nez v0, :cond_6

    .line 232
    return-void

    .line 233
    .line 234
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .line 239
    const-string v2, "magic_tag"

    .line 240
    .line 241
    const-string v3, "ss_app_log"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    .line 246
    const-string v2, "header"

    .line 247
    .line 248
    iget-object v3, v1, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    .line 253
    new-instance v2, Lorg/json/JSONArray;

    .line 254
    .line 255
    .line 256
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 257
    .line 258
    new-instance v3, Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .line 263
    const-string v4, "datetime"

    .line 264
    .line 265
    iget-wide v5, v12, Lcom/ss/android/tea/common/applog/x;->c:J

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v6}, Lcom/ss/android/tea/common/applog/b;->v(J)Ljava/lang/String;

    .line 269
    move-result-object v5

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    .line 274
    const-string v4, "session_id"

    .line 275
    .line 276
    iget-object v5, v12, Lcom/ss/android/tea/common/applog/x;->b:Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    .line 281
    const-string v4, "local_time_ms"

    .line 282
    .line 283
    iget-wide v5, v12, Lcom/ss/android/tea/common/applog/x;->c:J

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 287
    .line 288
    .line 289
    const-string/jumbo v4, "tea_event_index"

    .line 290
    .line 291
    iget-wide v5, v12, Lcom/ss/android/tea/common/applog/x;->d:J

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 295
    .line 296
    iget-boolean v4, v12, Lcom/ss/android/tea/common/applog/x;->i:Z

    .line 297
    .line 298
    if-eqz v4, :cond_7

    .line 299
    .line 300
    const-string v4, "is_background"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 304
    goto :goto_5

    .line 305
    :catchall_3
    move-exception v0

    .line 306
    goto :goto_6

    .line 307
    .line 308
    .line 309
    :cond_7
    :goto_5
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 310
    .line 311
    const-string v3, "launch"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->n0()Ljava/lang/String;

    .line 318
    move-result-object v2

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 322
    move-result-object v0

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v2, v0, v14}, Lcom/ss/android/tea/common/applog/w;->i(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 326
    goto :goto_7

    .line 327
    .line 328
    :goto_6
    const-string v2, "AppLog"

    .line 329
    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    const-string v4, "send launch exception: "

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    .line 347
    .line 348
    invoke-static {v2, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_8
    :goto_7
    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "server_time"

    .line 3
    .line 4
    const-string v1, "blacklist"

    .line 5
    .line 6
    const-string v2, "AppLog"

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ss/android/tea/common/applog/w;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 14
    move-result v3

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v4, "app_log: "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    :goto_0
    const-string v3, "UTF-8"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 46
    move-result-object v6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    check-cast p2, [B

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 56
    move-result v3

    .line 57
    const/4 v10, 0x0

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    iget-object p3, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 64
    .line 65
    if-eqz p3, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->E0()Z

    .line 69
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    if-eqz p3, :cond_1

    .line 72
    .line 73
    :try_start_1
    iget-object p3, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2, p3, v10}, Lcom/ss/android/tea/common/applog/y;->g(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;

    .line 77
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/bytedance/tea/common/utility/NetworkClient;->getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 82
    move-result-object v4

    .line 83
    const/4 v7, 0x1

    .line 84
    .line 85
    const-string v8, "application/json; charset=utf-8"

    .line 86
    const/4 v9, 0x0

    .line 87
    move-object v5, p1

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-static {}, Lcom/bytedance/tea/common/utility/NetworkClient;->getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 96
    move-result-object v4

    .line 97
    const/4 v7, 0x1

    .line 98
    .line 99
    const-string v8, "application/json; charset=utf-8"

    .line 100
    const/4 v9, 0x0

    .line 101
    move-object v5, p1

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    :goto_1
    if-eqz p1, :cond_c

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 111
    move-result p2

    .line 112
    .line 113
    if-nez p2, :cond_2

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 119
    move-result p2

    .line 120
    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    const-string p3, "app_log response: "

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-static {v2, p2}, Lcom/bytedance/tea/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    :cond_3
    new-instance p2, Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    const-string p1, "ss_app_log"

    .line 149
    .line 150
    const-string p3, "magic_tag"

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result p1

    .line 159
    .line 160
    if-eqz p1, :cond_4

    .line 161
    .line 162
    .line 163
    const-string/jumbo p1, "success"

    .line 164
    .line 165
    const-string p3, "message"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object p3

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .line 175
    if-eqz p1, :cond_4

    .line 176
    const/4 p1, 0x1

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    move p1, v10

    .line 179
    .line 180
    :goto_2
    if-eqz p1, :cond_5

    .line 181
    .line 182
    .line 183
    :try_start_3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 184
    move-result-wide v3

    .line 185
    .line 186
    const-wide/16 v5, 0x0

    .line 187
    .line 188
    cmp-long p3, v3, v5

    .line 189
    .line 190
    if-lez p3, :cond_5

    .line 191
    .line 192
    new-instance p3, Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    move-result-wide v3

    .line 203
    .line 204
    const-wide/16 v5, 0x3e8

    .line 205
    div-long/2addr v3, v5

    .line 206
    .line 207
    const-string v0, "local_time"

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 211
    .line 212
    iput-object p3, p0, Lcom/ss/android/tea/common/applog/w;->l:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    .line 214
    .line 215
    :catch_1
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->K0()Z

    .line 216
    move-result p3

    .line 217
    .line 218
    if-eqz p3, :cond_b

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 222
    move-result-object p3

    .line 223
    .line 224
    if-eqz p3, :cond_9

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 228
    move-result-object p3

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 232
    move-result-object p3

    .line 233
    .line 234
    .line 235
    invoke-static {v2, p3}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 239
    move-result-object p3

    .line 240
    .line 241
    .line 242
    const-string/jumbo v0, "v1"

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 246
    move-result-object p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 247
    .line 248
    const-string v0, "black"

    .line 249
    .line 250
    if-eqz p3, :cond_7

    .line 251
    .line 252
    .line 253
    :try_start_5
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 254
    move-result v3

    .line 255
    .line 256
    if-lez v3, :cond_7

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 260
    move-result v3

    .line 261
    move v4, v10

    .line 262
    .line 263
    :goto_3
    if-ge v4, v3, :cond_7

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 267
    move-result-object v5

    .line 268
    .line 269
    .line 270
    invoke-static {v5}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 271
    move-result v6

    .line 272
    .line 273
    if-nez v6, :cond_6

    .line 274
    .line 275
    iget-object v6, p0, Lcom/ss/android/tea/common/applog/w;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 281
    goto :goto_3

    .line 282
    .line 283
    .line 284
    :cond_7
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 285
    move-result-object p2

    .line 286
    .line 287
    .line 288
    const-string/jumbo p3, "v3"

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 292
    move-result-object p2

    .line 293
    .line 294
    if-eqz p2, :cond_b

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 298
    move-result p3

    .line 299
    .line 300
    if-lez p3, :cond_b

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 304
    move-result p3

    .line 305
    .line 306
    :goto_4
    if-ge v10, p3, :cond_b

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    .line 313
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 314
    move-result v3

    .line 315
    .line 316
    if-nez v3, :cond_8

    .line 317
    .line 318
    iget-object v3, p0, Lcom/ss/android/tea/common/applog/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 324
    goto :goto_4

    .line 325
    .line 326
    :cond_9
    const-string p2, "black list is empty"

    .line 327
    .line 328
    .line 329
    invoke-static {v2, p2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    iget-object p2, p0, Lcom/ss/android/tea/common/applog/w;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 335
    move-result p2

    .line 336
    .line 337
    if-nez p2, :cond_a

    .line 338
    .line 339
    iget-object p2, p0, Lcom/ss/android/tea/common/applog/w;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 343
    .line 344
    :cond_a
    iget-object p2, p0, Lcom/ss/android/tea/common/applog/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 348
    move-result p2

    .line 349
    .line 350
    if-nez p2, :cond_b

    .line 351
    .line 352
    iget-object p2, p0, Lcom/ss/android/tea/common/applog/w;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 356
    .line 357
    .line 358
    :catchall_1
    :cond_b
    const-wide/32 p2, 0x1d4c0

    .line 359
    .line 360
    :try_start_6
    iput-wide p2, p0, Lcom/ss/android/tea/common/applog/w;->m:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 361
    return p1

    .line 362
    :cond_c
    :goto_5
    return v10

    .line 363
    .line 364
    .line 365
    :goto_6
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->K0()Z

    .line 366
    move-result p2

    .line 367
    .line 368
    if-eqz p2, :cond_d

    .line 369
    .line 370
    instance-of p2, p1, Lcom/bytedance/tea/common/utility/CommonHttpException;

    .line 371
    .line 372
    if-eqz p2, :cond_d

    .line 373
    move-object p2, p1

    .line 374
    .line 375
    check-cast p2, Lcom/bytedance/tea/common/utility/CommonHttpException;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p2}, Lcom/bytedance/tea/common/utility/CommonHttpException;->getResponseCode()I

    .line 379
    move-result p2

    .line 380
    .line 381
    const/16 p3, 0x1fd

    .line 382
    .line 383
    if-ne p2, p3, :cond_d

    .line 384
    .line 385
    const-string p2, "server return 509"

    .line 386
    .line 387
    .line 388
    invoke-static {v2, p2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-wide/32 p2, 0xdbba0

    .line 392
    .line 393
    iput-wide p2, p0, Lcom/ss/android/tea/common/applog/w;->m:J

    .line 394
    :cond_d
    throw p1
.end method

.method static synthetic j()Ljava/io/FilenameFilter;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/applog/w;->r:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method private k(J)V
    .locals 7

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    const-string v0, "AppLog"

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "try to batch session  id < "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/m;->t(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/m;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/tea/common/applog/m;->p(J)Lcom/ss/android/tea/common/applog/x;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    .line 46
    const-wide/16 v5, 0x0

    .line 47
    move-object v1, p0

    .line 48
    move-object v2, p1

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/tea/common/applog/w;->f(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;ZJ)V

    .line 52
    .line 53
    new-instance p2, Lcom/ss/android/tea/common/applog/t;

    .line 54
    .line 55
    .line 56
    invoke-direct {p2}, Lcom/ss/android/tea/common/applog/t;-><init>()V

    .line 57
    .line 58
    iget-wide v0, p1, Lcom/ss/android/tea/common/applog/x;->a:J

    .line 59
    .line 60
    iput-wide v0, p2, Lcom/ss/android/tea/common/applog/t;->a:J

    .line 61
    .line 62
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 63
    monitor-enter p1

    .line 64
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit p1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p2

    .line 72
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p2

    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic m()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/applog/w;->s:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/tea/common/applog/w;->t:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private p()Z
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 3
    .line 4
    const-string v1, "device_id"

    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 14
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    return v0

    .line 18
    :catchall_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private q()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/m;->t(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/m;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/ss/android/tea/common/applog/m;->k()V

    .line 10
    return-void
.end method

.method private r()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    invoke-static {v2}, Lt6/d;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    const-string v3, "ss_crash_logs"

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    sget-object v2, Lcom/ss/android/tea/common/applog/w;->r:Ljava/io/FilenameFilter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    array-length v2, v1

    .line 24
    .line 25
    if-gtz v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 35
    .line 36
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/w;->u:Ljava/lang/String;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    aget-object v4, v1, v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    iput-object v4, p0, Lcom/ss/android/tea/common/applog/w;->u:Ljava/lang/String;

    .line 46
    array-length v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    move-object v6, v0

    .line 48
    move v5, v3

    .line 49
    .line 50
    :goto_0
    if-ge v3, v4, :cond_4

    .line 51
    .line 52
    :try_start_1
    aget-object v7, v1, v3

    .line 53
    const/4 v8, 0x5

    .line 54
    .line 55
    if-ge v3, v8, :cond_1

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 61
    move-result-object v8

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v8

    .line 66
    .line 67
    if-eqz v8, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_4

    .line 71
    :catch_0
    move-object v0, v6

    .line 72
    goto :goto_5

    .line 73
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 74
    .line 75
    :cond_2
    if-nez v5, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 79
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    const-wide/16 v10, 0x4000

    .line 82
    .line 83
    cmp-long v8, v8, v10

    .line 84
    .line 85
    if-gez v8, :cond_3

    .line 86
    .line 87
    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    .line 88
    .line 89
    new-instance v9, Ljava/io/FileReader;

    .line 90
    .line 91
    .line 92
    invoke-direct {v9, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    .line 104
    :try_start_4
    new-instance v8, Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v8}, Lcom/ss/android/tea/common/applog/w;->n(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :catch_1
    move-object v6, v0

    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v1

    .line 114
    move-object v6, v0

    .line 115
    move-object v0, v1

    .line 116
    goto :goto_4

    .line 117
    :catchall_2
    move-exception v0

    .line 118
    move-object v6, v8

    .line 119
    goto :goto_4

    .line 120
    :catch_2
    move-object v6, v8

    .line 121
    .line 122
    .line 123
    :catch_3
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    .line 125
    :catch_4
    add-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-static {v6}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 130
    goto :goto_6

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 134
    return-void

    .line 135
    .line 136
    .line 137
    :goto_4
    invoke-static {v6}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 138
    throw v0

    .line 139
    .line 140
    .line 141
    :catch_5
    :goto_5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 142
    :goto_6
    return-void
.end method

.method private s()V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    iget-object v3, v1, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v3}, Lt6/d;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    const-string v4, "ss_native_crash_logs"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    sget-object v3, Lcom/ss/android/tea/common/applog/w;->q:Ljava/io/FilenameFilter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    array-length v3, v0

    .line 25
    .line 26
    if-gtz v3, :cond_1

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    .line 29
    goto/16 :goto_8

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 37
    .line 38
    iget-object v3, v1, Lcom/ss/android/tea/common/applog/w;->v:Ljava/lang/String;

    .line 39
    const/4 v4, 0x0

    .line 40
    .line 41
    aget-object v5, v0, v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    iput-object v5, v1, Lcom/ss/android/tea/common/applog/w;->v:Ljava/lang/String;

    .line 48
    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    move v6, v4

    .line 50
    move v8, v6

    .line 51
    const/4 v7, 0x0

    .line 52
    .line 53
    :goto_0
    if-ge v6, v5, :cond_b

    .line 54
    .line 55
    :try_start_1
    aget-object v9, v0, v6

    .line 56
    const/4 v10, 0x5

    .line 57
    const/4 v11, 0x1

    .line 58
    .line 59
    if-ge v6, v10, :cond_2

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 65
    move-result-object v10

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v10

    .line 70
    .line 71
    if-eqz v10, :cond_3

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    move-object v2, v7

    .line 75
    .line 76
    goto/16 :goto_9

    .line 77
    :cond_2
    :goto_1
    move v8, v11

    .line 78
    .line 79
    :cond_3
    new-instance v10, Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .line 84
    if-nez v8, :cond_a

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 88
    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    const-wide/16 v14, 0x4000

    .line 91
    .line 92
    cmp-long v12, v12, v14

    .line 93
    .line 94
    if-gez v12, :cond_a

    .line 95
    .line 96
    :try_start_2
    new-instance v12, Ljava/io/BufferedReader;

    .line 97
    .line 98
    new-instance v13, Ljava/io/FileReader;

    .line 99
    .line 100
    .line 101
    invoke-direct {v13, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    move-object/from16 v16, v3

    .line 107
    move v7, v4

    .line 108
    .line 109
    const-wide/16 v2, 0x0

    .line 110
    const/4 v15, 0x0

    .line 111
    .line 112
    .line 113
    :goto_2
    :try_start_3
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 114
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    if-nez v7, :cond_4

    .line 119
    .line 120
    .line 121
    :try_start_4
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 122
    move-result-wide v2

    .line 123
    goto :goto_3

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v2, v12

    .line 126
    .line 127
    goto/16 :goto_9

    .line 128
    :catch_0
    move-object v7, v12

    .line 129
    const/4 v2, 0x0

    .line 130
    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_4
    if-ne v7, v11, :cond_5

    .line 134
    move-object v15, v4

    .line 135
    goto :goto_3

    .line 136
    .line 137
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v4, "\n"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    .line 157
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 158
    goto :goto_2

    .line 159
    .line 160
    .line 161
    :cond_6
    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    .line 163
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .line 168
    const-string v7, "data"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 172
    move-result-object v10

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 176
    move-result-object v10

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .line 181
    const-string v7, "is_native_crash"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    .line 186
    const-string v7, "no_process_name"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 190
    move-result v7

    .line 191
    .line 192
    if-nez v7, :cond_7

    .line 193
    .line 194
    const-string v7, "process_name"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    :cond_7
    const-wide/16 v12, 0x0

    .line 200
    goto :goto_4

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    const/4 v2, 0x0

    .line 203
    goto :goto_9

    .line 204
    :catch_1
    const/4 v2, 0x0

    .line 205
    goto :goto_6

    .line 206
    .line 207
    :goto_4
    cmp-long v7, v2, v12

    .line 208
    .line 209
    if-lez v7, :cond_8

    .line 210
    .line 211
    const-string v7, "crash_time"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 215
    .line 216
    :cond_8
    const-string v2, ":"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 220
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 221
    .line 222
    const-string v3, "remote_process"

    .line 223
    .line 224
    if-eqz v2, :cond_9

    .line 225
    .line 226
    .line 227
    :try_start_7
    invoke-virtual {v4, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 228
    const/4 v2, 0x0

    .line 229
    goto :goto_5

    .line 230
    :cond_9
    const/4 v2, 0x0

    .line 231
    .line 232
    .line 233
    :try_start_8
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    :goto_5
    invoke-virtual {v1, v4}, Lcom/ss/android/tea/common/applog/w;->n(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 237
    :catch_2
    :goto_6
    const/4 v7, 0x0

    .line 238
    goto :goto_7

    .line 239
    :catch_3
    const/4 v2, 0x0

    .line 240
    move-object v7, v12

    .line 241
    goto :goto_7

    .line 242
    .line 243
    :catch_4
    :cond_a
    move-object/from16 v16, v3

    .line 244
    move v2, v4

    .line 245
    .line 246
    .line 247
    :goto_7
    :try_start_9
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 248
    .line 249
    :catch_5
    add-int/lit8 v6, v6, 0x1

    .line 250
    move v4, v2

    .line 251
    .line 252
    move-object/from16 v3, v16

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    .line 257
    :cond_b
    invoke-static {v7}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 258
    goto :goto_a

    .line 259
    .line 260
    .line 261
    :goto_8
    invoke-static {v2}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 262
    return-void

    .line 263
    .line 264
    :goto_9
    :try_start_a
    const-string v3, "AppLog"

    .line 265
    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    const-string v5, "parse native crash log exceptin: "

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    .line 283
    .line 284
    invoke-static {v3, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 285
    .line 286
    .line 287
    invoke-static {v2}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 288
    :goto_a
    return-void

    .line 289
    :catchall_3
    move-exception v0

    .line 290
    .line 291
    .line 292
    invoke-static {v2}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 293
    throw v0
.end method

.method private t()Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/w;->r()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/w;->s()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    iget-wide v2, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v2

    .line 29
    .line 30
    iget-wide v6, p0, Lcom/ss/android/tea/common/applog/w;->g:J

    .line 31
    sub-long/2addr v2, v6

    .line 32
    .line 33
    iget-wide v6, p0, Lcom/ss/android/tea/common/applog/w;->m:J

    .line 34
    .line 35
    cmp-long v0, v2, v6

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    iput-wide v4, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/w;->q()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    move-result-wide v2

    .line 47
    .line 48
    iput-wide v2, p0, Lcom/ss/android/tea/common/applog/w;->g:J

    .line 49
    .line 50
    :cond_1
    iget-wide v2, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 51
    .line 52
    cmp-long v0, v2, v4

    .line 53
    .line 54
    if-gez v0, :cond_2

    .line 55
    return v1

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/m;->t(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/m;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iget-wide v2, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/tea/common/applog/m;->i(J)Lcom/ss/android/tea/common/applog/r;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    const-wide/16 v2, -0x1

    .line 72
    .line 73
    iput-wide v2, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 74
    return v1

    .line 75
    .line 76
    :cond_3
    iget-wide v3, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 77
    .line 78
    iget-wide v5, v2, Lcom/ss/android/tea/common/applog/r;->a:J

    .line 79
    .line 80
    cmp-long v7, v3, v5

    .line 81
    .line 82
    if-gez v7, :cond_4

    .line 83
    .line 84
    iput-wide v5, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_4
    const-wide/16 v5, 0x1

    .line 88
    add-long/2addr v3, v5

    .line 89
    .line 90
    iput-wide v3, p0, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 91
    .line 92
    :goto_0
    iget-object v3, v2, Lcom/ss/android/tea/common/applog/r;->b:Ljava/lang/String;

    .line 93
    const/4 v4, 0x1

    .line 94
    .line 95
    if-eqz v3, :cond_8

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 99
    move-result v3

    .line 100
    .line 101
    if-nez v3, :cond_5

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_5
    :try_start_0
    iget v3, v2, Lcom/ss/android/tea/common/applog/r;->f:I

    .line 105
    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->n0()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    iget-object v5, v2, Lcom/ss/android/tea/common/applog/r;->b:Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v3, v5, v4}, Lcom/ss/android/tea/common/applog/w;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 116
    move-result v1

    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_6
    if-ne v3, v4, :cond_7

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->x0()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    iget-object v5, v2, Lcom/ss/android/tea/common/applog/r;->b:Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v3, v5, v1}, Lcom/ss/android/tea/common/applog/w;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 131
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    move v1, v4

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    const-string v6, "send session exception: "

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    const-string v5, "AppLog"

    .line 154
    .line 155
    .line 156
    invoke-static {v5, v3}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    :goto_2
    iget-wide v2, v2, Lcom/ss/android/tea/common/applog/r;->a:J

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2, v3, v1}, Lcom/ss/android/tea/common/applog/m;->n(JZ)Z

    .line 162
    :cond_8
    :goto_3
    return v4
.end method


# virtual methods
.method c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/tea/common/applog/w;->k:I

    return-void
.end method

.method d(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    return-void
.end method

.method h(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/w;->l:Lorg/json/JSONObject;

    return-void
.end method

.method declared-synchronized l(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/ss/android/tea/common/applog/b;->a:[Ljava/lang/String;

    .line 4
    array-length v1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v5

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    .line 26
    :try_start_1
    const-string v0, "AppLog"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "updateHeader exception: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    throw p1
.end method

.method declared-synchronized n(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/m;->t(Landroid/content/Context;)Lcom/ss/android/tea/common/applog/m;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "magic_tag"

    .line 20
    .line 21
    const-string v2, "ss_app_log"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    const-string v1, "header"

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/w;->c:Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, "AppLog"

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v3, "insert crash log data: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ss/android/tea/common/applog/m;->f(Ljava/lang/String;)J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    const-string p1, "AppLog"

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v3, "insert crash log id: "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :goto_1
    :try_start_2
    const-string v0, "AppLog"

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    const-string v2, "insertCrashlog exception: "

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-static {v0, p1}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :cond_2
    :goto_2
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :goto_3
    monitor-exit p0

    .line 127
    throw p1

    .line 128
    :cond_3
    :goto_4
    monitor-exit p0

    .line 129
    return-void
.end method

.method public run()V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    const-string v0, "AppLog"

    .line 5
    .line 6
    const-string v1, "LogReaper start"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/tea/common/applog/w;->q()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iput-wide v0, v8, Lcom/ss/android/tea/common/applog/w;->g:J

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iput-wide v0, v8, Lcom/ss/android/tea/common/applog/w;->i:J

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move-object v1, v0

    .line 28
    :goto_0
    move v10, v9

    .line 29
    .line 30
    :goto_1
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 33
    monitor-enter v2

    .line 34
    .line 35
    :try_start_0
    iget-object v3, v8, Lcom/ss/android/tea/common/applog/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    monitor-exit v2

    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_0
    iget-object v3, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Lcom/ss/android/tea/common/applog/u;

    .line 63
    :cond_1
    monitor-exit v2

    .line 64
    :cond_2
    move-object v11, v1

    .line 65
    goto :goto_3

    .line 66
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0

    .line 68
    .line 69
    :goto_3
    if-eqz v11, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-direct {v8, v11}, Lcom/ss/android/tea/common/applog/w;->e(Lcom/ss/android/tea/common/applog/u;)V

    .line 73
    move-object v1, v0

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_3
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/w;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 80
    move-result-wide v1

    .line 81
    .line 82
    const-wide/16 v3, 0x4e20

    .line 83
    .line 84
    cmp-long v3, v1, v3

    .line 85
    .line 86
    const-wide/16 v12, 0x0

    .line 87
    .line 88
    if-gez v3, :cond_4

    .line 89
    move-wide v14, v12

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move-wide v14, v1

    .line 92
    .line 93
    :goto_4
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->h:Lcom/ss/android/tea/common/applog/x;

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    iget-boolean v1, v2, Lcom/ss/android/tea/common/applog/x;->i:Z

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    iget-wide v3, v2, Lcom/ss/android/tea/common/applog/x;->a:J

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    move-wide v3, v12

    .line 104
    .line 105
    .line 106
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    move-result-wide v5

    .line 108
    .line 109
    cmp-long v1, v14, v12

    .line 110
    .line 111
    if-lez v1, :cond_7

    .line 112
    .line 113
    cmp-long v1, v3, v12

    .line 114
    .line 115
    if-gtz v1, :cond_6

    .line 116
    goto :goto_6

    .line 117
    .line 118
    :cond_6
    iget-wide v3, v8, Lcom/ss/android/tea/common/applog/w;->i:J

    .line 119
    .line 120
    sub-long v3, v5, v3

    .line 121
    .line 122
    cmp-long v1, v3, v14

    .line 123
    .line 124
    if-lez v1, :cond_8

    .line 125
    .line 126
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/w;->b:Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    iput-wide v5, v8, Lcom/ss/android/tea/common/applog/w;->i:J

    .line 135
    .line 136
    const-string v1, "AppLog"

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    const-string v4, "batch event "

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v3}, Lcom/bytedance/tea/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v3, 0x0

    .line 158
    const/4 v4, 0x1

    .line 159
    .line 160
    const-wide/16 v5, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    .line 163
    move-object/from16 v1, p0

    .line 164
    .line 165
    .line 166
    invoke-direct/range {v1 .. v7}, Lcom/ss/android/tea/common/applog/w;->g(Lcom/ss/android/tea/common/applog/x;Lcom/ss/android/tea/common/applog/x;ZJZ)V

    .line 167
    goto :goto_7

    .line 168
    :cond_7
    :goto_6
    move-wide v14, v12

    .line 169
    .line 170
    .line 171
    :cond_8
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/tea/common/applog/w;->t()Z

    .line 172
    move-result v1

    .line 173
    .line 174
    if-eqz v1, :cond_b

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->K0()Z

    .line 178
    move-result v1

    .line 179
    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    add-int/lit8 v10, v10, 0x1

    .line 183
    const/4 v1, 0x4

    .line 184
    .line 185
    if-gt v10, v1, :cond_a

    .line 186
    :cond_9
    move-object v1, v11

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_a
    const-wide/16 v1, -0x1

    .line 191
    .line 192
    iput-wide v1, v8, Lcom/ss/android/tea/common/applog/w;->f:J

    .line 193
    .line 194
    :cond_b
    iget-object v1, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 195
    monitor-enter v1

    .line 196
    .line 197
    :try_start_1
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 201
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    .line 203
    if-eqz v2, :cond_e

    .line 204
    .line 205
    cmp-long v2, v14, v12

    .line 206
    .line 207
    if-lez v2, :cond_c

    .line 208
    .line 209
    :try_start_2
    const-string v2, "AppLog"

    .line 210
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string/jumbo v4, "wait for batch event "

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v3

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v3}, Lcom/bytedance/tea/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v14, v15}, Ljava/lang/Object;->wait(J)V

    .line 236
    goto :goto_8

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    goto :goto_b

    .line 239
    .line 240
    :cond_c
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    .line 245
    :catch_0
    :goto_8
    :try_start_3
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 249
    move-result v2

    .line 250
    .line 251
    if-eqz v2, :cond_d

    .line 252
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    .line 254
    :goto_9
    const-string v0, "AppLog"

    .line 255
    .line 256
    const-string v1, "LogReaper quit"

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 261
    :cond_d
    move-object v2, v11

    .line 262
    goto :goto_a

    .line 263
    .line 264
    :cond_e
    :try_start_4
    iget-object v2, v8, Lcom/ss/android/tea/common/applog/w;->a:Ljava/util/LinkedList;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 268
    move-result-object v2

    .line 269
    .line 270
    check-cast v2, Lcom/ss/android/tea/common/applog/u;

    .line 271
    :goto_a
    monitor-exit v1

    .line 272
    move-object v1, v2

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    :goto_b
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    throw v0
.end method
