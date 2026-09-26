.class public Lcom/narvii/community/CommunityService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/CommunityService$UpdateStub;
    }
.end annotation


# static fields
.field public static final ACTION_COMMUNITY_CHANGED:Ljava/lang/String; = "com.narvii.action.COMMUNITY_CHANGED"


# instance fields
.field private final cache:Lcom/narvii/util/WeakLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/WeakLruCache<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private dir:Ljava/io/File;

.field private final executeUpdate:Ljava/lang/Runnable;

.field private ignoreContents:Z

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final liteCommunityCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private final scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final timestampCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final updates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/CommunityService$UpdateStub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "x"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/community/CommunityService$2;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/community/CommunityService$2;-><init>(Lcom/narvii/community/CommunityService;)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/narvii/community/CommunityService;->executeUpdate:Ljava/lang/Runnable;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/community/CommunityService;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/narvii/community/CommunityService;->ignoreContents:Z

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 27
    .line 28
    new-instance p2, Ljava/io/File;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "community"

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 44
    .line 45
    new-instance p2, Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    .line 51
    .line 52
    new-instance p2, Lcom/narvii/util/WeakLruCache;

    .line 53
    const/4 v1, 0x3

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v1}, Lcom/narvii/util/WeakLruCache;-><init>(I)V

    .line 57
    .line 58
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 59
    .line 60
    new-instance p2, Landroid/util/SparseArray;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->liteCommunityCache:Landroid/util/SparseArray;

    .line 66
    .line 67
    new-instance p2, Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .line 72
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->timestampCache:Ljava/util/HashMap;

    .line 73
    .line 74
    new-instance p2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 75
    const/4 v1, 0x1

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 79
    .line 80
    iput-object p2, p0, Lcom/narvii/community/CommunityService;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 81
    .line 82
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 86
    move-result p2

    .line 87
    .line 88
    if-nez p2, :cond_4

    .line 89
    .line 90
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 94
    .line 95
    iget-object p2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 99
    const/4 p2, 0x0

    .line 100
    .line 101
    .line 102
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 103
    move-result-object p1

    .line 104
    const/4 v3, 0x0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 108
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    .line 110
    .line 111
    :try_start_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 116
    move-result v3

    .line 117
    .line 118
    const/16 v4, 0x78

    .line 119
    .line 120
    if-ge v3, v4, :cond_3

    .line 121
    .line 122
    const-string v3, "x(\\d+)"

    .line 123
    .line 124
    .line 125
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    new-instance v4, Ljava/util/HashSet;

    .line 129
    .line 130
    .line 131
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result v5

    .line 144
    .line 145
    if-eqz v5, :cond_1

    .line 146
    .line 147
    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    check-cast v5, Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 155
    move-result-object v5

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 159
    move-result v6

    .line 160
    .line 161
    if-eqz v6, :cond_0

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    move-result v5

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v5

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    goto :goto_0

    .line 178
    :catchall_0
    move-exception p2

    .line 179
    goto :goto_2

    .line 180
    .line 181
    .line 182
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v2

    .line 188
    .line 189
    if-eqz v2, :cond_3

    .line 190
    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    check-cast v2, Ljava/lang/Integer;

    .line 196
    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v3

    .line 211
    .line 212
    .line 213
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    if-eqz v3, :cond_2

    .line 217
    .line 218
    new-instance v4, Lcom/narvii/community/CommunityService$UpdateStub;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 222
    move-result v5

    .line 223
    .line 224
    .line 225
    invoke-direct {v4, v5}, Lcom/narvii/community/CommunityService$UpdateStub;-><init>(I)V

    .line 226
    .line 227
    iput-object v3, v4, Lcom/narvii/community/CommunityService$UpdateStub;->communityStr:Ljava/lang/String;

    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v2, "_t"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    const-wide/16 v5, 0x0

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 253
    move-result-wide v2

    .line 254
    .line 255
    iput-wide v2, v4, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 256
    .line 257
    iget-object v2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v2}, Lcom/narvii/community/CommunityService$UpdateStub;->save(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    goto :goto_1

    .line 262
    :catchall_1
    move-exception p1

    .line 263
    move-object v7, p2

    .line 264
    move-object p2, p1

    .line 265
    move-object p1, v7

    .line 266
    .line 267
    :goto_2
    const-string v0, "fail to upgrade community"

    .line 268
    .line 269
    .line 270
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    :cond_3
    if-eqz p1, :cond_4

    .line 273
    .line 274
    .line 275
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 276
    move-result-object p1

    .line 277
    .line 278
    .line 279
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    .line 283
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    :cond_4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/CommunityService;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/community/CommunityService;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    return-object p0
.end method

.method private getCommunity(IZ)Lcom/narvii/model/Community;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/narvii/community/CommunityService;->safeGetUpdate(Ljava/lang/Integer;)Lcom/narvii/community/CommunityService$UpdateStub;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, v1, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    if-eqz v2, :cond_1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 4
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, v1, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 6
    invoke-virtual {v1, v0}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    if-eqz v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".c"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    :try_start_0
    sget-object p1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/Community;

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_0
    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method private safeGetUpdate(Ljava/lang/Integer;)Lcom/narvii/community/CommunityService$UpdateStub;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/community/CommunityService$UpdateStub;

    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method


# virtual methods
.method public batchUpdateCommunity(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/community/CommunityService$3;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/community/CommunityService$3;-><init>(Lcom/narvii/community/CommunityService;Ljava/util/List;J)V

    .line 14
    .line 15
    const-wide/16 p1, 0x2

    .line 16
    .line 17
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 21
    :cond_0
    return-void
.end method

.method doBatchUpdate(Ljava/util/List;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v4

    .line 15
    .line 16
    if-eqz v4, :cond_8

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    check-cast v4, Lcom/narvii/model/Community;

    .line 23
    .line 24
    iget v5, v4, Lcom/narvii/model/Community;->id:I

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v5}, Lcom/narvii/community/CommunityService;->getCommunityTimestamp(I)J

    .line 30
    move-result-wide v5

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p3, v5, v6}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    new-instance v5, Lcom/narvii/community/CommunityService$UpdateStub;

    .line 40
    .line 41
    iget v6, v4, Lcom/narvii/model/Community;->id:I

    .line 42
    .line 43
    .line 44
    invoke-direct {v5, v6}, Lcom/narvii/community/CommunityService$UpdateStub;-><init>(I)V

    .line 45
    .line 46
    iput-wide p2, v5, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 47
    .line 48
    iget v6, v4, Lcom/narvii/model/Community;->id:I

    .line 49
    const/4 v7, 0x1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v6, v7}, Lcom/narvii/community/CommunityService;->getCommunity(IZ)Lcom/narvii/model/Community;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 57
    move-result-object v8

    .line 58
    .line 59
    check-cast v8, Lcom/narvii/model/Community;

    .line 60
    const/4 v9, 0x0

    .line 61
    .line 62
    iput-object v9, v8, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    .line 63
    .line 64
    iget-object v10, v8, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 65
    .line 66
    if-eqz v10, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 70
    move-result v10

    .line 71
    .line 72
    if-nez v10, :cond_4

    .line 73
    .line 74
    :cond_2
    if-nez v6, :cond_3

    .line 75
    move-object v10, v9

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_3
    iget-object v10, v6, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 79
    .line 80
    :goto_1
    iput-object v10, v8, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 81
    .line 82
    :cond_4
    if-eqz v6, :cond_5

    .line 83
    .line 84
    iget-object v10, v6, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    .line 85
    .line 86
    iput-object v10, v8, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    .line 87
    .line 88
    iget-object v10, v6, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    .line 89
    .line 90
    iput-object v10, v8, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    .line 91
    .line 92
    iget-object v10, v6, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 93
    .line 94
    iput-object v10, v8, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    .line 95
    .line 96
    :cond_5
    iput-object v9, v8, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 97
    .line 98
    iput-object v9, v8, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v9, v8, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v9, v8, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 103
    const/4 v10, 0x0

    .line 104
    .line 105
    iput v10, v8, Lcom/narvii/model/Community;->communityHeat:F

    .line 106
    .line 107
    iput-boolean v2, v8, Lcom/narvii/model/Community;->searchable:Z

    .line 108
    .line 109
    if-eqz v6, :cond_6

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v8}, Lcom/narvii/model/Community;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v6

    .line 114
    .line 115
    if-eqz v6, :cond_6

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    move v7, v2

    .line 118
    .line 119
    :goto_2
    if-nez v7, :cond_7

    .line 120
    .line 121
    iput-object v8, v5, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    .line 122
    .line 123
    .line 124
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object v9

    .line 126
    .line 127
    iput-object v9, v5, Lcom/narvii/community/CommunityService$UpdateStub;->communityStr:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v6, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 130
    .line 131
    iget v8, v4, Lcom/narvii/model/Community;->id:I

    .line 132
    .line 133
    .line 134
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v8

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v8}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    :cond_7
    iget-object v6, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v6}, Lcom/narvii/community/CommunityService$UpdateStub;->save(Ljava/io/File;)V

    .line 144
    .line 145
    if-nez v7, :cond_0

    .line 146
    .line 147
    new-instance v5, Landroid/content/Intent;

    .line 148
    .line 149
    const-string v6, "com.narvii.action.COMMUNITY_CHANGED"

    .line 150
    .line 151
    .line 152
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    const-string v6, "id"

    .line 155
    .line 156
    iget v4, v4, Lcom/narvii/model/Community;->id:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    .line 161
    const-string v4, "community"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    iget-object v4, p0, Lcom/narvii/community/CommunityService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_8
    if-nez v3, :cond_9

    .line 176
    .line 177
    const-string p1, "batch update, no community changed"

    .line 178
    .line 179
    .line 180
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 181
    goto :goto_3

    .line 182
    .line 183
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string p2, "batch update "

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string p2, " changed community in "

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 203
    move-result-wide p2

    .line 204
    sub-long/2addr p2, v0

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string p2, "ms"

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 220
    :goto_3
    return-void
