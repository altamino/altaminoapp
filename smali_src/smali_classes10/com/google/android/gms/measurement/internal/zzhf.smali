.class public Lcom/google/android/gms/measurement/internal/zzhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzif;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzhf;


# instance fields
.field final zza:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private zzae:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile zzaf:Z

.field private zzag:I

.field private zzah:I

.field private zzai:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzaf;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzgd;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzfr;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzgy;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzlx;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zznd;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzfq;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzkh;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zziq;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zzb;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzkc;

.field private final zzu:Ljava/lang/String;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzfo;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzkp;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzba;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzfl;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzz:Z

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zza:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzae;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzh:Lcom/google/android/gms/measurement/internal/zzae;

    .line 26
    .line 27
    sput-object v2, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zza:Landroid/content/Context;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zze:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzd:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzf:Ljava/lang/String;

    .line 44
    .line 45
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzh:Z

    .line 46
    .line 47
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzg:Z

    .line 48
    .line 49
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zze:Ljava/lang/Boolean;

    .line 50
    .line 51
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    .line 52
    .line 53
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzu:Ljava/lang/String;

    .line 56
    const/4 v2, 0x1

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf:Z

    .line 59
    .line 60
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    const-string v5, "measurementEnabled"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 75
    .line 76
    if-eqz v5, :cond_0

    .line 77
    .line 78
    check-cast v4, Ljava/lang/Boolean;

    .line 79
    .line 80
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzad:Ljava/lang/Boolean;

    .line 81
    .line 82
    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 83
    .line 84
    const-string v4, "measurementDeactivated"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    instance-of v4, v3, Ljava/lang/Boolean;

    .line 91
    .line 92
    if-eqz v4, :cond_1

    .line 93
    .line 94
    check-cast v3, Ljava/lang/Boolean;

    .line 95
    .line 96
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzae:Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgn;->zzb(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 106
    .line 107
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Ljava/lang/Long;

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 113
    move-result-wide v3

    .line 114
    goto :goto_0

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 118
    move-result-wide v3

    .line 119
    .line 120
    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    .line 121
    .line 122
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaf;

    .line 123
    .line 124
    .line 125
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 126
    .line 127
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 128
    .line 129
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgd;

    .line 130
    .line 131
    .line 132
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzgd;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 136
    .line 137
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 138
    .line 139
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfr;

    .line 140
    .line 141
    .line 142
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 146
    .line 147
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 148
    .line 149
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznd;

    .line 150
    .line 151
    .line 152
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zznd;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 156
    .line 157
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    .line 158
    .line 159
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzin;

    .line 160
    .line 161
    .line 162
    invoke-direct {v3, p1, p0}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 163
    .line 164
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfq;

    .line 165
    .line 166
    .line 167
    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzfp;)V

    .line 168
    .line 169
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzo:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 170
    .line 171
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzb;

    .line 172
    .line 173
    .line 174
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 175
    .line 176
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    .line 177
    .line 178
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkh;

    .line 179
    .line 180
    .line 181
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 185
    .line 186
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzq:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 187
    .line 188
    new-instance v3, Lcom/google/android/gms/measurement/internal/zziq;

    .line 189
    .line 190
    .line 191
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 195
    .line 196
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    .line 197
    .line 198
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlx;

    .line 199
    .line 200
    .line 201
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzlx;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 205
    .line 206
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzm:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 207
    .line 208
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkc;

    .line 209
    .line 210
    .line 211
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 215
    .line 216
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzt:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 217
    .line 218
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgy;

    .line 219
    .line 220
    .line 221
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 225
    .line 226
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 227
    .line 228
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Lcom/google/android/gms/internal/measurement/zzdd;

    .line 229
    .line 230
    if-eqz v4, :cond_3

    .line 231
    .line 232
    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzdd;->zzb:J

    .line 233
    .line 234
    const-wide/16 v6, 0x0

    .line 235
    .line 236
    cmp-long v4, v4, v6

    .line 237
    .line 238
    if-eqz v4, :cond_3

    .line 239
    move v0, v2

    .line 240
    :cond_3
    xor-int/2addr v0, v2

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    instance-of v1, v1, Landroid/app/Application;

    .line 247
    .line 248
    if-eqz v1, :cond_5

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    instance-of v2, v2, Landroid/app/Application;

    .line 263
    .line 264
    if-eqz v2, :cond_6

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    .line 268
    move-result-object v2

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 272
    move-result-object v2

    .line 273
    .line 274
    check-cast v2, Landroid/app/Application;

    .line 275
    .line 276
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 277
    .line 278
    if-nez v4, :cond_4

    .line 279
    .line 280
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzjx;

    .line 281
    .line 282
    .line 283
    invoke-direct {v4, v1}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    .line 284
    .line 285
    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 286
    .line 287
    :cond_4
    if-eqz v0, :cond_6

    .line 288
    .line 289
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 293
    .line 294
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zziq;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 301
    move-result-object v0

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    const-string v1, "Registered activity lifecycle callback"

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 311
    goto :goto_1

    .line 312
    .line 313
    .line 314
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 315
    move-result-object v0

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    .line 319
    move-result-object v0

    .line 320
    .line 321
    const-string v1, "Application context is not an Application"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 325
    .line 326
    :cond_6
    :goto_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhg;

    .line 327
    .line 328
    .line 329
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhg;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzhf;
    .locals 12

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdd;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzdd;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/zzhf;

    .line 6
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdd;Ljava/lang/Long;)V

    .line 8
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 11
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Z)V

    :cond_4
    :goto_2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzb:Lcom/google/android/gms/measurement/internal/zzhf;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zze;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhf;Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 3

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 18
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzac()V

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzx:Lcom/google/android/gms/measurement/internal/zzba;

    .line 21
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfl;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;J)V

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 24
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfo;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 27
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzv()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzad()V

    .line 31
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzad()V

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-wide/32 v1, 0x14051

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 46
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzz:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzae()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzid;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzai()Lcom/google/android/gms/measurement/internal/zzkc;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzt:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzt:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 8
    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzdd;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 97
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbi;->zzcg:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 101
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    .line 105
    invoke-static {v3, v2, v1, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v1, "Registered app receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzm()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v3, "google_analytics_default_allow_ad_storage"

    .line 109
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v4, "google_analytics_default_allow_analytics_storage"

    .line 110
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, -0xa

    const/4 v5, 0x0

    const/16 v6, 0x1e

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v7

    .line 112
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v6, :cond_3

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzih;

    invoke-direct {v2, v5, v5, v4}, Lcom/google/android/gms/measurement/internal/zzih;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    .line 116
    invoke-virtual {v1, v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;J)V

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 121
    invoke-static {v1, v6}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzih;->zzi()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;J)V

    move-object v0, v1

    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 125
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 126
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbi;->zzcl:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zza()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v3, "google_analytics_default_allow_ad_user_data"

    .line 129
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 130
    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;I)V

    .line 132
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    goto/16 :goto_2

    .line 133
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_8

    if-ne v0, v6, :cond_9

    .line 134
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzay;

    invoke-direct {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Ljava/lang/Boolean;I)V

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    goto :goto_2

    .line 136
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    .line 137
    invoke-static {v6, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 138
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 139
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzay;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zzg()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Lcom/google/android/gms/measurement/internal/zzay;)V

    .line 142
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzh:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 144
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zzg:Landroid/os/Bundle;

    .line 145
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdd;->zze:Ljava/lang/String;

    const-string v3, "allow_personalized_ads"

    .line 147
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 149
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-nez p1, :cond_c

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "Persisting first open"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 152
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zziq;->zzb:Lcom/google/android/gms/measurement/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzb()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf()Z

    move-result p1

    if-nez p1, :cond_11

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 157
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 160
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzw()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 163
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_10

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 165
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 166
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 168
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzx()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzw()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 174
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzn()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzy()V

    .line 176
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzi()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzaa()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 177
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzae()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 178
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzad()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzc:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zza:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza(J)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 181
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzc(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Ljava/lang/String;)V

    .line 183
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzm()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object p1

    .line 184
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzih$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzih$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzih$zza;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 186
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zze:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;->zza(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznv;->zza()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 188
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzbm:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzx()Z

    move-result p1

    if-nez p1, :cond_16

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgj;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 191
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzq:Lcom/google/android/gms/measurement/internal/zzgj;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzgj;->zza(Ljava/lang/String;)V

    .line 193
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 195
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzac()Z

    move-result p1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzaa()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzv()Z

    move-result v0

    if-nez v0, :cond_18

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zzb(Z)V

    :cond_18
    if-eqz p1, :cond_19

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zziq;->zzaj()V

    .line 200
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzs()Lcom/google/android/gms/measurement/internal/zzlx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzlx;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzmf;->zza()V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzr()Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzt:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Landroid/os/Bundle;)V

    .line 204
    :cond_1a
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 205
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzcg:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznd;->zzw()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 207
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 209
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzgd;->zzj:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 5

    const-string p1, "gbraid"

    const-string p5, "gclid"

    const-string v0, ""

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p2, v1, :cond_0

    const/16 v1, 0x130

    if-ne p2, v1, :cond_8

    :cond_0
    if-nez p3, :cond_8

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzgd;->zzo:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Z)V

    if-eqz p4, :cond_7

    .line 59
    array-length p2, p4

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 60
    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    .line 61
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    .line 62
    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 64
    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    const-wide/16 v2, 0x0

    .line 65
    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 68
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoi;->zza()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 70
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcs:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 74
    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 75
    :cond_3
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zznd;->zzi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    .line 79
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_5
    :goto_0
    invoke-virtual {p3, p5, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    .line 81
    invoke-virtual {p3, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    const-string p4, "auto"

    const-string p5, "_cmp"

    .line 82
    invoke-virtual {p1, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zziq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    move-result-object p1

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 85
    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 86
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p1

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 93
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Z)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method final zzaa()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzag:I

    return-void
.end method

.method public final zzab()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final zzac()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzc()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzad()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf:Z

    .line 10
    return v0
.end method

.method public final zzae()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected final zzaf()Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzz:Z

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzab:J

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_5

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzab:J

    .line 40
    sub-long/2addr v0, v2

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 44
    move-result-wide v0

    .line 45
    .line 46
    const-wide/16 v2, 0x3e8

    .line 47
    .line 48
    cmp-long v0, v0, v2

    .line 49
    .line 50
    if-lez v0, :cond_5

    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzab:J

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const-string v1, "android.permission.INTERNET"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    .line 68
    move-result v0

    .line 69
    const/4 v1, 0x1

    .line 70
    const/4 v2, 0x0

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zznd;->zze(Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-nez v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzw()Z

    .line 102
    move-result v0

    .line 103
    .line 104
    if-nez v0, :cond_1

    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;)Z

    .line 110
    move-result v0

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzc:Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Landroid/content/Context;Z)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_2

    .line 121
    :cond_1
    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    move v0, v2

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    move-result v0

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzae()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zznd;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzac()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    move-result v0

    .line 174
    .line 175
    if-nez v0, :cond_3

    .line 176
    goto :goto_1

    .line 177
    :cond_3
    move v1, v2

    .line 178
    .line 179
    .line 180
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    .line 184
    .line 185
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaa:Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    move-result v0

    .line 190
    return v0

    .line 191
    .line 192
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 193
    .line 194
    const-string v1, "AppMeasurement is not initialized"

    .line 195
    .line 196
    .line 197
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 198
    throw v0
.end method

.method public final zzag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzg:Z

    return v0
.end method

.method public final zzah()Z
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzai()Lcom/google/android/gms/measurement/internal/zzkc;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzad()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)Landroid/util/Pair;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzp()Z

    .line 36
    move-result v2

    .line 37
    const/4 v9, 0x0

    .line 38
    .line 39
    if-eqz v2, :cond_b

    .line 40
    .line 41
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-nez v2, :cond_b

    .line 50
    .line 51
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzai()Lcom/google/android/gms/measurement/internal/zzkc;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzc()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 85
    return v9

    .line 86
    .line 87
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eqz v3, :cond_9

    .line 97
    .line 98
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 99
    .line 100
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbi;->zzcn:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(Lcom/google/android/gms/measurement/internal/zzfi;)Z

    .line 104
    move-result v3

    .line 105
    .line 106
    if-eqz v3, :cond_9

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzp()Lcom/google/android/gms/measurement/internal/zziq;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()Lcom/google/android/gms/measurement/internal/zzkp;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzaa()Lcom/google/android/gms/measurement/internal/zzam;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzam;->zza:Landroid/os/Bundle;

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    const/4 v3, 0x0

    .line 128
    :goto_0
    const/4 v4, 0x1

    .line 129
    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzah:I

    .line 133
    .line 134
    add-int/lit8 v1, v0, 0x1

    .line 135
    .line 136
    iput v1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzah:I

    .line 137
    .line 138
    const/16 v1, 0xa

    .line 139
    .line 140
    if-ge v0, v1, :cond_3

    .line 141
    move v9, v4

    .line 142
    .line 143
    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    if-eqz v9, :cond_4

    .line 152
    .line 153
    const-string v1, "Retrying."

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :cond_4
    const-string v1, "Skipping."

    .line 157
    .line 158
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v3, "Failed to retrieve DMA consent from the service, "

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v1, " retryCount"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzah:I

    .line 178
    .line 179
    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    return v9

    .line 186
    .line 187
    :cond_5
    const/16 v5, 0x64

    .line 188
    .line 189
    .line 190
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzih;

    .line 191
    move-result-object v6

    .line 192
    .line 193
    const-string v7, "&gcs="

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzih;->zzf()Ljava/lang/String;

    .line 200
    move-result-object v6

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzay;

    .line 207
    move-result-object v5

    .line 208
    .line 209
    const-string v6, "&dma="

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzay;->zzd()Ljava/lang/Boolean;

    .line 216
    move-result-object v6

    .line 217
    .line 218
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 219
    .line 220
    if-ne v6, v7, :cond_6

    .line 221
    move v6, v9

    .line 222
    goto :goto_2

    .line 223
    :cond_6
    move v6, v4

    .line 224
    .line 225
    .line 226
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzay;->zze()Ljava/lang/String;

    .line 230
    move-result-object v6

    .line 231
    .line 232
    .line 233
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    move-result v6

    .line 235
    .line 236
    if-nez v6, :cond_7

    .line 237
    .line 238
    const-string v6, "&dma_cps="

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzay;->zze()Ljava/lang/String;

    .line 245
    move-result-object v5

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzay;->zza(Landroid/os/Bundle;)Ljava/lang/Boolean;

    .line 252
    move-result-object v3

    .line 253
    .line 254
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 255
    .line 256
    if-ne v3, v5, :cond_8

    .line 257
    move v4, v9

    .line 258
    .line 259
    :cond_8
    const-string v3, "&npa="

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 269
    move-result-object v3

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    .line 273
    move-result-object v3

    .line 274
    .line 275
    const-string v4, "Consent query parameters to Bow"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzt()Lcom/google/android/gms/measurement/internal/zznd;

    .line 282
    move-result-object v3

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzh()Lcom/google/android/gms/measurement/internal/zzfl;

    .line 286
    .line 287
    .line 288
    const-wide/32 v4, 0x14051

    .line 289
    .line 290
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 291
    move-object v6, v1

    .line 292
    .line 293
    check-cast v6, Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgd;->zzp:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->zza()J

    .line 303
    move-result-wide v7

    .line 304
    .line 305
    const-wide/16 v10, 0x1

    .line 306
    sub-long/2addr v7, v10

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object v10

    .line 311
    move-object v1, v3

    .line 312
    move-wide v2, v4

    .line 313
    move-object v4, v0

    .line 314
    move-object v5, v6

    .line 315
    move-wide v6, v7

    .line 316
    move-object v8, v10

    .line 317
    .line 318
    .line 319
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zznd;->zza(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    .line 320
    move-result-object v4

    .line 321
    .line 322
    if-eqz v4, :cond_a

    .line 323
    .line 324
    .line 325
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzai()Lcom/google/android/gms/measurement/internal/zzkc;

    .line 326
    move-result-object v2

    .line 327
    .line 328
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzhh;

    .line 329
    .line 330
    .line 331
    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzhh;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzab()V

    .line 338
    .line 339
    .line 340
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 347
    move-result-object v8

    .line 348
    .line 349
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzke;

    .line 350
    const/4 v5, 0x0

    .line 351
    const/4 v6, 0x0

    .line 352
    move-object v1, v10

    .line 353
    move-object v3, v0

    .line 354
    .line 355
    .line 356
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzkc;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzkb;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Ljava/lang/Runnable;)V

    .line 360
    :cond_a
    return v9

    .line 361
    .line 362
    .line 363
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 364
    move-result-object v0

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc()Lcom/google/android/gms/measurement/internal/zzft;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V

    .line 374
    return v9
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzb(Z)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzaf:Z

    return-void
