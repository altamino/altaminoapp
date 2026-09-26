.class public final Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;,
        Landroidx/profileinstaller/ProfileVerifier$Cache;,
        Landroidx/profileinstaller/ProfileVerifier$Api33Impl;
    }
.end annotation


# static fields
.field private static final CUR_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/cur/0/"

.field private static final PROFILE_FILE_NAME:Ljava/lang/String; = "primary.prof"

.field private static final PROFILE_INSTALLED_CACHE_FILE_NAME:Ljava/lang/String; = "profileInstalled"

.field private static final REF_PROFILES_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/ref/"

.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ProfileVerifier"

.field private static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->u()Landroidx/concurrent/futures/ResolvableFuture;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 17
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

.method private static a(Landroid/content/Context;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x21

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileVerifier$Api33Impl;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 21
    return-wide v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 33
    return-wide v0
.end method

.method private static b(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>(IZZ)V

    .line 6
    .line 7
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 8
    .line 9
    sget-object p0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/ResolvableFuture;->q(Ljava/lang/Object;)Z

    .line 13
    .line 14
    sget-object p0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 15
    return-object p0
.end method

.method static c(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;
    .locals 18
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :try_start_0
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    monitor-exit v1

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v2, 0x1c

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    if-lt v0, v2, :cond_e

    .line 29
    .line 30
    const/16 v2, 0x1e

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 37
    .line 38
    new-instance v2, Ljava/io/File;

    .line 39
    .line 40
    const-string v4, "/data/misc/profiles/ref/"

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v4, "primary.prof"

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 57
    move-result-wide v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    const-wide/16 v6, 0x0

    .line 64
    const/4 v2, 0x1

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    cmp-long v0, v4, v6

    .line 69
    .line 70
    if-lez v0, :cond_3

    .line 71
    move v0, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move v0, v3

    .line 74
    .line 75
    :goto_0
    new-instance v8, Ljava/io/File;

    .line 76
    .line 77
    new-instance v9, Ljava/io/File;

    .line 78
    .line 79
    const-string v10, "/data/misc/profiles/cur/0/"

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    move-result-object v11

    .line 84
    .line 85
    .line 86
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v10, "primary.prof"

    .line 90
    .line 91
    .line 92
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 96
    move-result-wide v16

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 100
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    if-eqz v8, :cond_4

    .line 103
    .line 104
    cmp-long v6, v16, v6

    .line 105
    .line 106
    if-lez v6, :cond_4

    .line 107
    move v6, v2

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    move v6, v3

    .line 110
    .line 111
    .line 112
    :goto_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/profileinstaller/ProfileVerifier;->a(Landroid/content/Context;)J

    .line 113
    move-result-wide v14
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    :try_start_2
    new-instance v7, Ljava/io/File;

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 119
    move-result-object v8

    .line 120
    .line 121
    .line 122
    const-string/jumbo v9, "profileInstalled"

    .line 123
    .line 124
    .line 125
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 129
    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    if-eqz v8, :cond_5

    .line 132
    .line 133
    .line 134
    :try_start_3
    invoke-static {v7}, Landroidx/profileinstaller/ProfileVerifier$Cache;->a(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 135
    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :catch_0
    const/high16 v2, 0x20000

    .line 139
    .line 140
    .line 141
    :try_start_4
    invoke-static {v2, v0, v6}, Landroidx/profileinstaller/ProfileVerifier;->b(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 142
    move-result-object v0

    .line 143
    monitor-exit v1

    .line 144
    return-object v0

    .line 145
    :cond_5
    const/4 v8, 0x0

    .line 146
    :goto_2
    const/4 v9, 0x2

    .line 147
    .line 148
    if-eqz v8, :cond_7

    .line 149
    .line 150
    iget-wide v10, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 151
    .line 152
    cmp-long v10, v10, v14

    .line 153
    .line 154
    if-nez v10, :cond_7

    .line 155
    .line 156
    iget v10, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 157
    .line 158
    if-ne v10, v9, :cond_6

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    move v3, v10

    .line 161
    goto :goto_4

    .line 162
    .line 163
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 164
    move v3, v2

    .line 165
    goto :goto_4

    .line 166
    .line 167
    :cond_8
    if-eqz v6, :cond_9

    .line 168
    move v3, v9

    .line 169
    .line 170
    :cond_9
    :goto_4
    if-eqz p1, :cond_a

    .line 171
    .line 172
    if-eqz v6, :cond_a

    .line 173
    .line 174
    if-eq v3, v2, :cond_a

    .line 175
    move v3, v9

    .line 176
    .line 177
    :cond_a
    if-eqz v8, :cond_b

    .line 178
    .line 179
    iget v10, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 180
    .line 181
    if-ne v10, v9, :cond_b

    .line 182
    .line 183
    if-ne v3, v2, :cond_b

    .line 184
    .line 185
    iget-wide v9, v8, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 186
    .line 187
    cmp-long v2, v4, v9

    .line 188
    .line 189
    if-gez v2, :cond_b

    .line 190
    const/4 v3, 0x3

    .line 191
    .line 192
    :cond_b
    new-instance v2, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 193
    const/4 v12, 0x1

    .line 194
    move-object v11, v2

    .line 195
    move v13, v3

    .line 196
    .line 197
    .line 198
    invoke-direct/range {v11 .. v17}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    .line 199
    .line 200
    if-eqz v8, :cond_c

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v2}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    if-nez v4, :cond_d

    .line 207
    .line 208
    .line 209
    :cond_c
    :try_start_5
    invoke-virtual {v2, v7}, Landroidx/profileinstaller/ProfileVerifier$Cache;->b(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    goto :goto_5

    .line 211
    .line 212
    :catch_1
    const/high16 v3, 0x30000

    .line 213
    .line 214
    .line 215
    :cond_d
    :goto_5
    :try_start_6
    invoke-static {v3, v0, v6}, Landroidx/profileinstaller/ProfileVerifier;->b(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 216
    move-result-object v0

    .line 217
    monitor-exit v1

    .line 218
    return-object v0

    .line 219
    .line 220
    :catch_2
    const/high16 v2, 0x10000

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v0, v6}, Landroidx/profileinstaller/ProfileVerifier;->b(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 224
    move-result-object v0

    .line 225
    monitor-exit v1

    .line 226
    return-object v0

    .line 227
    .line 228
    :cond_e
    :goto_6
    const/high16 v0, 0x40000

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v3, v3}, Landroidx/profileinstaller/ProfileVerifier;->b(IZZ)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 232
    move-result-object v0

    .line 233
    monitor-exit v1

    .line 234
    return-object v0

    .line 235
    :goto_7
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 236
    throw v0
.end method
