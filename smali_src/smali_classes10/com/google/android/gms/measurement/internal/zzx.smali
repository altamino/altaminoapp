.class final Lcom/google/android/gms/measurement/internal/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfi$zze;)Lcom/google/android/gms/internal/measurement/zzfi$zze;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzh()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    .line 14
    .line 15
    const-string v2, "_eid"

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    move-object v6, v3

    .line 21
    .line 22
    check-cast v6, Ljava/lang/Long;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 28
    .line 29
    :goto_0
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    if-eqz v3, :cond_a

    .line 32
    .line 33
    const-string v7, "_ep"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v7

    .line 38
    .line 39
    if-eqz v7, :cond_a

    .line 40
    .line 41
    .line 42
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    .line 48
    .line 49
    const-string v0, "_en"

    .line 50
    .line 51
    .line 52
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v3

    .line 60
    const/4 v7, 0x0

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const-string p2, "Extra parameter without an event name. eventId"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-object v7

    .line 79
    .line 80
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 81
    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 90
    move-result-wide v8

    .line 91
    .line 92
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 96
    move-result-wide v10

    .line 97
    .line 98
    cmp-long v3, v8, v10

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p1, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    if-eqz v3, :cond_9

    .line 113
    .line 114
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 115
    .line 116
    if-nez v8, :cond_3

    .line 117
    .line 118
    goto/16 :goto_3

    .line 119
    .line 120
    :cond_3
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 121
    .line 122
    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 123
    .line 124
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v3, Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 130
    move-result-wide v7

    .line 131
    .line 132
    iput-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 133
    .line 134
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 140
    .line 141
    .line 142
    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    check-cast v2, Ljava/lang/Long;

    .line 146
    .line 147
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    .line 148
    .line 149
    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 150
    .line 151
    const-wide/16 v7, 0x1

    .line 152
    sub-long/2addr v2, v7

    .line 153
    .line 154
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 155
    .line 156
    cmp-long v2, v2, v4

    .line 157
    .line 158
    if-gtz v2, :cond_5

    .line 159
    .line 160
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    const-string v4, "Clearing complex main event info. appId"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 184
    move-result-object v3

    .line 185
    .line 186
    const-string v4, "delete from main_event_params where app_id=?"

    .line 187
    .line 188
    .line 189
    filled-new-array {p1}, [Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_1

    .line 195
    :catch_0
    move-exception p1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    const-string v3, "Error clearing complex main event"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    goto :goto_1

    .line 210
    .line 211
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 218
    .line 219
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 220
    move-object v5, p1

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfi$zze;)Z

    .line 224
    .line 225
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .line 230
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzh()Ljava/util/List;

    .line 234
    move-result-object v2

    .line 235
    .line 236
    .line 237
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    move-result-object v2

    .line 239
    .line 240
    .line 241
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    move-result v3

    .line 243
    .line 244
    if-eqz v3, :cond_7

    .line 245
    .line 246
    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 249
    .line 250
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi$zzg;

    .line 251
    .line 252
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzg;->zzg()Ljava/lang/String;

    .line 259
    move-result-object v4

    .line 260
    .line 261
    .line 262
    invoke-static {p2, v4}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfi$zzg;

    .line 263
    move-result-object v4

    .line 264
    .line 265
    if-nez v4, :cond_6

    .line 266
    .line 267
    .line 268
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    goto :goto_2

    .line 270
    .line 271
    .line 272
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 273
    move-result v2

    .line 274
    .line 275
    if-nez v2, :cond_8

    .line 276
    .line 277
    .line 278
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    move-object v1, p1

    .line 280
    goto :goto_5

    .line 281
    .line 282
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 286
    move-result-object p1

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    .line 290
    move-result-object p1

    .line 291
    .line 292
    const-string v2, "No unique parameters in main event. eventName"

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    goto :goto_5

    .line 297
    .line 298
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 302
    move-result-object p1

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    .line 306
    move-result-object p1

    .line 307
    .line 308
    const-string p2, "Extra parameter without existing main event. eventName, eventId"

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, p2, v0, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    return-object v7

    .line 313
    .line 314
    :cond_a
    if-eqz v3, :cond_d

    .line 315
    .line 316
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzb:Ljava/lang/Long;

    .line 317
    .line 318
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 319
    .line 320
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    .line 324
    .line 325
    .line 326
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 327
    move-result-object v2

    .line 328
    .line 329
    const-string v3, "_epc"

    .line 330
    .line 331
    .line 332
    invoke-static {p2, v3}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Lcom/google/android/gms/internal/measurement/zzfi$zze;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    move-result-object v3

    .line 334
    .line 335
    if-nez v3, :cond_b

    .line 336
    goto :goto_4

    .line 337
    :cond_b
    move-object v2, v3

    .line 338
    .line 339
    :goto_4
    check-cast v2, Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 343
    move-result-wide v2

    .line 344
    .line 345
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 346
    .line 347
    cmp-long v2, v2, v4

    .line 348
    .line 349
    if-gtz v2, :cond_c

    .line 350
    .line 351
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 355
    move-result-object p1

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzm()Lcom/google/android/gms/measurement/internal/zzft;

    .line 359
    move-result-object p1

    .line 360
    .line 361
    const-string v2, "Complex event with zero extra param count. eventName"

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    goto :goto_5

    .line 366
    .line 367
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    .line 371
    move-result-object v7

    .line 372
    .line 373
    .line 374
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    move-result-object v2

    .line 376
    move-object v9, v2

    .line 377
    .line 378
    check-cast v9, Ljava/lang/Long;

    .line 379
    .line 380
    iget-wide v10, p0, Lcom/google/android/gms/measurement/internal/zzx;->zzc:J

    .line 381
    move-object v8, p1

    .line 382
    move-object v12, p2

    .line 383
    .line 384
    .line 385
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfi$zze;)Z

    .line 386
    .line 387
    .line 388
    :cond_d
    :goto_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    .line 389
    move-result-object p1

    .line 390
    .line 391
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    .line 395
    move-result-object p1

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    .line 399
    move-result-object p1

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfi$zze$zza;

    .line 403
    move-result-object p1

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    .line 407
    move-result-object p1

    .line 408
    .line 409
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix;

    .line 410
    .line 411
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi$zze;

    .line 412
    return-object p1
.end method