.end method

.method public final zzc()I
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzv()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzae:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x2

    .line 29
    return v0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzad()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    return v0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzn()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzu()Ljava/lang/Boolean;

    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    return v1

    .line 57
    :cond_3
    const/4 v0, 0x3

    .line 58
    return v0

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 61
    .line 62
    const-string v2, "firebase_analytics_collection_enabled"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzg(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    return v1

    .line 76
    :cond_5
    const/4 v0, 0x4

    .line 77
    return v0

    .line 78
    .line 79
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzad:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    return v1

    .line 89
    :cond_7
    const/4 v0, 0x5

    .line 90
    return v0

    .line 91
    .line 92
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzac:Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_9

    .line 103
    return v1

    .line 104
    :cond_9
    const/4 v0, 0x7

    .line 105
    return v0

    .line 106
    :cond_a
    return v1
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzh:Lcom/google/android/gms/measurement/internal/zzae;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzb;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzs:Lcom/google/android/gms/measurement/internal/zzb;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "Component not created"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzi:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzx:Lcom/google/android/gms/measurement/internal/zzba;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzx:Lcom/google/android/gms/measurement/internal/zzba;

    .line 8
    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 8
    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzv:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 8
    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzfq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzo:Lcom/google/android/gms/measurement/internal/zzfq;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzic;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 8
    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzae()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzk:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzid;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzj:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 8
    return-object v0
.end method

.method final zzo()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzl:Lcom/google/android/gms/measurement/internal/zzgy;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zziq;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzr:Lcom/google/android/gms/measurement/internal/zziq;

    .line 8
    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzkh;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzq:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzq:Lcom/google/android/gms/measurement/internal/zzkh;

    .line 8
    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzw:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 8
    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzlx;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzm:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zze;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzm:Lcom/google/android/gms/measurement/internal/zzlx;

    .line 8
    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zznd;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Lcom/google/android/gms/measurement/internal/zzid;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzn:Lcom/google/android/gms/measurement/internal/zznd;

    .line 8
    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method final zzy()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "Unexpected call on client side"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method final zzz()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->zzai:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    return-void
.end method
