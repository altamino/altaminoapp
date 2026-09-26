.class final Lcom/google/android/gms/measurement/internal/zzgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzby;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgl;Lcom/google/android/gms/internal/measurement/zzby;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgo;->zzb:Landroid/content/ServiceConnection;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzc:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgl;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zza(Lcom/google/android/gms/measurement/internal/zzgl;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgo;->zzb:Landroid/content/ServiceConnection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzgm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzby;)Landroid/os/Bundle;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 24
    move-result-object v5

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 28
    .line 29
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhf;->zzy()V

    .line 33
    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    const-string v5, "install_begin_timestamp_seconds"

    .line 37
    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 42
    move-result-wide v8

    .line 43
    .line 44
    const-wide/16 v10, 0x3e8

    .line 45
    mul-long/2addr v8, v10

    .line 46
    .line 47
    cmp-long v5, v8, v6

    .line 48
    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    const-string v3, "Service response is missing Install Referrer install timestamp"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_0
    const-string v5, "install_referrer"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    if-eqz v5, :cond_8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 78
    move-result v12

    .line 79
    .line 80
    if-eqz v12, :cond_1

    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_1
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 88
    move-result-object v12

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 92
    move-result-object v12

    .line 93
    .line 94
    const-string v13, "InstallReferrer API result"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12, v13, v5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 103
    move-result-object v12

    .line 104
    .line 105
    new-instance v13, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v14, "?"

    .line 108
    .line 109
    .line 110
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpy;->zza()Z

    .line 125
    move-result v13

    .line 126
    .line 127
    if-eqz v13, :cond_2

    .line 128
    .line 129
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhf;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 133
    move-result-object v13

    .line 134
    .line 135
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbi;->zzbz:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 139
    move-result v13

    .line 140
    .line 141
    if-eqz v13, :cond_2

    .line 142
    const/4 v13, 0x1

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const/4 v13, 0x0

    .line 145
    .line 146
    .line 147
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    .line 148
    move-result v14

    .line 149
    .line 150
    if-eqz v14, :cond_3

    .line 151
    .line 152
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhf;->zzf()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 156
    move-result-object v14

    .line 157
    .line 158
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbi;->zzct:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 162
    move-result v14

    .line 163
    .line 164
    if-eqz v14, :cond_3

    .line 165
    const/4 v14, 0x1

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    const/4 v14, 0x0

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-virtual {v12, v5, v13, v14}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    if-nez v5, :cond_4

    .line 174
    .line 175
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    const-string v3, "No campaign params defined in Install Referrer result"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_4
    const-string v12, "medium"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v12

    .line 197
    .line 198
    if-eqz v12, :cond_6

    .line 199
    .line 200
    const-string v13, "(not set)"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 204
    move-result v13

    .line 205
    .line 206
    if-nez v13, :cond_6

    .line 207
    .line 208
    const-string v13, "organic"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    move-result v12

    .line 213
    .line 214
    if-nez v12, :cond_6

    .line 215
    .line 216
    const-string v12, "referrer_click_timestamp_seconds"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v12, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 220
    move-result-wide v12

    .line 221
    mul-long/2addr v12, v10

    .line 222
    .line 223
    cmp-long v3, v12, v6

    .line 224
    .line 225
    if-nez v3, :cond_5

    .line 226
    .line 227
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    const-string v3, "Install Referrer is missing click timestamp for ad campaign"

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 241
    goto :goto_3

    .line 242
    .line 243
    :cond_5
    const-string v3, "click_timestamp"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v3, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 247
    .line 248
    :cond_6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 252
    move-result-object v3

    .line 253
    .line 254
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    .line 258
    move-result-wide v6

    .line 259
    .line 260
    cmp-long v3, v8, v6

    .line 261
    .line 262
    if-nez v3, :cond_7

    .line 263
    .line 264
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 268
    move-result-object v3

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 272
    move-result-object v3

    .line 273
    .line 274
    const-string v6, "Logging Install Referrer campaign from module while it may have already been logged."

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 278
    .line 279
    :cond_7
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    .line 283
    move-result v3

    .line 284
    .line 285
    if-eqz v3, :cond_9

    .line 286
    .line 287
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 291
    move-result-object v3

    .line 292
    .line 293
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgd;->zzd:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 297
    .line 298
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 302
    move-result-object v3

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 306
    move-result-object v3

    .line 307
    .line 308
    const-string v6, "Logging Install Referrer campaign from gmscore with "

    .line 309
    .line 310
    const-string v7, "referrer API v2"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .line 315
    const-string v3, "_cis"

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    .line 324
    move-result-object v3

    .line 325
    .line 326
    const-string v6, "auto"

    .line 327
    .line 328
    const-string v7, "_cmp"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v6, v7, v5, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 332
    goto :goto_3

    .line 333
    .line 334
    :cond_8
    :goto_2
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 338
    move-result-object v1

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 342
    move-result-object v1

    .line 343
    .line 344
    const-string v3, "No referrer defined in Install Referrer response"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 348
    .line 349
    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    .line 350
    .line 351
    .line 352
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Landroid/content/Context;

    .line 359
    move-result-object v2

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 363
    :cond_a
    return-void
.end method
