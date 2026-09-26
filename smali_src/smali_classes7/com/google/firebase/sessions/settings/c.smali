.class public final Lcom/google/firebase/sessions/settings/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/settings/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,164:1\n107#2,10:165\n*S KotlinDebug\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n*L\n68#1:165,10\n*E\n"
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/settings/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FORWARD_SLASH_STRING:Ljava/lang/String; = "/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SessionConfigFetcher"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final appInfo:Lcom/google/firebase/sessions/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundDispatcher:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configsFetcher:Lcom/google/firebase/sessions/settings/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fetchInProgress:Lkotlinx/coroutines/sync/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final firebaseInstallationsApi:Lcom/google/firebase/installations/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingsCache:Lcom/google/firebase/sessions/settings/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/settings/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/c$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/c;->Companion:Lcom/google/firebase/sessions/settings/c$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/g;Lcom/google/firebase/installations/h;Lcom/google/firebase/sessions/b;Lcom/google/firebase/sessions/settings/a;Landroidx/datastore/core/DataStore;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/installations/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/sessions/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/sessions/settings/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "Lcom/google/firebase/installations/h;",
            "Lcom/google/firebase/sessions/b;",
            "Lcom/google/firebase/sessions/settings/a;",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "backgroundDispatcher"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "firebaseInstallationsApi"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "appInfo"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "configsFetcher"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "dataStore"

    .line 23
    .line 24
    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/c;->backgroundDispatcher:Lkotlin/coroutines/g;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/c;->firebaseInstallationsApi:Lcom/google/firebase/installations/h;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/c;->appInfo:Lcom/google/firebase/sessions/b;

    .line 35
    .line 36
    iput-object p4, p0, Lcom/google/firebase/sessions/settings/c;->configsFetcher:Lcom/google/firebase/sessions/settings/a;

    .line 37
    .line 38
    new-instance p1, Lcom/google/firebase/sessions/settings/g;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p5}, Lcom/google/firebase/sessions/settings/g;-><init>(Landroidx/datastore/core/DataStore;)V

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 44
    const/4 p1, 0x1

    .line 45
    const/4 p2, 0x0

    .line 46
    const/4 p3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/c;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/c;->fetchInProgress:Lkotlinx/coroutines/sync/a;

    .line 53
    return-void
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/settings/c;)Lcom/google/firebase/sessions/settings/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 3
    return-object p0
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlin/text/g;

    .line 3
    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlin/text/g;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lkotlin/text/g;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/g;->f()Ljava/lang/Double;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 16
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    instance-of v2, v0, Lcom/google/firebase/sessions/settings/c$b;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    move-object v2, v0

    .line 10
    .line 11
    check-cast v2, Lcom/google/firebase/sessions/settings/c$b;

    .line 12
    .line 13
    iget v3, v2, Lcom/google/firebase/sessions/settings/c$b;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    sub-int/2addr v3, v4

    .line 21
    .line 22
    iput v3, v2, Lcom/google/firebase/sessions/settings/c$b;->label:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v2, Lcom/google/firebase/sessions/settings/c$b;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v1, v0}, Lcom/google/firebase/sessions/settings/c$b;-><init>(Lcom/google/firebase/sessions/settings/c;Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    :goto_0
    iget-object v0, v2, Lcom/google/firebase/sessions/settings/c$b;->result:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget v4, v2, Lcom/google/firebase/sessions/settings/c$b;->label:I

    .line 37
    .line 38
    const-string v5, "SessionConfigFetcher"

    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    if-eq v4, v8, :cond_3

    .line 47
    .line 48
    if-eq v4, v7, :cond_2

    .line 49
    .line 50
    if-ne v4, v6, :cond_1

    .line 51
    .line 52
    iget-object v2, v2, Lcom/google/firebase/sessions/settings/c$b;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lkotlinx/coroutines/sync/a;

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0

    .line 71
    .line 72
    :cond_2
    iget-object v4, v2, Lcom/google/firebase/sessions/settings/c$b;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lkotlinx/coroutines/sync/a;

    .line 75
    .line 76
    iget-object v10, v2, Lcom/google/firebase/sessions/settings/c$b;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v10, Lcom/google/firebase/sessions/settings/c;

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    move-object v2, v4

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_3
    iget-object v4, v2, Lcom/google/firebase/sessions/settings/c$b;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Lkotlinx/coroutines/sync/a;

    .line 91
    .line 92
    iget-object v10, v2, Lcom/google/firebase/sessions/settings/c$b;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v10, Lcom/google/firebase/sessions/settings/c;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/c;->fetchInProgress:Lkotlinx/coroutines/sync/a;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Lkotlinx/coroutines/sync/a;->b()Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/g;->d()Z

    .line 115
    move-result v0

    .line 116
    .line 117
    if-nez v0, :cond_5

    .line 118
    .line 119
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 120
    return-object v0

    .line 121
    .line 122
    :cond_5
    iget-object v0, v1, Lcom/google/firebase/sessions/settings/c;->fetchInProgress:Lkotlinx/coroutines/sync/a;

    .line 123
    .line 124
    iput-object v1, v2, Lcom/google/firebase/sessions/settings/c$b;->L$0:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v0, v2, Lcom/google/firebase/sessions/settings/c$b;->L$1:Ljava/lang/Object;

    .line 127
    .line 128
    iput v8, v2, Lcom/google/firebase/sessions/settings/c$b;->label:I

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v9, v2}, Lkotlinx/coroutines/sync/a;->d(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    if-ne v4, v3, :cond_6

    .line 135
    return-object v3

    .line 136
    :cond_6
    move-object v4, v0

    .line 137
    move-object v10, v1

    .line 138
    .line 139
    :goto_1
    :try_start_2
    iget-object v0, v10, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/g;->d()Z

    .line 143
    move-result v0

    .line 144
    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    const-string v0, "Remote settings cache not expired. Using cached values."

    .line 148
    .line 149
    .line 150
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    .line 154
    .line 155
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 156
    return-object v0

    .line 157
    .line 158
    :cond_7
    :try_start_3
    iget-object v0, v10, Lcom/google/firebase/sessions/settings/c;->firebaseInstallationsApi:Lcom/google/firebase/installations/h;

    .line 159
    .line 160
    .line 161
    invoke-interface {v0}, Lcom/google/firebase/installations/h;->getId()Lcom/google/android/gms/tasks/Task;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    const-string v11, "firebaseInstallationsApi.id"

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v11}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    iput-object v10, v2, Lcom/google/firebase/sessions/settings/c$b;->L$0:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v4, v2, Lcom/google/firebase/sessions/settings/c$b;->L$1:Ljava/lang/Object;

    .line 172
    .line 173
    iput v7, v2, Lcom/google/firebase/sessions/settings/c$b;->label:I

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v2}, Lkotlinx/coroutines/tasks/b;->a(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    if-ne v0, v3, :cond_8

    .line 180
    return-object v3

    .line 181
    .line 182
    :cond_8
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    if-nez v0, :cond_9

    .line 185
    .line 186
    const-string v0, "Error getting Firebase Installation ID. Skipping this Session Event."

    .line 187
    .line 188
    .line 189
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    .line 193
    .line 194
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 195
    return-object v0

    .line 196
    :cond_9
    const/4 v11, 0x5

    .line 197
    .line 198
    :try_start_4
    new-array v11, v11, [Lw7/u;

    .line 199
    .line 200
    const-string v12, "X-Crashlytics-Installation-ID"

    .line 201
    .line 202
    .line 203
    invoke-static {v12, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 204
    move-result-object v0

    .line 205
    const/4 v12, 0x0

    .line 206
    .line 207
    aput-object v0, v11, v12

    .line 208
    .line 209
    const-string v0, "X-Crashlytics-Device-Model"

    .line 210
    .line 211
    sget-object v13, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 212
    .line 213
    const-string v13, "%s/%s"

    .line 214
    .line 215
    new-array v14, v7, [Ljava/lang/Object;

    .line 216
    .line 217
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 218
    .line 219
    aput-object v15, v14, v12

    .line 220
    .line 221
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 222
    .line 223
    aput-object v12, v14, v8

    .line 224
    .line 225
    .line 226
    invoke-static {v14, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 227
    move-result-object v12

    .line 228
    .line 229
    .line 230
    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    move-result-object v12

    .line 232
    .line 233
    const-string v13, "format(format, *args)"

    .line 234
    .line 235
    .line 236
    invoke-static {v12, v13}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {v10, v12}, Lcom/google/firebase/sessions/settings/c;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v12

    .line 241
    .line 242
    .line 243
    invoke-static {v0, v12}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    aput-object v0, v11, v8

    .line 247
    .line 248
    const-string v0, "X-Crashlytics-OS-Build-Version"

    .line 249
    .line 250
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 251
    .line 252
    const-string v12, "INCREMENTAL"

    .line 253
    .line 254
    .line 255
    invoke-static {v8, v12}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v10, v8}, Lcom/google/firebase/sessions/settings/c;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-result-object v8

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v8}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 263
    move-result-object v0

    .line 264
    .line 265
    aput-object v0, v11, v7

    .line 266
    .line 267
    const-string v0, "X-Crashlytics-OS-Display-Version"

    .line 268
    .line 269
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 270
    .line 271
    const-string v8, "RELEASE"

    .line 272
    .line 273
    .line 274
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-direct {v10, v7}, Lcom/google/firebase/sessions/settings/c;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object v7

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v7}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    aput-object v0, v11, v6

    .line 285
    .line 286
    const-string v0, "X-Crashlytics-API-Client-Version"

    .line 287
    .line 288
    iget-object v7, v10, Lcom/google/firebase/sessions/settings/c;->appInfo:Lcom/google/firebase/sessions/b;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v7}, Lcom/google/firebase/sessions/b;->f()Ljava/lang/String;

    .line 292
    move-result-object v7

    .line 293
    .line 294
    .line 295
    invoke-static {v0, v7}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 296
    move-result-object v0

    .line 297
    const/4 v7, 0x4

    .line 298
    .line 299
    aput-object v0, v11, v7

    .line 300
    .line 301
    .line 302
    invoke-static {v11}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 303
    move-result-object v0

    .line 304
    .line 305
    const-string v7, "Fetching settings from server."

    .line 306
    .line 307
    .line 308
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    iget-object v5, v10, Lcom/google/firebase/sessions/settings/c;->configsFetcher:Lcom/google/firebase/sessions/settings/a;

    .line 311
    .line 312
    new-instance v7, Lcom/google/firebase/sessions/settings/c$c;

    .line 313
    .line 314
    .line 315
    invoke-direct {v7, v10, v9}, Lcom/google/firebase/sessions/settings/c$c;-><init>(Lcom/google/firebase/sessions/settings/c;Lkotlin/coroutines/d;)V

    .line 316
    .line 317
    new-instance v8, Lcom/google/firebase/sessions/settings/c$d;

    .line 318
    .line 319
    .line 320
    invoke-direct {v8, v9}, Lcom/google/firebase/sessions/settings/c$d;-><init>(Lkotlin/coroutines/d;)V

    .line 321
    .line 322
    iput-object v4, v2, Lcom/google/firebase/sessions/settings/c$b;->L$0:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v9, v2, Lcom/google/firebase/sessions/settings/c$b;->L$1:Ljava/lang/Object;

    .line 325
    .line 326
    iput v6, v2, Lcom/google/firebase/sessions/settings/c$b;->label:I

    .line 327
    .line 328
    .line 329
    invoke-interface {v5, v0, v7, v8, v2}, Lcom/google/firebase/sessions/settings/a;->a(Ljava/util/Map;Le8/p;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 330
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 331
    .line 332
    if-ne v0, v3, :cond_a

    .line 333
    return-object v3

    .line 334
    :cond_a
    move-object v2, v4

    .line 335
    .line 336
    :goto_3
    :try_start_5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    .line 338
    .line 339
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 340
    .line 341
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 342
    return-object v0

    .line 343
    .line 344
    .line 345
    :goto_4
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 346
    throw v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/g;->g()Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lk8/b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/settings/c;->settingsCache:Lcom/google/firebase/sessions/settings/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/g;->e()Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v1, Lk8/b;->Companion:Lk8/b$a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    sget-object v1, Lk8/e;->SECONDS:Lk8/e;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lk8/d;->s(ILk8/e;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lk8/b;->f(J)Lk8/b;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0
.end method
