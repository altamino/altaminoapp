.class final Lcom/google/android/gms/measurement/internal/zzjx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zziq;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjx;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p3

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 12
    .line 13
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    .line 21
    move-result v4

    .line 22
    const/4 v6, 0x1

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbi;->zzby:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    move v4, v6

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .line 43
    goto/16 :goto_7

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    .line 48
    move-result v7

    .line 49
    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 62
    move-result v7

    .line 63
    .line 64
    if-eqz v7, :cond_1

    .line 65
    move v7, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v7, 0x0

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    const-string v9, "_cis"

    .line 74
    .line 75
    const-string v10, "Activity created with data \'referrer\' without required params"

    .line 76
    .line 77
    const-string v11, "utm_medium"

    .line 78
    .line 79
    const-string v12, "utm_source"

    .line 80
    .line 81
    const-string v13, "utm_campaign"

    .line 82
    .line 83
    const-string v15, "gclid"

    .line 84
    .line 85
    if-eqz v8, :cond_2

    .line 86
    :goto_2
    const/4 v3, 0x0

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v8

    .line 92
    .line 93
    if-nez v8, :cond_5

    .line 94
    .line 95
    if-eqz v7, :cond_3

    .line 96
    .line 97
    const-string v8, "gbraid"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v8

    .line 102
    .line 103
    if-nez v8, :cond_5

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v8

    .line 108
    .line 109
    if-nez v8, :cond_5

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v8

    .line 114
    .line 115
    if-nez v8, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v8

    .line 120
    .line 121
    if-nez v8, :cond_5

    .line 122
    .line 123
    const-string v8, "utm_id"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v8

    .line 128
    .line 129
    if-nez v8, :cond_5

    .line 130
    .line 131
    const-string v8, "dclid"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v8

    .line 136
    .line 137
    if-nez v8, :cond_5

    .line 138
    .line 139
    const-string v8, "srsltid"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 143
    move-result v8

    .line 144
    .line 145
    if-nez v8, :cond_5

    .line 146
    .line 147
    if-eqz v4, :cond_4

    .line 148
    .line 149
    const-string v8, "sfmc_id"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    move-result v8

    .line 154
    .line 155
    if-nez v8, :cond_5

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 167
    goto :goto_2

    .line 168
    .line 169
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v14, "https://google.com/search?"

    .line 172
    .line 173
    .line 174
    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v8

    .line 182
    .line 183
    .line 184
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 185
    move-result-object v8

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v8, v4, v7}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    const-string v4, "referrer"

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    .line 198
    :cond_6
    :goto_3
    const-string v4, "_cmp"

    .line 199
    .line 200
    if-eqz p1, :cond_a

    .line 201
    .line 202
    :try_start_2
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 206
    move-result-object v7

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    .line 210
    move-result v8

    .line 211
    .line 212
    if-eqz v8, :cond_7

    .line 213
    .line 214
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 218
    move-result-object v8

    .line 219
    .line 220
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbi;->zzby:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 224
    move-result v8

    .line 225
    .line 226
    if-eqz v8, :cond_7

    .line 227
    move v8, v6

    .line 228
    goto :goto_4

    .line 229
    :cond_7
    const/4 v8, 0x0

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    .line 233
    move-result v14

    .line 234
    .line 235
    if-eqz v14, :cond_8

    .line 236
    .line 237
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 241
    move-result-object v14

    .line 242
    .line 243
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 247
    move-result v5

    .line 248
    .line 249
    if-eqz v5, :cond_8

    .line 250
    .line 251
    move-object/from16 v5, p2

    .line 252
    move v14, v6

    .line 253
    goto :goto_5

    .line 254
    .line 255
    :cond_8
    move-object/from16 v5, p2

    .line 256
    const/4 v14, 0x0

    .line 257
    .line 258
    .line 259
    :goto_5
    invoke-virtual {v7, v5, v8, v14}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    .line 260
    move-result-object v5

    .line 261
    .line 262
    if-eqz v5, :cond_a

    .line 263
    .line 264
    const-string v7, "intent"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 271
    move-result v7

    .line 272
    .line 273
    if-nez v7, :cond_9

    .line 274
    .line 275
    if-eqz v3, :cond_9

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 279
    move-result v7

    .line 280
    .line 281
    if-eqz v7, :cond_9

    .line 282
    .line 283
    const-string v7, "_cer"

    .line 284
    .line 285
    const-string v8, "gclid=%s"

    .line 286
    .line 287
    new-array v9, v6, [Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object v14

    .line 292
    .line 293
    const/16 v16, 0x0

    .line 294
    .line 295
    aput-object v14, v9, v16

    .line 296
    .line 297
    .line 298
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 299
    move-result-object v8

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    :cond_9
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 308
    .line 309
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 310
    .line 311
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v0, v5}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    .line 316
    .line 317
    :cond_a
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    move-result v5

    .line 319
    .line 320
    if-eqz v5, :cond_b

    .line 321
    return-void

    .line 322
    .line 323
    :cond_b
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 327
    move-result-object v5

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 331
    move-result-object v5

    .line 332
    .line 333
    const-string v7, "Activity created with referrer"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    .line 338
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 342
    move-result-object v5

    .line 343
    .line 344
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbi;->zzbi:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 348
    move-result v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    .line 350
    const-string v7, "_ldl"

    .line 351
    .line 352
    const-string v8, "auto"

    .line 353
    .line 354
    if-eqz v5, :cond_d

    .line 355
    .line 356
    if-eqz v3, :cond_c

    .line 357
    .line 358
    :try_start_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 362
    .line 363
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 364
    .line 365
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 369
    goto :goto_6

    .line 370
    .line 371
    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 375
    move-result-object v0

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    const-string v3, "Referrer does not contain valid parameters"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    .line 386
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 387
    const/4 v2, 0x0

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 391
    return-void

    .line 392
    .line 393
    .line 394
    :cond_d
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 395
    move-result v0

    .line 396
    .line 397
    if-eqz v0, :cond_10

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 401
    move-result v0

    .line 402
    .line 403
    if-nez v0, :cond_e

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 407
    move-result v0

    .line 408
    .line 409
    if-nez v0, :cond_e

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 413
    move-result v0

    .line 414
    .line 415
    if-nez v0, :cond_e

    .line 416
    .line 417
    const-string v0, "utm_term"

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 421
    move-result v0

    .line 422
    .line 423
    if-nez v0, :cond_e

    .line 424
    .line 425
    const-string v0, "utm_content"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 429
    move-result v0

    .line 430
    .line 431
    if-eqz v0, :cond_10

    .line 432
    .line 433
    .line 434
    :cond_e
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 435
    move-result v0

    .line 436
    .line 437
    if-nez v0, :cond_f

    .line 438
    .line 439
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 443
    :cond_f
    return-void

    .line 444
    .line 445
    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 449
    move-result-object v0

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 453
    move-result-object v0

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 457
    return-void

    .line 458
    .line 459
    :goto_7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 463
    move-result-object v1

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 467
    move-result-object v1

    .line 468
    .line 469
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "onActivityCreated"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 31
    return-void

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    :goto_0
    move-object v5, v1

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    .line 48
    goto/16 :goto_8

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v2, "com.android.vending.referral_url"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object v1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v1, 0x0

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :goto_1
    if-eqz v5, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-nez v1, :cond_3

    .line 85
    goto :goto_6

    .line 86
    .line 87
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Intent;)Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const-string v0, "gs"

    .line 99
    :goto_2
    move-object v6, v0

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_4
    const-string v0, "auto"

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :goto_3
    const-string v0, "referrer"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    .line 111
    if-nez p2, :cond_5

    .line 112
    const/4 v0, 0x1

    .line 113
    :goto_4
    move v4, v0

    .line 114
    goto :goto_5

    .line 115
    :cond_5
    const/4 v0, 0x0

    .line 116
    goto :goto_4

    .line 117
    .line 118
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzka;

    .line 125
    move-object v2, v1

    .line 126
    move-object v3, p0

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lcom/google/android/gms/measurement/internal/zzjx;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 142
    return-void

    .line 143
    .line 144
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 152
    return-void

    .line 153
    .line 154
    :goto_7
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    const-string v2, "Throwable caught in onActivityCreated"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .line 169
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 177
    return-void

    .line 178
    .line 179
    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 187
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;->zza(Landroid/app/Activity;)V

    .line 10
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;->zzb(Landroid/app/Activity;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlz;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlz;-><init>(Lcom/google/android/gms/measurement/internal/zzlx;J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzp()Lcom/google/android/gms/measurement/internal/zzlx;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzma;

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzma;-><init>(Lcom/google/android/gms/measurement/internal/zzlx;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkh;->zzc(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()Lcom/google/android/gms/measurement/internal/zzkh;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkh;->zzb(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 10
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
