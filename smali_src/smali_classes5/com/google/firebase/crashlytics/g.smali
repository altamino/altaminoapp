.class public Lcom/google/firebase/crashlytics/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final APP_EXCEPTION_CALLBACK_TIMEOUT_MS:I = 0x1f4

.field static final FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN:Ljava/lang/String; = "clx"

.field static final LEGACY_CRASH_ANALYTICS_ORIGIN:Ljava/lang/String; = "crash"


# instance fields
.field final core:Lcom/google/firebase/crashlytics/internal/common/r;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/r;)V
    .locals 0
    .param p1    # Lcom/google/firebase/crashlytics/internal/common/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/g;->core:Lcom/google/firebase/crashlytics/internal/common/r;

    .line 6
    return-void
.end method

.method public static a()Lcom/google/firebase/crashlytics/g;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-class v1, Lcom/google/firebase/crashlytics/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/google/firebase/crashlytics/g;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string v1, "FirebaseCrashlytics component is not present."

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method static b(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/a;Lo4/a;Lo4/a;)Lcom/google/firebase/crashlytics/g;
    .locals 18
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/installations/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lo4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lo4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lo4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/installations/h;",
            "Lo4/a<",
            "Lcom/google/firebase/crashlytics/internal/a;",
            ">;",
            "Lo4/a<",
            "Lcom/google/firebase/analytics/connector/a;",
            ">;",
            "Lo4/a<",
            "Ld5/a;",
            ">;)",
            "Lcom/google/firebase/crashlytics/g;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v4, "Initializing Firebase Crashlytics "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/r;->i()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, " for "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/g;->g(Ljava/lang/String;)V

    .line 45
    .line 46
    new-instance v15, Le4/f;

    .line 47
    .line 48
    .line 49
    invoke-direct {v15, v0}, Le4/f;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/x;

    .line 52
    .line 53
    move-object/from16 v2, p0

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/x;-><init>(Lcom/google/firebase/f;)V

    .line 57
    .line 58
    new-instance v14, Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 59
    .line 60
    move-object/from16 v4, p1

    .line 61
    .line 62
    .line 63
    invoke-direct {v14, v0, v1, v4, v3}, Lcom/google/firebase/crashlytics/internal/common/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/installations/h;Lcom/google/firebase/crashlytics/internal/common/x;)V

    .line 64
    .line 65
    new-instance v7, Lcom/google/firebase/crashlytics/internal/d;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    .line 70
    invoke-direct {v7, v1}, Lcom/google/firebase/crashlytics/internal/d;-><init>(Lo4/a;)V

    .line 71
    .line 72
    new-instance v1, Lcom/google/firebase/crashlytics/d;

    .line 73
    .line 74
    move-object/from16 v4, p3

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v4}, Lcom/google/firebase/crashlytics/d;-><init>(Lo4/a;)V

    .line 78
    .line 79
    const-string v4, "Crashlytics Exception Handler"

    .line 80
    .line 81
    .line 82
    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/common/z;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 83
    move-result-object v12

    .line 84
    .line 85
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/m;

    .line 86
    .line 87
    .line 88
    invoke-direct {v13, v3, v15}, Lcom/google/firebase/crashlytics/internal/common/m;-><init>(Lcom/google/firebase/crashlytics/internal/common/x;Le4/f;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v13}, Lcom/google/firebase/sessions/api/a;->e(Lcom/google/firebase/sessions/api/b;)V

    .line 92
    .line 93
    new-instance v11, Lcom/google/firebase/crashlytics/internal/l;

    .line 94
    .line 95
    move-object/from16 v4, p4

    .line 96
    .line 97
    .line 98
    invoke-direct {v11, v4}, Lcom/google/firebase/crashlytics/internal/l;-><init>(Lo4/a;)V

    .line 99
    .line 100
    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/r;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d;->e()Lb4/b;

    .line 104
    move-result-object v9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d;->d()Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 108
    move-result-object v1

    .line 109
    move-object v4, v10

    .line 110
    .line 111
    move-object/from16 v5, p0

    .line 112
    move-object v6, v14

    .line 113
    move-object v8, v3

    .line 114
    .line 115
    move-object/from16 v16, v10

    .line 116
    move-object v10, v1

    .line 117
    move-object v1, v11

    .line 118
    move-object v11, v15

    .line 119
    .line 120
    move-object/from16 v17, v14

    .line 121
    move-object v14, v1

    .line 122
    .line 123
    .line 124
    invoke-direct/range {v4 .. v14}, Lcom/google/firebase/crashlytics/internal/common/r;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/internal/a;Lcom/google/firebase/crashlytics/internal/common/x;Lb4/b;Lcom/google/firebase/crashlytics/internal/analytics/a;Le4/f;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crashlytics/internal/common/m;Lcom/google/firebase/crashlytics/internal/l;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/google/firebase/n;->c()Ljava/lang/String;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->j(Landroid/content/Context;)Ljava/util/List;

    .line 140
    move-result-object v5

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    const-string v6, "Mapping file ID is: "

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v2

    .line 173
    .line 174
    if-eqz v2, :cond_0

    .line 175
    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    check-cast v2, Lcom/google/firebase/crashlytics/internal/common/f;

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 184
    move-result-object v6

    .line 185
    const/4 v8, 0x3

    .line 186
    .line 187
    new-array v8, v8, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->c()Ljava/lang/String;

    .line 191
    move-result-object v9

    .line 192
    const/4 v10, 0x0

    .line 193
    .line 194
    aput-object v9, v8, v10

    .line 195
    const/4 v9, 0x1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->a()Ljava/lang/String;

    .line 199
    move-result-object v10

    .line 200
    .line 201
    aput-object v10, v8, v9

    .line 202
    const/4 v9, 0x2

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->b()Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    aput-object v2, v8, v9

    .line 209
    .line 210
    const-string v2, "Build id for %s on %s: %s"

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v2}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 218
    goto :goto_0

    .line 219
    .line 220
    :cond_0
    new-instance v6, Lcom/google/firebase/crashlytics/internal/f;

    .line 221
    .line 222
    .line 223
    invoke-direct {v6, v0}, Lcom/google/firebase/crashlytics/internal/f;-><init>(Landroid/content/Context;)V

    .line 224
    move-object v1, v0

    .line 225
    .line 226
    move-object/from16 v2, v17

    .line 227
    move-object v8, v3

    .line 228
    move-object v3, v7

    .line 229
    .line 230
    .line 231
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/a;->a(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/b0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/f;)Lcom/google/firebase/crashlytics/internal/common/a;

    .line 232
    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    const-string v3, "Installer package name is: "

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    iget-object v3, v9, Lcom/google/firebase/crashlytics/internal/common/a;->installerPackageName:Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 259
    .line 260
    const-string v1, "com.google.firebase.crashlytics.startup"

    .line 261
    .line 262
    .line 263
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/z;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 264
    move-result-object v10

    .line 265
    .line 266
    new-instance v4, Ld4/b;

    .line 267
    .line 268
    .line 269
    invoke-direct {v4}, Ld4/b;-><init>()V

    .line 270
    .line 271
    iget-object v5, v9, Lcom/google/firebase/crashlytics/internal/common/a;->versionCode:Ljava/lang/String;

    .line 272
    .line 273
    iget-object v6, v9, Lcom/google/firebase/crashlytics/internal/common/a;->versionName:Ljava/lang/String;

    .line 274
    move-object v1, v0

    .line 275
    move-object v2, v7

    .line 276
    .line 277
    move-object/from16 v3, v17

    .line 278
    move-object v7, v15

    .line 279
    .line 280
    .line 281
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/f;->l(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/b0;Ld4/b;Ljava/lang/String;Ljava/lang/String;Le4/f;Lcom/google/firebase/crashlytics/internal/common/x;)Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v10}, Lcom/google/firebase/crashlytics/internal/settings/f;->p(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    new-instance v2, Lcom/google/firebase/crashlytics/g$a;

    .line 289
    .line 290
    .line 291
    invoke-direct {v2}, Lcom/google/firebase/crashlytics/g$a;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 295
    .line 296
    move-object/from16 v1, v16

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v9, v0}, Lcom/google/firebase/crashlytics/internal/common/r;->o(Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/settings/i;)Z

    .line 300
    move-result v2

    .line 301
    .line 302
    new-instance v3, Lcom/google/firebase/crashlytics/g$b;

    .line 303
    .line 304
    .line 305
    invoke-direct {v3, v2, v1, v0}, Lcom/google/firebase/crashlytics/g$b;-><init>(ZLcom/google/firebase/crashlytics/internal/common/r;Lcom/google/firebase/crashlytics/internal/settings/f;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v10, v3}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 309
    .line 310
    new-instance v0, Lcom/google/firebase/crashlytics/g;

    .line 311
    .line 312
    .line 313
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/g;-><init>(Lcom/google/firebase/crashlytics/internal/common/r;)V

    .line 314
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    move-object v1, v0

    .line 317
    .line 318
    .line 319
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 320
    move-result-object v0

    .line 321
    .line 322
    const-string v2, "Error retrieving app package info."

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    const/4 v0, 0x0

    .line 327
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "A null value was passed to recordException. Ignoring."

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/g;->core:Lcom/google/firebase/crashlytics/internal/common/r;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/r;->l(Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/g;->core:Lcom/google/firebase/crashlytics/internal/common/r;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/r;->p(Ljava/lang/String;)V

    .line 6
    return-void
.end method
