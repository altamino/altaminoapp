.class public Lcom/mixpanel/android/mpmetrics/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.Conf"

.field static final REFERRER_PREFS_NAME:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.ReferralInfo"

.field public static final VERSION:Ljava/lang/String; = "7.5.2"


# instance fields
.field private final mBulkUploadLimit:I

.field private final mDataExpiration:J

.field private final mDisableAppOpenEvent:Z

.field private final mDisableExceptionHandler:Z

.field private mEventsEndpoint:Ljava/lang/String;

.field private mFlushBatchSize:I

.field private final mFlushInterval:I

.field private final mFlushOnBackground:Z

.field private mGroupsEndpoint:Ljava/lang/String;

.field private mInstanceName:Ljava/lang/String;

.field private mMaximumDatabaseLimit:I

.field private final mMinSessionDuration:I

.field private final mMinimumDatabaseLimit:I

.field private mOfflineMode:Lcom/mixpanel/android/util/e;

.field private mPeopleEndpoint:Ljava/lang/String;

.field private final mRemoveLegacyResidualFiles:Z

.field private final mResourcePackageName:Ljava/lang/String;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSessionTimeoutDuration:I

.field private mTrackAutomaticEvents:Z

.field private mUseIpAddressForGeolocation:Z

.field private serverCallbacks:Lcom/mixpanel/android/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-string p2, "MixpanelAPI.Conf"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mTrackAutomaticEvents:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :try_start_0
    const-string v2, "TLS"

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    .line 26
    const-string v3, "System has no SSL support. Built-in events editor will not be available"

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v3, v2}, Lcom/mixpanel/android/util/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    :goto_0
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/d;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mInstanceName:Ljava/lang/String;

    .line 34
    .line 35
    const-string p3, "com.mixpanel.android.MPConfig.EnableDebugLogging"

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    move-result p3

    .line 41
    .line 42
    sput-boolean p3, Lcom/mixpanel/android/mpmetrics/d;->DEBUG:Z

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    const/4 p3, 0x2

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Lcom/mixpanel/android/util/d;->g(I)V

    .line 49
    .line 50
    :cond_0
    const-string p3, "com.mixpanel.android.MPConfig.DebugFlushInterval"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 54
    move-result p3

    .line 55
    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    const-string p3, "We do not support com.mixpanel.android.MPConfig.DebugFlushInterval anymore. There will only be one flush interval. Please, update your AndroidManifest.xml."

    .line 59
    .line 60
    .line 61
    invoke-static {p2, p3}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    :cond_1
    const-string p3, "com.mixpanel.android.MPConfig.BulkUploadLimit"

    .line 64
    .line 65
    const/16 v2, 0x28

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 69
    move-result p3

    .line 70
    .line 71
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mBulkUploadLimit:I

    .line 72
    .line 73
    const-string p3, "com.mixpanel.android.MPConfig.FlushInterval"

    .line 74
    .line 75
    .line 76
    const v2, 0xea60

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 80
    move-result p3

    .line 81
    .line 82
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mFlushInterval:I

    .line 83
    .line 84
    const-string p3, "com.mixpanel.android.MPConfig.FlushBatchSize"

    .line 85
    .line 86
    const/16 v2, 0x32

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 90
    move-result p3

    .line 91
    .line 92
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mFlushBatchSize:I

    .line 93
    .line 94
    const-string p3, "com.mixpanel.android.MPConfig.FlushOnBackground"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 98
    move-result p3

    .line 99
    .line 100
    iput-boolean p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mFlushOnBackground:Z

    .line 101
    .line 102
    const-string p3, "com.mixpanel.android.MPConfig.MinimumDatabaseLimit"

    .line 103
    .line 104
    const/high16 v2, 0x1400000

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 108
    move-result p3

    .line 109
    .line 110
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mMinimumDatabaseLimit:I

    .line 111
    .line 112
    const-string p3, "com.mixpanel.android.MPConfig.MaximumDatabaseLimit"

    .line 113
    .line 114
    .line 115
    const v2, 0x7fffffff

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 119
    move-result p3

    .line 120
    .line 121
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mMaximumDatabaseLimit:I

    .line 122
    .line 123
    const-string p3, "com.mixpanel.android.MPConfig.ResourcePackageName"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object p3

    .line 128
    .line 129
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mResourcePackageName:Ljava/lang/String;

    .line 130
    .line 131
    const-string p3, "com.mixpanel.android.MPConfig.DisableAppOpenEvent"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 135
    move-result p3

    .line 136
    .line 137
    iput-boolean p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mDisableAppOpenEvent:Z

    .line 138
    .line 139
    const-string p3, "com.mixpanel.android.MPConfig.DisableExceptionHandler"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 143
    move-result p3

    .line 144
    .line 145
    iput-boolean p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mDisableExceptionHandler:Z

    .line 146
    .line 147
    const-string p3, "com.mixpanel.android.MPConfig.MinimumSessionDuration"

    .line 148
    .line 149
    const/16 v3, 0x2710

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 153
    move-result p3

    .line 154
    .line 155
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mMinSessionDuration:I

    .line 156
    .line 157
    const-string p3, "com.mixpanel.android.MPConfig.SessionTimeoutDuration"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 161
    move-result p3

    .line 162
    .line 163
    iput p3, p0, Lcom/mixpanel/android/mpmetrics/d;->mSessionTimeoutDuration:I

    .line 164
    .line 165
    const-string p3, "com.mixpanel.android.MPConfig.UseIpAddressForGeolocation"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    move-result v2

    .line 170
    .line 171
    iput-boolean v2, p0, Lcom/mixpanel/android/mpmetrics/d;->mUseIpAddressForGeolocation:Z

    .line 172
    .line 173
    const-string v2, "com.mixpanel.android.MPConfig.RemoveLegacyResidualFiles"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 177
    move-result v1

    .line 178
    .line 179
    iput-boolean v1, p0, Lcom/mixpanel/android/mpmetrics/d;->mRemoveLegacyResidualFiles:Z

    .line 180
    .line 181
    const-string v1, "com.mixpanel.android.MPConfig.DataExpiration"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    if-eqz v1, :cond_4

    .line 188
    .line 189
    :try_start_1
    instance-of v2, v1, Ljava/lang/Integer;

    .line 190
    .line 191
    if-eqz v2, :cond_2

    .line 192
    .line 193
    check-cast v1, Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 197
    move-result v1

    .line 198
    int-to-long v1, v1

    .line 199
    goto :goto_2

    .line 200
    :catch_1
    move-exception v1

    .line 201
    goto :goto_1

    .line 202
    .line 203
    :cond_2
    instance-of v2, v1, Ljava/lang/Float;

    .line 204
    .line 205
    if-eqz v2, :cond_3

    .line 206
    .line 207
    check-cast v1, Ljava/lang/Float;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 211
    move-result v1

    .line 212
    float-to-long v1, v1

    .line 213
    goto :goto_2

    .line 214
    .line 215
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 216
    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v1, " is not a number."

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v1

    .line 237
    .line 238
    .line 239
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 240
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .line 242
    :goto_1
    const-string v2, "Error parsing com.mixpanel.android.MPConfig.DataExpiration meta-data value"

    .line 243
    .line 244
    .line 245
    invoke-static {p2, v2, v1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :cond_4
    const-wide/32 v1, 0x19bfcc00

    .line 249
    .line 250
    :goto_2
    iput-wide v1, p0, Lcom/mixpanel/android/mpmetrics/d;->mDataExpiration:J

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 254
    move-result p3

    .line 255
    xor-int/2addr p3, v0

    .line 256
    .line 257
    const-string v0, "com.mixpanel.android.MPConfig.EventsEndpoint"

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    const-string v1, "https://api.mixpanel.com"

    .line 264
    .line 265
    if-eqz v0, :cond_6

    .line 266
    .line 267
    if-eqz p3, :cond_5

    .line 268
    goto :goto_3

    .line 269
    .line 270
    .line 271
    :cond_5
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/d;->w()Z

    .line 272
    move-result v2

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, v0, v2}, Lcom/mixpanel/android/mpmetrics/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    .line 279
    :goto_3
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/d;->y(Ljava/lang/String;)V

    .line 280
    goto :goto_4

    .line 281
    .line 282
    .line 283
    :cond_6
    invoke-direct {p0, v1}, Lcom/mixpanel/android/mpmetrics/d;->z(Ljava/lang/String;)V

    .line 284
    .line 285
    :goto_4
    const-string v0, "com.mixpanel.android.MPConfig.PeopleEndpoint"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    if-eqz v0, :cond_8

    .line 292
    .line 293
    if-eqz p3, :cond_7

    .line 294
    goto :goto_5

    .line 295
    .line 296
    .line 297
    :cond_7
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/d;->w()Z

    .line 298
    move-result v2

    .line 299
    .line 300
    .line 301
    invoke-direct {p0, v0, v2}, Lcom/mixpanel/android/mpmetrics/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    .line 304
    .line 305
    :goto_5
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/d;->C(Ljava/lang/String;)V

    .line 306
    goto :goto_6

    .line 307
    .line 308
    .line 309
    :cond_8
    invoke-direct {p0, v1}, Lcom/mixpanel/android/mpmetrics/d;->D(Ljava/lang/String;)V

    .line 310
    .line 311
    :goto_6
    const-string v0, "com.mixpanel.android.MPConfig.GroupsEndpoint"

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    move-result-object p1

    .line 316
    .line 317
    if-eqz p1, :cond_a

    .line 318
    .line 319
    if-eqz p3, :cond_9

    .line 320
    goto :goto_7

    .line 321
    .line 322
    .line 323
    :cond_9
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/d;->w()Z

    .line 324
    move-result p3

    .line 325
    .line 326
    .line 327
    invoke-direct {p0, p1, p3}, Lcom/mixpanel/android/mpmetrics/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 328
    move-result-object p1

    .line 329
    .line 330
    .line 331
    :goto_7
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/d;->A(Ljava/lang/String;)V

    .line 332
    goto :goto_8

    .line 333
    .line 334
    .line 335
    :cond_a
    invoke-direct {p0, v1}, Lcom/mixpanel/android/mpmetrics/d;->B(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :goto_8
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->toString()Ljava/lang/String;

    .line 339
    move-result-object p1

    .line 340
    .line 341
    .line 342
    invoke-static {p2, p1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method private A(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/d;->mGroupsEndpoint:Ljava/lang/String;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, "/groups/"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/d;->w()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/d;->A(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private C(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/d;->mPeopleEndpoint:Ljava/lang/String;

    return-void
.end method

.method private D(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, "/engage/"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/d;->w()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/d;->C(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private e(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    const-string v0, "?ip="

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    const-string v2, "0"

    .line 9
    .line 10
    const-string v3, "1"

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 22
    move-result v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    move-object v2, v3

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    move-object v2, v3

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/d;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/mixpanel/android/mpmetrics/d;->x(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/d;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mUseIpAddressForGeolocation:Z

    return v0
.end method

.method static x(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/d;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const/16 v2, 0x80

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    :goto_0
    new-instance v2, Lcom/mixpanel/android/mpmetrics/d;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v1, p0, p1}, Lcom/mixpanel/android/mpmetrics/d;-><init>(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v2

    .line 33
    .line 34
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, "Can\'t configure Mixpanel with package name "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    throw p1
.end method

.method private y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/d;->mEventsEndpoint:Ljava/lang/String;

    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, "/track/"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/d;->w()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/d;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/d;->y(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mBulkUploadLimit:I

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mDataExpiration:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mDisableAppOpenEvent:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mDisableExceptionHandler:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mEventsEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mFlushBatchSize:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mFlushInterval:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mFlushOnBackground:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mGroupsEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mMaximumDatabaseLimit:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mMinimumDatabaseLimit:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mMinSessionDuration:I

    return v0
.end method

.method public declared-synchronized p()Lcom/mixpanel/android/util/e;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mPeopleEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lcom/mixpanel/android/util/f;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mRemoveLegacyResidualFiles:Z

    return v0
.end method

.method public declared-synchronized t()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Mixpanel (7.5.2) configured with:\n    TrackAutomaticEvents: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->v()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "\n    BulkUploadLimit "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->a()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "\n    FlushInterval "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->h()I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->g()I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "\n    DataExpiration "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->b()J

    .line 60
    move-result-wide v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "\n    MinimumDatabaseLimit "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->n()I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, "\n    MaximumDatabaseLimit "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->m()I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "\n    DisableAppOpenEvent "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->c()Z

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "\n    EnableDebugLogging "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    sget-boolean v1, Lcom/mixpanel/android/mpmetrics/d;->DEBUG:Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "\n    EventsEndpoint "

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->f()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v1, "\n    PeopleEndpoint "

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->q()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "\n    MinimumSessionDuration: "

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->o()I

    .line 142
    move-result v1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, "\n    SessionTimeoutDuration: "

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->u()I

    .line 154
    move-result v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, "\n    DisableExceptionHandler: "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->d()Z

    .line 166
    move-result v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v1, "\n    FlushOnBackground: "

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/d;->i()Z

    .line 178
    move-result v1

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mSessionTimeoutDuration:I

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/d;->mTrackAutomaticEvents:Z

    return v0
.end method