.end method

.method public fetchLiteCommunity(ILcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-gtz p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "community/min-info"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/community/CommunityService;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v1, "api"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/community/CommunityService$1;

    .line 37
    .line 38
    const-class v2, Lcom/narvii/model/api/CommunityResponse;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/community/CommunityService$1;-><init>(Lcom/narvii/community/CommunityService;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 45
    return-void
.end method

.method public getCommunity(I)Lcom/narvii/model/Community;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(IZ)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getCommunityTimestamp(I)J
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/community/CommunityService;->safeGetUpdate(Ljava/lang/Integer;)Lcom/narvii/community/CommunityService$UpdateStub;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-wide v0, v1, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/narvii/community/CommunityService;->timestampCache:Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Long;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    .line 30
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/community/CommunityService;->dir:Ljava/io/File;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v4, "x"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string p1, ".t"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 61
    move-result-wide v2

    .line 62
    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    cmp-long p1, v2, v4

    .line 66
    .line 67
    if-lez p1, :cond_2

    .line 68
    .line 69
    .line 70
    :try_start_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    move-result-wide v2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/community/CommunityService;->timestampCache:Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :catch_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 89
    :cond_2
    :goto_0
    return-wide v4
.end method

.method public getLiteCommunity(I)Lcom/narvii/model/Community;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->liteCommunityCache:Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/Community;

    .line 16
    return-object p1
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZ)V

    return-void
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZJZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    return-void
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZJZZ)V
    .locals 3

    .line 2
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p0, v0}, Lcom/narvii/community/CommunityService;->getCommunityTimestamp(I)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Lcom/narvii/util/Utils;->shouldUpdateTimestamp(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityService$UpdateStub;

    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-direct {v0, v1}, Lcom/narvii/community/CommunityService$UpdateStub;-><init>(I)V

    .line 4
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    iput-wide p3, v0, Lcom/narvii/community/CommunityService$UpdateStub;->timestamp:J

    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Community;

    const/4 p4, 0x0

    .line 6
    iput-object p4, p3, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    if-nez p2, :cond_3

    .line 7
    iget-object v2, p3, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-nez v1, :cond_2

    move-object v2, p4

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    iput-object v2, p3, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_3
    if-nez p2, :cond_6

    if-nez v1, :cond_4

    move-object v2, p4

    goto :goto_1

    .line 9
    :cond_4
    iget-object v2, v1, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    :goto_1
    iput-object v2, p3, Lcom/narvii/model/Community;->agent:Lcom/narvii/model/User;

    if-nez v1, :cond_5

    move-object v2, p4

    goto :goto_2

    .line 10
    :cond_5
    iget-object v2, v1, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    :goto_2
    iput-object v2, p3, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    :cond_6
    if-nez p5, :cond_8

    if-nez v1, :cond_7

    move-object p5, p4

    goto :goto_3

    .line 11
    :cond_7
    iget-object p5, v1, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    :goto_3
    iput-object p5, p3, Lcom/narvii/model/Community;->influencerList:Ljava/util/List;

    :cond_8
    if-nez p6, :cond_a

    .line 12
    iget-object p5, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    if-nez p5, :cond_a

    if-nez v1, :cond_9

    move-object p5, p4

    goto :goto_4

    .line 13
    :cond_9
    iget-object p5, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    :goto_4
    iput-object p5, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    :cond_a
    if-eqz v1, :cond_c

    .line 14
    iget-object p5, p3, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    if-nez p5, :cond_b

    .line 15
    iget-object p5, v1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    iput-object p5, p3, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 16
    :cond_b
    iget p5, p3, Lcom/narvii/model/Community;->membersCount:I

    if-nez p5, :cond_c

    .line 17
    iget p5, v1, Lcom/narvii/model/Community;->membersCount:I

    iput p5, p3, Lcom/narvii/model/Community;->membersCount:I

    :cond_c
    iget-boolean p5, p0, Lcom/narvii/community/CommunityService;->ignoreContents:Z

    if-eqz p5, :cond_d

    .line 18
    iput-object p4, p3, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 19
    iput-object p4, p3, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    const/4 p2, 0x0

    .line 20
    iput p2, p3, Lcom/narvii/model/Community;->communityHeat:F

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    if-eqz v1, :cond_e

    .line 21
    iget-object p2, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    iput-object p2, p3, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 22
    iget-object p2, v1, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    iput-object p2, p3, Lcom/narvii/model/Community;->content:Ljava/lang/String;

    .line 23
    iget-object p2, v1, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    iput-object p2, p3, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    .line 24
    iget-object p2, v1, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    iput-object p2, p3, Lcom/narvii/model/Community;->mediaList:Ljava/util/List;

    .line 25
    iget p2, v1, Lcom/narvii/model/Community;->membersCount:I

    iput p2, p3, Lcom/narvii/model/Community;->membersCount:I

    .line 26
    iget p2, v1, Lcom/narvii/model/Community;->communityHeat:F

    iput p2, p3, Lcom/narvii/model/Community;->communityHeat:F

    .line 27
    iget-boolean p2, v1, Lcom/narvii/model/Community;->searchable:Z

    iput-boolean p2, p3, Lcom/narvii/model/Community;->searchable:Z

    .line 28
    :cond_e
    :goto_5
    iget p2, p1, Lcom/narvii/model/Community;->id:I

    if-nez p2, :cond_f

    .line 29
    iget-object p2, p1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, p3, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    :cond_f
    invoke-virtual {p3, v1}, Lcom/narvii/model/Community;->checkEqual(Ljava/lang/Object;)I

    move-result p2

    const/4 p4, 0x2

    const/4 p5, 0x0

    if-eq p2, p4, :cond_10

    const/4 p2, 0x1

    goto :goto_6

    :cond_10
    move p2, p5

    :goto_6
    iput-object p3, v0, Lcom/narvii/community/CommunityService$UpdateStub;->community:Lcom/narvii/model/Community;

    .line 31
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/narvii/community/CommunityService$UpdateStub;->communityStr:Ljava/lang/String;

    iget-object p4, p0, Lcom/narvii/community/CommunityService;->cache:Lcom/narvii/util/WeakLruCache;

    .line 32
    iget p6, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/narvii/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    .line 33
    monitor-enter p4

    :try_start_0
    iget-object p6, p0, Lcom/narvii/community/CommunityService;->updates:Ljava/util/HashMap;

    .line 34
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p6, p0, Lcom/narvii/community/CommunityService;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p6, :cond_11

    .line 35
    invoke-interface {p6, p5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_11
    :goto_7
    iget-object p5, p0, Lcom/narvii/community/CommunityService;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object p6, p0, Lcom/narvii/community/CommunityService;->executeUpdate:Ljava/lang/Runnable;

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {p5, p6, v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p5

    iput-object p5, p0, Lcom/narvii/community/CommunityService;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_12

    .line 38
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_13

    .line 39
    :cond_12
    new-instance p2, Landroid/content/Intent;

    const-string p4, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "id"

    .line 40
    iget p5, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "community"

    .line 41
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/narvii/community/CommunityService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 42
    invoke-virtual {p3, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " community info changed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :cond_13
    return-void

    .line 44
    :goto_8
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V
    .locals 2

    .line 45
    invoke-static {p3}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    return-void
.end method

.method public updateLiteCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityService;->liteCommunityCache:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    return-void
.end method
