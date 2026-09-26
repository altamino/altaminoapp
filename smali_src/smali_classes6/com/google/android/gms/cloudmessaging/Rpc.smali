.class public Lcom/google/android/gms/cloudmessaging/Rpc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:I

.field private static zzb:Landroid/app/PendingIntent;

.field private static final zzc:Ljava/util/concurrent/Executor;

.field private static final zzd:Ljava/util/regex/Pattern;


# instance fields
.field private final zze:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/cloudmessaging/zzt;

.field private final zzh:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzi:Landroid/os/Messenger;

.field private zzj:Landroid/os/Messenger;

.field private zzk:Lcom/google/android/gms/cloudmessaging/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/cloudmessaging/zzz;->zza:Lcom/google/android/gms/cloudmessaging/zzz;

    sput-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    const-string v0, "\\|ID\\|([^|]+)\\|:?+(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzd:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzt;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzt;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 20
    .line 21
    new-instance p1, Landroid/os/Messenger;

    .line 22
    .line 23
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzaa;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/zzaa;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi:Landroid/os/Messenger;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 42
    .line 43
    const-wide/16 v1, 0x3c

    .line 44
    .line 45
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    return-void
.end method

.method static synthetic zza(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi(Landroid/os/Bundle;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Message;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_12

    .line 3
    .line 4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    instance-of v1, v0, Landroid/content/Intent;

    .line 7
    .line 8
    if-eqz v1, :cond_12

    .line 9
    .line 10
    check-cast v0, Landroid/content/Intent;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzc;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Lcom/google/android/gms/cloudmessaging/zzc;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 19
    .line 20
    const-string v1, "google.messenger"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "google.messenger"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    instance-of v1, v0, Lcom/google/android/gms/cloudmessaging/zzd;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    move-object v1, v0

    .line 38
    .line 39
    check-cast v1, Lcom/google/android/gms/cloudmessaging/zzd;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzk:Lcom/google/android/gms/cloudmessaging/zzd;

    .line 42
    .line 43
    :cond_0
    instance-of v1, v0, Landroid/os/Messenger;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    check-cast v0, Landroid/os/Messenger;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzj:Landroid/os/Messenger;

    .line 50
    .line 51
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x3

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    const-string p0, "Rpc"

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 72
    move-result p0

    .line 73
    .line 74
    if-eqz p0, :cond_11

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    const-string p1, "Unexpected response action: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    :goto_0
    const-string p1, "Rpc"

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 103
    .line 104
    :cond_3
    const-string v0, "registration_id"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    const-string v0, "unregistered"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    :cond_4
    const/4 v1, 0x2

    .line 118
    const/4 v3, 0x1

    .line 119
    .line 120
    if-nez v0, :cond_e

    .line 121
    .line 122
    const-string v0, "error"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 132
    move-result-object p0

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 140
    move-result p1

    .line 141
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    add-int/lit8 p1, p1, 0x31

    .line 145
    .line 146
    .line 147
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .line 149
    const-string p1, "Unexpected response, no error or registration id "

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string p0, "Rpc"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 166
    .line 167
    :cond_5
    const-string v4, "Rpc"

    .line 168
    .line 169
    .line 170
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 171
    move-result v4

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    const-string v4, "Received InstanceID error "

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 179
    move-result v5

    .line 180
    .line 181
    if-eqz v5, :cond_6

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    goto :goto_1

    .line 187
    .line 188
    :cond_6
    new-instance v5, Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 192
    move-object v4, v5

    .line 193
    .line 194
    :goto_1
    const-string v5, "Rpc"

    .line 195
    .line 196
    .line 197
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    :cond_7
    const-string v4, "|"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 203
    move-result v4

    .line 204
    .line 205
    if-eqz v4, :cond_c

    .line 206
    .line 207
    const-string v4, "\\|"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 211
    move-result-object v4

    .line 212
    array-length v5, v4

    .line 213
    .line 214
    if-le v5, v1, :cond_a

    .line 215
    .line 216
    const-string v5, "ID"

    .line 217
    .line 218
    aget-object v6, v4, v3

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result v5

    .line 223
    .line 224
    if-nez v5, :cond_8

    .line 225
    goto :goto_2

    .line 226
    .line 227
    :cond_8
    aget-object v0, v4, v1

    .line 228
    .line 229
    aget-object v1, v4, v2

    .line 230
    .line 231
    const-string v2, ":"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    move-result v2

    .line 236
    .line 237
    if-eqz v2, :cond_9

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 242
    .line 243
    :cond_9
    const-string v2, "error"

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    .line 254
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    return-void

    .line 256
    .line 257
    :cond_a
    :goto_2
    const-string p0, "Unexpected structured response "

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 261
    move-result p1

    .line 262
    .line 263
    if-eqz p1, :cond_b

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object p0

    .line 268
    goto :goto_3

    .line 269
    .line 270
    :cond_b
    new-instance p1, Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 274
    move-object p0, p1

    .line 275
    .line 276
    :goto_3
    const-string p1, "Rpc"

    .line 277
    .line 278
    .line 279
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 281
    .line 282
    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 283
    monitor-enter v4

    .line 284
    const/4 v0, 0x0

    .line 285
    .line 286
    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 290
    move-result v1

    .line 291
    .line 292
    if-ge v0, v1, :cond_d

    .line 293
    .line 294
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 299
    .line 300
    check-cast v1, Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 304
    move-result-object v2

    .line 305
    .line 306
    .line 307
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 310
    goto :goto_4

    .line 311
    :catchall_0
    move-exception p0

    .line 312
    goto :goto_5

    .line 313
    :cond_d
    monitor-exit v4

    .line 314
    return-void

    .line 315
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    throw p0

    .line 317
    .line 318
    :cond_e
    sget-object v4, Lcom/google/android/gms/cloudmessaging/Rpc;->zzd:Ljava/util/regex/Pattern;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 322
    move-result-object v4

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 326
    move-result v5

    .line 327
    .line 328
    if-nez v5, :cond_10

    .line 329
    .line 330
    const-string p0, "Rpc"

    .line 331
    .line 332
    .line 333
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 334
    move-result p0

    .line 335
    .line 336
    if-eqz p0, :cond_11

    .line 337
    .line 338
    const-string p0, "Unexpected response string: "

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 342
    move-result p1

    .line 343
    .line 344
    if-eqz p1, :cond_f

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object p0

    .line 349
    goto :goto_6

    .line 350
    .line 351
    :cond_f
    new-instance p1, Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 355
    move-object p0, p1

    .line 356
    .line 357
    :goto_6
    const-string p1, "Rpc"

    .line 358
    .line 359
    .line 360
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 362
    .line 363
    .line 364
    :cond_10
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 365
    move-result-object v0

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 369
    move-result-object v1

    .line 370
    .line 371
    if-eqz v0, :cond_11

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 375
    move-result-object p1

    .line 376
    .line 377
    const-string v2, "registration_id"

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 384
    :cond_11
    return-void

    .line 385
    .line 386
    :cond_12
    const-string p0, "Rpc"

    .line 387
    .line 388
    const-string p1, "Dropping invalid message"

    .line 389
    .line 390
    .line 391
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method private final zze(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 12
    monitor-enter v2

    .line 13
    .line 14
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 24
    .line 25
    const-string v3, "com.google.android.gms"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/cloudmessaging/zzt;->zzb()I

    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v2}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 64
    move-result p1

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x5

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .line 73
    const-string p1, "|ID|"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string p1, "|"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p1, "kid"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    const-string p1, "Rpc"

    .line 96
    const/4 v3, 0x3

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 114
    move-result v5

    .line 115
    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    add-int/lit8 v5, v5, 0x8

    .line 119
    .line 120
    .line 121
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 122
    .line 123
    const-string v5, "Sending "

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string p1, "Rpc"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    :cond_1
    const-string p1, "google.messenger"

    .line 141
    .line 142
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi:Landroid/os/Messenger;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    .line 147
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzj:Landroid/os/Messenger;

    .line 148
    .line 149
    if-nez p1, :cond_2

    .line 150
    .line 151
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzk:Lcom/google/android/gms/cloudmessaging/zzd;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    .line 161
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzj:Landroid/os/Messenger;

    .line 162
    .line 163
    if-eqz v5, :cond_3

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 167
    goto :goto_1

    .line 168
    .line 169
    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzk:Lcom/google/android/gms/cloudmessaging/zzd;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, p1}, Lcom/google/android/gms/cloudmessaging/zzd;->zzb(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    goto :goto_1

    .line 174
    .line 175
    :catch_0
    const-string p1, "Rpc"

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 179
    move-result p1

    .line 180
    .line 181
    if-eqz p1, :cond_4

    .line 182
    .line 183
    const-string p1, "Rpc"

    .line 184
    .line 185
    const-string v3, "Messenger failed, fallback to startService"

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/zzt;->zzb()I

    .line 194
    move-result p1

    .line 195
    .line 196
    if-ne p1, v4, :cond_5

    .line 197
    .line 198
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    goto :goto_1

    .line 203
    .line 204
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    .line 209
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    .line 210
    .line 211
    new-instance v2, Lcom/google/android/gms/cloudmessaging/zzy;

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v1}, Lcom/google/android/gms/cloudmessaging/zzy;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 215
    .line 216
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 217
    .line 218
    const-wide/16 v4, 0x1e

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    sget-object v3, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    .line 229
    .line 230
    new-instance v4, Lcom/google/android/gms/cloudmessaging/zzw;

    .line 231
    .line 232
    .line 233
    invoke-direct {v4, p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/zzw;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 240
    move-result-object p1

    .line 241
    return-object p1

    .line 242
    :catchall_0
    move-exception p1

    .line 243
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    throw p1
.end method

.method private static declared-synchronized zzf()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zza:I

    .line 6
    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    sput v2, Lcom/google/android/gms/cloudmessaging/Rpc;->zza:I

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method private static declared-synchronized zzg(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zzb:Landroid/app/PendingIntent;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    const-string v2, "com.google.example.invalidpackage"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    sget v2, Lcom/google/android/gms/internal/cloudmessaging/zza;->zza:I

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v3, v1, v2}, Lcom/google/android/gms/internal/cloudmessaging/zza;->zza(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    sput-object p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzb:Landroid/app/PendingIntent;

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    :goto_0
    const-string p0, "app"

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zzb:Landroid/app/PendingIntent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw p0
.end method

.method private final zzh(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string p2, "Rpc"

    .line 16
    .line 17
    const-string v1, "Missing callback for "

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {v1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1
.end method

.method private static zzi(Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const-string v0, "google.messenger"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method


# virtual methods
.method public send(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzt;->zza()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0xb71b00

    .line 10
    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzg:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzt;->zzb()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v2, Lcom/google/android/gms/cloudmessaging/zzu;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/cloudmessaging/zzu;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 38
    .line 39
    const-string v0, "MISSING_INSTANCEID_SERVICE"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 46
    move-result-object p1

    .line 47
    :goto_0
    return-object p1

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzf:Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/zzs;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzs;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zzd(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    sget-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    .line 61
    .line 62
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zzv;->zza:Lcom/google/android/gms/cloudmessaging/zzv;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method public final synthetic zzb(Landroid/os/Bundle;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/Rpc;->zzi(Landroid/os/Bundle;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    return-object p2

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    sget-object p2, Lcom/google/android/gms/cloudmessaging/Rpc;->zzc:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    sget-object v0, Lcom/google/android/gms/cloudmessaging/zzx;->zza:Lcom/google/android/gms/cloudmessaging/zzx;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final synthetic zzd(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p3, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 3
    monitor-enter p3

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/Rpc;->zze:Landroidx/collection/SimpleArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method
