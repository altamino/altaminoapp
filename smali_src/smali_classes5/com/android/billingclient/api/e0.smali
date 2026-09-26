.class final Lcom/android/billingclient/api/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/e;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Z

.field private zzd:Lcom/android/billingclient/api/f;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/f;Lcom/android/billingclient/api/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/e0;->zzb:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/e0;->zzc:Z

    iput-object p2, p0, Lcom/android/billingclient/api/e0;->zzd:Lcom/android/billingclient/api/f;

    return-void
.end method

.method private final p(Lcom/android/billingclient/api/h;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/e0;->zzd:Lcom/android/billingclient/api/f;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p1}, Lcom/android/billingclient/api/f;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method


# virtual methods
.method final synthetic m()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/billingclient/api/e0;->zzc:Z

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    monitor-exit v0

    .line 10
    .line 11
    goto/16 :goto_19

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    .line 14
    goto/16 :goto_1a

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    const-string v1, "accountName"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v2

    .line 34
    :goto_0
    const/4 v1, 0x6

    .line 35
    const/4 v3, 0x3

    .line 36
    const/4 v4, 0x0

    .line 37
    .line 38
    :try_start_1
    iget-object v5, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lcom/android/billingclient/api/e;->L(Lcom/android/billingclient/api/e;)Landroid/content/Context;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    const/16 v6, 0x15

    .line 49
    move v8, v3

    .line 50
    move v7, v6

    .line 51
    .line 52
    :goto_1
    if-lt v7, v3, :cond_4

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    :try_start_2
    iget-object v9, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 57
    .line 58
    .line 59
    invoke-static {v9}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/zzm;

    .line 60
    move-result-object v9

    .line 61
    .line 62
    .line 63
    const-string/jumbo v10, "subs"

    .line 64
    .line 65
    .line 66
    invoke-interface {v9, v7, v5, v10}, Lcom/google/android/gms/internal/play_billing/zzm;->zzv(ILjava/lang/String;Ljava/lang/String;)I

    .line 67
    move-result v8

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_2
    iget-object v9, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 71
    .line 72
    .line 73
    invoke-static {v9}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/zzm;

    .line 74
    move-result-object v9

    .line 75
    .line 76
    .line 77
    const-string/jumbo v10, "subs"

    .line 78
    .line 79
    .line 80
    invoke-interface {v9, v7, v5, v10, v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 81
    move-result v8

    .line 82
    .line 83
    :goto_2
    if-nez v8, :cond_3

    .line 84
    .line 85
    const-string v9, "BillingClient"

    .line 86
    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v11, "highestLevelSupportedForSubs: "

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v10

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_3

    .line 107
    :catch_0
    move-exception v0

    .line 108
    move v3, v8

    .line 109
    .line 110
    goto/16 :goto_17

    .line 111
    .line 112
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    move v7, v4

    .line 115
    .line 116
    :goto_3
    iget-object v9, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 117
    const/4 v10, 0x5

    .line 118
    const/4 v11, 0x1

    .line 119
    .line 120
    if-lt v7, v10, :cond_5

    .line 121
    move v10, v11

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    move v10, v4

    .line 124
    .line 125
    .line 126
    :goto_4
    invoke-static {v9, v10}, Lcom/android/billingclient/api/e;->v(Lcom/android/billingclient/api/e;Z)V

    .line 127
    .line 128
    iget-object v9, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 129
    .line 130
    if-lt v7, v3, :cond_6

    .line 131
    move v10, v11

    .line 132
    goto :goto_5

    .line 133
    :cond_6
    move v10, v4

    .line 134
    .line 135
    .line 136
    :goto_5
    invoke-static {v9, v10}, Lcom/android/billingclient/api/e;->w(Lcom/android/billingclient/api/e;Z)V

    .line 137
    .line 138
    const/16 v9, 0x9

    .line 139
    .line 140
    if-ge v7, v3, :cond_7

    .line 141
    .line 142
    const-string v7, "BillingClient"

    .line 143
    .line 144
    const-string v10, "In-app billing API does not support subscription on this device."

    .line 145
    .line 146
    .line 147
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move v7, v9

    .line 149
    goto :goto_6

    .line 150
    :cond_7
    move v7, v11

    .line 151
    :goto_6
    move v10, v6

    .line 152
    .line 153
    :goto_7
    if-lt v10, v3, :cond_a

    .line 154
    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    iget-object v12, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 158
    .line 159
    .line 160
    invoke-static {v12}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/zzm;

    .line 161
    move-result-object v12

    .line 162
    .line 163
    const-string v13, "inapp"

    .line 164
    .line 165
    .line 166
    invoke-interface {v12, v10, v5, v13}, Lcom/google/android/gms/internal/play_billing/zzm;->zzv(ILjava/lang/String;Ljava/lang/String;)I

    .line 167
    move-result v8

    .line 168
    goto :goto_8

    .line 169
    .line 170
    :cond_8
    iget-object v12, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 171
    .line 172
    .line 173
    invoke-static {v12}, Lcom/android/billingclient/api/e;->S(Lcom/android/billingclient/api/e;)Lcom/google/android/gms/internal/play_billing/zzm;

    .line 174
    move-result-object v12

    .line 175
    .line 176
    const-string v13, "inapp"

    .line 177
    .line 178
    .line 179
    invoke-interface {v12, v10, v5, v13, v0}, Lcom/google/android/gms/internal/play_billing/zzm;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 180
    move-result v8

    .line 181
    .line 182
    :goto_8
    if-nez v8, :cond_9

    .line 183
    .line 184
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v10}, Lcom/android/billingclient/api/e;->Z(Lcom/android/billingclient/api/e;I)V

    .line 188
    .line 189
    const-string v0, "BillingClient"

    .line 190
    .line 191
    iget-object v5, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 192
    .line 193
    .line 194
    invoke-static {v5}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 195
    move-result v5

    .line 196
    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    const-string v12, "mHighestLevelSupportedForInApp: "

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v5

    .line 213
    .line 214
    .line 215
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    goto :goto_9

    .line 217
    .line 218
    :cond_9
    add-int/lit8 v10, v10, -0x1

    .line 219
    goto :goto_7

    .line 220
    .line 221
    :cond_a
    :goto_9
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 222
    .line 223
    .line 224
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 225
    move-result v5

    .line 226
    .line 227
    if-lt v5, v6, :cond_b

    .line 228
    move v5, v11

    .line 229
    goto :goto_a

    .line 230
    :cond_b
    move v5, v4

    .line 231
    .line 232
    .line 233
    :goto_a
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->q(Lcom/android/billingclient/api/e;Z)V

    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 239
    move-result v5

    .line 240
    .line 241
    const/16 v6, 0x14

    .line 242
    .line 243
    if-lt v5, v6, :cond_c

    .line 244
    move v5, v11

    .line 245
    goto :goto_b

    .line 246
    :cond_c
    move v5, v4

    .line 247
    .line 248
    .line 249
    :goto_b
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->p(Lcom/android/billingclient/api/e;Z)V

    .line 250
    .line 251
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 252
    .line 253
    .line 254
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 255
    move-result v5

    .line 256
    .line 257
    const/16 v6, 0x13

    .line 258
    .line 259
    if-lt v5, v6, :cond_d

    .line 260
    move v5, v11

    .line 261
    goto :goto_c

    .line 262
    :cond_d
    move v5, v4

    .line 263
    .line 264
    .line 265
    :goto_c
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->o(Lcom/android/billingclient/api/e;Z)V

    .line 266
    .line 267
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 268
    .line 269
    .line 270
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 271
    move-result v5

    .line 272
    .line 273
    const/16 v6, 0x12

    .line 274
    .line 275
    if-lt v5, v6, :cond_e

    .line 276
    move v5, v11

    .line 277
    goto :goto_d

    .line 278
    :cond_e
    move v5, v4

    .line 279
    .line 280
    .line 281
    :goto_d
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->n(Lcom/android/billingclient/api/e;Z)V

    .line 282
    .line 283
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 284
    .line 285
    .line 286
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 287
    move-result v5

    .line 288
    .line 289
    const/16 v6, 0x11

    .line 290
    .line 291
    if-lt v5, v6, :cond_f

    .line 292
    move v5, v11

    .line 293
    goto :goto_e

    .line 294
    :cond_f
    move v5, v4

    .line 295
    .line 296
    .line 297
    :goto_e
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->m(Lcom/android/billingclient/api/e;Z)V

    .line 298
    .line 299
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 300
    .line 301
    .line 302
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 303
    move-result v5

    .line 304
    .line 305
    const/16 v6, 0x10

    .line 306
    .line 307
    if-lt v5, v6, :cond_10

    .line 308
    move v5, v11

    .line 309
    goto :goto_f

    .line 310
    :cond_10
    move v5, v4

    .line 311
    .line 312
    .line 313
    :goto_f
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->l(Lcom/android/billingclient/api/e;Z)V

    .line 314
    .line 315
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 319
    move-result v5

    .line 320
    .line 321
    const/16 v6, 0xf

    .line 322
    .line 323
    if-lt v5, v6, :cond_11

    .line 324
    move v5, v11

    .line 325
    goto :goto_10

    .line 326
    :cond_11
    move v5, v4

    .line 327
    .line 328
    .line 329
    :goto_10
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->d0(Lcom/android/billingclient/api/e;Z)V

    .line 330
    .line 331
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 332
    .line 333
    .line 334
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 335
    move-result v5

    .line 336
    .line 337
    const/16 v6, 0xe

    .line 338
    .line 339
    if-lt v5, v6, :cond_12

    .line 340
    move v5, v11

    .line 341
    goto :goto_11

    .line 342
    :cond_12
    move v5, v4

    .line 343
    .line 344
    .line 345
    :goto_11
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->c0(Lcom/android/billingclient/api/e;Z)V

    .line 346
    .line 347
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 348
    .line 349
    .line 350
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 351
    move-result v5

    .line 352
    .line 353
    const/16 v6, 0xc

    .line 354
    .line 355
    if-lt v5, v6, :cond_13

    .line 356
    move v5, v11

    .line 357
    goto :goto_12

    .line 358
    :cond_13
    move v5, v4

    .line 359
    .line 360
    .line 361
    :goto_12
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->b0(Lcom/android/billingclient/api/e;Z)V

    .line 362
    .line 363
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 364
    .line 365
    .line 366
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 367
    move-result v5

    .line 368
    .line 369
    const/16 v6, 0xa

    .line 370
    .line 371
    if-lt v5, v6, :cond_14

    .line 372
    move v5, v11

    .line 373
    goto :goto_13

    .line 374
    :cond_14
    move v5, v4

    .line 375
    .line 376
    .line 377
    :goto_13
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->a0(Lcom/android/billingclient/api/e;Z)V

    .line 378
    .line 379
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 380
    .line 381
    .line 382
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 383
    move-result v5

    .line 384
    .line 385
    if-lt v5, v9, :cond_15

    .line 386
    move v5, v11

    .line 387
    goto :goto_14

    .line 388
    :cond_15
    move v5, v4

    .line 389
    .line 390
    .line 391
    :goto_14
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->t(Lcom/android/billingclient/api/e;Z)V

    .line 392
    .line 393
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 394
    .line 395
    .line 396
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 397
    move-result v5

    .line 398
    .line 399
    const/16 v6, 0x8

    .line 400
    .line 401
    if-lt v5, v6, :cond_16

    .line 402
    move v5, v11

    .line 403
    goto :goto_15

    .line 404
    :cond_16
    move v5, v4

    .line 405
    .line 406
    .line 407
    :goto_15
    invoke-static {v0, v5}, Lcom/android/billingclient/api/e;->s(Lcom/android/billingclient/api/e;Z)V

    .line 408
    .line 409
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 410
    .line 411
    .line 412
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 413
    move-result v5

    .line 414
    .line 415
    if-lt v5, v1, :cond_17

    .line 416
    goto :goto_16

    .line 417
    :cond_17
    move v11, v4

    .line 418
    .line 419
    .line 420
    :goto_16
    invoke-static {v0, v11}, Lcom/android/billingclient/api/e;->r(Lcom/android/billingclient/api/e;Z)V

    .line 421
    .line 422
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 423
    .line 424
    .line 425
    invoke-static {v0}, Lcom/android/billingclient/api/e;->G(Lcom/android/billingclient/api/e;)I

    .line 426
    move-result v0

    .line 427
    .line 428
    if-ge v0, v3, :cond_18

    .line 429
    .line 430
    const-string v0, "BillingClient"

    .line 431
    .line 432
    const-string v3, "In-app billing API version 3 is not supported on this device."

    .line 433
    .line 434
    .line 435
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    const/16 v7, 0x24

    .line 438
    .line 439
    :cond_18
    if-nez v8, :cond_19

    .line 440
    .line 441
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 442
    const/4 v3, 0x2

    .line 443
    .line 444
    .line 445
    invoke-static {v0, v3}, Lcom/android/billingclient/api/e;->Y(Lcom/android/billingclient/api/e;I)V

    .line 446
    .line 447
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 448
    .line 449
    .line 450
    invoke-static {v0}, Lcom/android/billingclient/api/e;->P(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/t1;

    .line 451
    move-result-object v0

    .line 452
    .line 453
    if-eqz v0, :cond_1a

    .line 454
    .line 455
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 456
    .line 457
    .line 458
    invoke-static {v0}, Lcom/android/billingclient/api/e;->P(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/t1;

    .line 459
    move-result-object v0

    .line 460
    .line 461
    iget-object v3, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 462
    .line 463
    .line 464
    invoke-static {v3}, Lcom/android/billingclient/api/e;->L(Lcom/android/billingclient/api/e;)Landroid/content/Context;

    .line 465
    move-result-object v3

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/t1;->f(Z)V

    .line 472
    goto :goto_18

    .line 473
    .line 474
    :cond_19
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 475
    .line 476
    .line 477
    invoke-static {v0, v4}, Lcom/android/billingclient/api/e;->Y(Lcom/android/billingclient/api/e;I)V

    .line 478
    .line 479
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 480
    .line 481
    .line 482
    invoke-static {v0, v2}, Lcom/android/billingclient/api/e;->u(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/zzm;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 483
    goto :goto_18

    .line 484
    :catch_1
    move-exception v0

    .line 485
    .line 486
    :goto_17
    const-string v5, "BillingClient"

    .line 487
    .line 488
    const-string v6, "Exception while checking if billing is supported; try to reconnect"

    .line 489
    .line 490
    .line 491
    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    .line 493
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 494
    .line 495
    .line 496
    invoke-static {v0, v4}, Lcom/android/billingclient/api/e;->Y(Lcom/android/billingclient/api/e;I)V

    .line 497
    .line 498
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 499
    .line 500
    .line 501
    invoke-static {v0, v2}, Lcom/android/billingclient/api/e;->u(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/zzm;)V

    .line 502
    .line 503
    const/16 v7, 0x2a

    .line 504
    move v8, v3

    .line 505
    .line 506
    :cond_1a
    :goto_18
    if-nez v8, :cond_1b

    .line 507
    .line 508
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 509
    .line 510
    .line 511
    invoke-static {v0}, Lcom/android/billingclient/api/e;->Q(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/n0;

    .line 512
    move-result-object v0

    .line 513
    .line 514
    .line 515
    invoke-static {v1}, Lcom/android/billingclient/api/m0;->b(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 516
    move-result-object v1

    .line 517
    .line 518
    .line 519
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->c(Lcom/google/android/gms/internal/play_billing/zzic;)V

    .line 520
    .line 521
    sget-object v0, Lcom/android/billingclient/api/p0;->zzl:Lcom/android/billingclient/api/h;

    .line 522
    .line 523
    .line 524
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/e0;->p(Lcom/android/billingclient/api/h;)V

    .line 525
    goto :goto_19

    .line 526
    .line 527
    :cond_1b
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 528
    .line 529
    .line 530
    invoke-static {v0}, Lcom/android/billingclient/api/e;->Q(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/n0;

    .line 531
    move-result-object v0

    .line 532
    .line 533
    sget-object v3, Lcom/android/billingclient/api/p0;->zza:Lcom/android/billingclient/api/h;

    .line 534
    .line 535
    .line 536
    invoke-static {v7, v1, v3}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 537
    move-result-object v1

    .line 538
    .line 539
    .line 540
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 541
    .line 542
    .line 543
    invoke-direct {p0, v3}, Lcom/android/billingclient/api/e0;->p(Lcom/android/billingclient/api/h;)V

    .line 544
    :goto_19
    return-object v2

    .line 545
    :goto_1a
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    throw v1
.end method

.method final synthetic n()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->Y(Lcom/android/billingclient/api/e;I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/android/billingclient/api/e;->u(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/zzm;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/billingclient/api/e;->Q(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/n0;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Lcom/android/billingclient/api/p0;->zzn:Lcom/android/billingclient/api/h;

    .line 21
    .line 22
    const/16 v2, 0x18

    .line 23
    const/4 v3, 0x6

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/e0;->p(Lcom/android/billingclient/api/h;)V

    .line 34
    return-void
.end method

.method final o()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    :try_start_0
    iput-object v1, p0, Lcom/android/billingclient/api/e0;->zzd:Lcom/android/billingclient/api/f;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/billingclient/api/e0;->zzc:Z

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    .line 2
    const-string p1, "BillingClient"

    .line 3
    .line 4
    const-string v0, "Billing service connected."

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzl;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzm;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/android/billingclient/api/e;->u(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/zzm;)V

    .line 17
    .line 18
    new-instance v1, Lcom/android/billingclient/api/b0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/b0;-><init>(Lcom/android/billingclient/api/e0;)V

    .line 22
    .line 23
    new-instance v4, Lcom/android/billingclient/api/c0;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/android/billingclient/api/c0;-><init>(Lcom/android/billingclient/api/e0;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 29
    .line 30
    const-wide/16 v2, 0x7530

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/billingclient/api/e;->O(Lcom/android/billingclient/api/e;)Landroid/os/Handler;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/e;->X(Lcom/android/billingclient/api/e;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/billingclient/api/e;->R(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/h;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/billingclient/api/e;->Q(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/n0;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const/16 v0, 0x19

    .line 53
    const/4 v1, 0x6

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/e0;->p(Lcom/android/billingclient/api/h;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "BillingClient"

    .line 3
    .line 4
    const-string v0, "Billing service disconnected."

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/billingclient/api/e;->Q(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/n0;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziz;->zzw()Lcom/google/android/gms/internal/play_billing/zziz;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/n0;->b(Lcom/google/android/gms/internal/play_billing/zziz;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/android/billingclient/api/e;->u(Lcom/android/billingclient/api/e;Lcom/google/android/gms/internal/play_billing/zzm;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->zza:Lcom/android/billingclient/api/e;

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/android/billingclient/api/e;->Y(Lcom/android/billingclient/api/e;I)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->zzb:Ljava/lang/Object;

    .line 35
    monitor-enter p1

    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/e0;->zzd:Lcom/android/billingclient/api/f;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lcom/android/billingclient/api/f;->onBillingServiceDisconnected()V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method
