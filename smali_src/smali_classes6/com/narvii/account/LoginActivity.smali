.class public Lcom/narvii/account/LoginActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/account/LoginActivity$SEL;,
        Lcom/narvii/account/LoginActivity$PromptType;
    }
.end annotation


# static fields
.field static final JOIN_REQUEST:I = 0x2

.field public static final KEYSTORE_SERVICE_KEY:Ljava/lang/String; = "keystore"

.field public static final LOGIN_WITH_JOIN_COMMUNITY_INVITER:Ljava/lang/String; = "inviter"

.field public static final MOBILE_SIGN_UP_PROVIDER:I = 0x8

.field public static final NOTIFY_ID:I = 0x1201

.field static final NO_CODE:I = -0x1

.field public static instance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/account/LoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static showPhoneNumberItem:Ljava/lang/Boolean;


# instance fields
.field accMax:[F

.field accMin:[F

.field account:Lcom/narvii/account/AccountService;

.field authPromptLogged:Z

.field birthday:Ljava/lang/String;

.field private creatingAccount:Z

.field private crossAppFinishing:Z

.field private density:F

.field private eventLogProfileListener:Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

.field private exists:Z

.field fadeIn:Landroid/view/animation/Animation;

.field fadeOut:Landroid/view/animation/Animation;

.field private finishPageFinishing:Z

.field private final finishPageReceiver:Landroid/content/BroadcastReceiver;

.field gyoMax:[F

.field gyoMin:[F

.field private httpCode:I

.field private ic:I

.field public isFinishingCreateAccount:Z

.field private isRequesting:Z

.field public joiningCommunity:Z

.field lightMax:[F

.field lightMin:[F

.field loggingMethod:Ljava/lang/String;

.field private loginViewModel:Lcom/narvii/account/vm/LoginViewModel;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mc:I

.field private md:Ljava/security/MessageDigest;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private sel:Landroid/hardware/SensorEventListener;

.field signupWakeup:Z

.field startingActivity:Z

.field startingRequestCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public statEmailVerificationSkipped:Ljava/lang/Boolean;

.field statErrorCode:I

.field public statMaxLoginStep:I

.field public statMaxSignupSetp:I

.field statType:I

.field submittingFragment:Lcom/narvii/account/AccountBaseFragment;

.field final updateViewsR:Ljava/lang/Runnable;

.field private username:Ljava/lang/String;

.field private ut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/narvii/account/LoginActivity;->showPhoneNumberItem:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->exists:Z

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    iput-object v1, p0, Lcom/narvii/account/LoginActivity;->username:Ljava/lang/String;

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/account/LoginActivity;->httpCode:I

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/account/LoginActivity$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/account/LoginActivity$1;-><init>(Lcom/narvii/account/LoginActivity;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/account/LoginActivity$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/account/LoginActivity$2;-><init>(Lcom/narvii/account/LoginActivity;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->finishPageReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/account/v;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/account/v;-><init>(Lcom/narvii/account/LoginActivity;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->updateViewsR:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method private executePendingOnFinishLogin(Lcom/narvii/account/AccountBaseFragment;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lcom/narvii/account/LoginFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/account/LoginFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/account/LoginFragment;->executePendingFinishRequest()V

    .line 13
    :cond_1
    return-void
.end method

.method private finishWithResult(Z)V
    .locals 2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newAccount"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 17
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->finish()V

    return-void
.end method

.method private getIds(I)[B
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "SHA-1"

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    .line 9
    if-eq p1, v3, :cond_8

    .line 10
    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    if-eq p1, v2, :cond_4

    .line 14
    const/4 v7, 0x4

    .line 15
    .line 16
    if-eq p1, v7, :cond_1

    .line 17
    const/4 v1, 0x5

    .line 18
    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    .line 34
    :try_start_1
    new-array v9, v2, [Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "_data"

    .line 37
    .line 38
    aput-object v1, v9, v5

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "width"

    .line 42
    .line 43
    aput-object v1, v9, v4

    .line 44
    .line 45
    const-string v1, "height"

    .line 46
    .line 47
    aput-object v1, v9, v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 64
    move-result v2

    .line 65
    .line 66
    iput v2, p0, Lcom/narvii/account/LoginActivity;->ic:I

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    move v2, v5

    .line 85
    .line 86
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v8

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 100
    move-result v8

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 107
    move-result v8

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v7

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 118
    move-result-object v7

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 122
    add-int/2addr v2, v4

    .line 123
    .line 124
    if-ge v2, v6, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 128
    move-result v7

    .line 129
    .line 130
    if-nez v7, :cond_2

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .line 135
    .line 136
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    const/16 v2, 0x80

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 156
    move-result v3

    .line 157
    .line 158
    if-ge v3, v6, :cond_6

    .line 159
    .line 160
    new-instance v2, Landroid/content/Intent;

    .line 161
    .line 162
    const-string v3, "android.intent.action.MAIN"

    .line 163
    .line 164
    .line 165
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    const/high16 v3, 0x20000

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v2

    .line 180
    .line 181
    if-eqz v2, :cond_7

    .line 182
    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 188
    .line 189
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 190
    .line 191
    if-nez v2, :cond_5

    .line 192
    move-object v2, v0

    .line 193
    goto :goto_1

    .line 194
    .line 195
    :cond_5
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 199
    move-result-object v2

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 203
    goto :goto_0

    .line 204
    .line 205
    .line 206
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    .line 210
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result v2

    .line 212
    .line 213
    if-eqz v2, :cond_7

    .line 214
    .line 215
    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    move-result-object v2

    .line 218
    .line 219
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 220
    .line 221
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 225
    move-result-object v2

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 229
    goto :goto_2

    .line 230
    .line 231
    .line 232
    :cond_7
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 233
    move-result-object p1

    .line 234
    return-object p1

    .line 235
    .line 236
    .line 237
    :cond_8
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    const/16 v1, 0x1000

    .line 241
    .line 242
    new-array v1, v1, [B

    .line 243
    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v6

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 270
    move-result-object v6

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 274
    .line 275
    new-array v6, v2, [Ljava/lang/String;

    .line 276
    .line 277
    const-string v7, "/proc/cpuinfo"

    .line 278
    .line 279
    aput-object v7, v6, v5

    .line 280
    .line 281
    const-string v7, "/proc/partitions"

    .line 282
    .line 283
    aput-object v7, v6, v4

    .line 284
    .line 285
    const-string v4, "/proc/version"

    .line 286
    .line 287
    aput-object v4, v6, v3

    .line 288
    move v3, v5

    .line 289
    :goto_3
    const/4 v4, -0x1

    .line 290
    .line 291
    if-ge v3, v2, :cond_a

    .line 292
    .line 293
    aget-object v7, v6, v3

    .line 294
    .line 295
    new-instance v8, Ljava/io/FileInputStream;

    .line 296
    .line 297
    .line 298
    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_4
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 302
    move-result v7

    .line 303
    .line 304
    if-eq v7, v4, :cond_9

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v1, v5, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 308
    goto :goto_4

    .line 309
    .line 310
    .line 311
    :cond_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 312
    .line 313
    add-int/lit8 v3, v3, 0x1

    .line 314
    goto :goto_3

    .line 315
    .line 316
    :cond_a
    new-instance v2, Ljava/io/FileInputStream;

    .line 317
    .line 318
    const-string v3, "/proc/meminfo"

    .line 319
    .line 320
    .line 321
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 325
    move-result v3

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 329
    .line 330
    new-instance v2, Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    invoke-direct {v2, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 334
    .line 335
    const-string v1, "MemTotal:"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 339
    move-result v1

    .line 340
    .line 341
    if-eqz v1, :cond_b

    .line 342
    .line 343
    const/16 v1, 0xa

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 347
    move-result v1

    .line 348
    .line 349
    if-eq v1, v4, :cond_b

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 357
    move-result-object v1

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 361
    .line 362
    .line 363
    :cond_b
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 364
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 365
    return-object p1

    .line 366
    :catch_1
    :goto_5
    return-object v0
.end method

.method private getVals()[I
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->lightMin:[F

    .line 3
    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/high16 v2, -0x3e600000    # -20.0f

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    const/high16 v4, 0x41700000    # 15.0f

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v7, p0, Lcom/narvii/account/LoginActivity;->lightMax:[F

    .line 16
    .line 17
    if-eqz v7, :cond_3

    .line 18
    .line 19
    aget v7, v7, v5

    .line 20
    .line 21
    aget v0, v0, v5

    .line 22
    .line 23
    sub-float v0, v7, v0

    .line 24
    .line 25
    cmpl-float v8, v0, v6

    .line 26
    .line 27
    if-nez v8, :cond_1

    .line 28
    .line 29
    cmpl-float v0, v7, v6

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    const/high16 v0, -0x3f600000    # -5.0f

    .line 36
    :goto_0
    move v7, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    mul-float/2addr v0, v1

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 42
    move-result v0

    .line 43
    .line 44
    cmpg-float v7, v0, v4

    .line 45
    .line 46
    if-gez v7, :cond_2

    .line 47
    const/4 v7, 0x4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v7, v5

    .line 50
    :goto_1
    add-float/2addr v0, v6

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v7, v5

    .line 53
    move v0, v6

    .line 54
    .line 55
    :goto_2
    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 56
    .line 57
    if-eqz v8, :cond_7

    .line 58
    .line 59
    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->accMax:[F

    .line 60
    .line 61
    if-eqz v8, :cond_7

    .line 62
    move v8, v5

    .line 63
    move v9, v6

    .line 64
    .line 65
    :goto_3
    iget-object v10, p0, Lcom/narvii/account/LoginActivity;->accMax:[F

    .line 66
    array-length v11, v10

    .line 67
    .line 68
    if-ge v8, v11, :cond_4

    .line 69
    .line 70
    aget v10, v10, v8

    .line 71
    .line 72
    iget-object v11, p0, Lcom/narvii/account/LoginActivity;->accMin:[F

    .line 73
    .line 74
    aget v11, v11, v8

    .line 75
    sub-float/2addr v10, v11

    .line 76
    add-float/2addr v9, v10

    .line 77
    .line 78
    add-int/lit8 v8, v8, 0x1

    .line 79
    goto :goto_3

    .line 80
    .line 81
    :cond_4
    cmpl-float v8, v9, v6

    .line 82
    .line 83
    if-nez v8, :cond_5

    .line 84
    .line 85
    or-int/lit8 v7, v7, 0x8

    .line 86
    .line 87
    const/high16 v8, -0x3e100000    # -30.0f

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_5
    const/high16 v8, 0x40400000    # 3.0f

    .line 91
    mul-float/2addr v9, v8

    .line 92
    .line 93
    const/high16 v8, 0x41f00000    # 30.0f

    .line 94
    .line 95
    .line 96
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 97
    move-result v9

    .line 98
    .line 99
    cmpg-float v8, v9, v8

    .line 100
    .line 101
    if-gez v8, :cond_6

    .line 102
    .line 103
    or-int/lit8 v7, v7, 0x10

    .line 104
    :cond_6
    move v8, v9

    .line 105
    :goto_4
    add-float/2addr v0, v8

    .line 106
    .line 107
    :cond_7
    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 108
    .line 109
    const/high16 v9, -0x3ee00000    # -10.0f

    .line 110
    .line 111
    const/high16 v10, 0x41200000    # 10.0f

    .line 112
    .line 113
    if-eqz v8, :cond_b

    .line 114
    .line 115
    iget-object v8, p0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    .line 116
    .line 117
    if-eqz v8, :cond_b

    .line 118
    move v8, v6

    .line 119
    .line 120
    :goto_5
    iget-object v11, p0, Lcom/narvii/account/LoginActivity;->gyoMax:[F

    .line 121
    array-length v12, v11

    .line 122
    .line 123
    if-ge v5, v12, :cond_8

    .line 124
    .line 125
    aget v11, v11, v5

    .line 126
    .line 127
    iget-object v12, p0, Lcom/narvii/account/LoginActivity;->gyoMin:[F

    .line 128
    .line 129
    aget v12, v12, v5

    .line 130
    sub-float/2addr v11, v12

    .line 131
    add-float/2addr v8, v11

    .line 132
    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_5

    .line 135
    .line 136
    :cond_8
    cmpl-float v5, v8, v6

    .line 137
    .line 138
    if-nez v5, :cond_9

    .line 139
    .line 140
    or-int/lit8 v7, v7, 0x20

    .line 141
    move v5, v9

    .line 142
    goto :goto_6

    .line 143
    :cond_9
    mul-float/2addr v8, v10

    .line 144
    .line 145
    .line 146
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    .line 147
    move-result v5

    .line 148
    .line 149
    cmpg-float v4, v5, v4

    .line 150
    .line 151
    if-gez v4, :cond_a

    .line 152
    .line 153
    or-int/lit8 v7, v7, 0x40

    .line 154
    :cond_a
    :goto_6
    add-float/2addr v0, v5

    .line 155
    .line 156
    .line 157
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 158
    move-result-object v4

    .line 159
    .line 160
    const-string v5, "android.hardware.bluetooth"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 164
    move-result v5

    .line 165
    .line 166
    if-eqz v5, :cond_c

    .line 167
    add-float/2addr v0, v10

    .line 168
    goto :goto_7

    .line 169
    .line 170
    :cond_c
    or-int/lit16 v7, v7, 0x400

    .line 171
    .line 172
    :goto_7
    const-string v5, "android.hardware.bluetooth_le"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 176
    move-result v5

    .line 177
    .line 178
    const/high16 v8, 0x40a00000    # 5.0f

    .line 179
    .line 180
    if-eqz v5, :cond_d

    .line 181
    add-float/2addr v0, v8

    .line 182
    goto :goto_8

    .line 183
    .line 184
    :cond_d
    or-int/lit16 v7, v7, 0x800

    .line 185
    .line 186
    :goto_8
    const-string v5, "android.hardware.camera.autofocus"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 190
    move-result v5

    .line 191
    .line 192
    if-eqz v5, :cond_e

    .line 193
    add-float/2addr v0, v10

    .line 194
    goto :goto_9

    .line 195
    .line 196
    :cond_e
    or-int/lit16 v7, v7, 0x1000

    .line 197
    .line 198
    :goto_9
    const-string v5, "android.hardware.camera.flash"

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 202
    move-result v5

    .line 203
    .line 204
    if-eqz v5, :cond_f

    .line 205
    add-float/2addr v0, v10

    .line 206
    goto :goto_a

    .line 207
    .line 208
    :cond_f
    or-int/lit16 v7, v7, 0x2000

    .line 209
    .line 210
    :goto_a
    const-string v5, "android.hardware.sensor.barometer"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 214
    move-result v5

    .line 215
    .line 216
    if-eqz v5, :cond_10

    .line 217
    add-float/2addr v0, v8

    .line 218
    goto :goto_b

    .line 219
    .line 220
    :cond_10
    or-int/lit16 v7, v7, 0x4000

    .line 221
    .line 222
    :goto_b
    const-string v5, "android.hardware.sensor.compass"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 226
    move-result v5

    .line 227
    .line 228
    if-eqz v5, :cond_11

    .line 229
    add-float/2addr v0, v10

    .line 230
    goto :goto_c

    .line 231
    .line 232
    .line 233
    :cond_11
    const v5, 0x8000

    .line 234
    or-int/2addr v7, v5

    .line 235
    .line 236
    :goto_c
    const-string v5, "android.hardware.sensor.gyroscope"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 240
    move-result v5

    .line 241
    .line 242
    if-eqz v5, :cond_12

    .line 243
    add-float/2addr v0, v10

    .line 244
    goto :goto_d

    .line 245
    .line 246
    :cond_12
    const/high16 v5, 0x10000

    .line 247
    or-int/2addr v7, v5

    .line 248
    .line 249
    :goto_d
    const-string v5, "android.hardware.sensor.light"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 253
    move-result v5

    .line 254
    .line 255
    if-eqz v5, :cond_13

    .line 256
    add-float/2addr v0, v10

    .line 257
    goto :goto_e

    .line 258
    .line 259
    :cond_13
    const/high16 v5, 0x20000

    .line 260
    or-int/2addr v7, v5

    .line 261
    .line 262
    :goto_e
    const-string v5, "android.hardware.sensor.proximity"

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 266
    move-result v4

    .line 267
    .line 268
    if-eqz v4, :cond_14

    .line 269
    add-float/2addr v0, v8

    .line 270
    goto :goto_f

    .line 271
    .line 272
    :cond_14
    const/high16 v4, 0x40000

    .line 273
    or-int/2addr v7, v4

    .line 274
    :goto_f
    const/4 v4, -0x1

    .line 275
    .line 276
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 277
    .line 278
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    .line 279
    .line 280
    .line 281
    invoke-direct {v5, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    const/4 v11, 0x0

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    move-result-object v5

    .line 287
    .line 288
    const-string v11, "level"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v11, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 292
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    :try_start_1
    const-string v12, "scale"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, v12, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 298
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    goto :goto_10

    .line 300
    :catch_0
    move v11, v4

    .line 301
    .line 302
    :catch_1
    :goto_10
    const/16 v5, 0x32

    .line 303
    .line 304
    const/16 v12, 0x64

    .line 305
    .line 306
    if-ne v11, v5, :cond_15

    .line 307
    .line 308
    if-ne v4, v12, :cond_15

    .line 309
    .line 310
    const/high16 v4, 0x100000

    .line 311
    :goto_11
    or-int/2addr v7, v4

    .line 312
    move v8, v6

    .line 313
    goto :goto_12

    .line 314
    .line 315
    :cond_15
    if-gez v11, :cond_16

    .line 316
    .line 317
    if-gez v4, :cond_16

    .line 318
    .line 319
    const/high16 v4, 0x200000

    .line 320
    goto :goto_11

    .line 321
    .line 322
    :cond_16
    if-ne v11, v12, :cond_17

    .line 323
    .line 324
    if-ne v4, v12, :cond_17

    .line 325
    goto :goto_12

    .line 326
    :cond_17
    move v8, v10

    .line 327
    :goto_12
    add-float/2addr v0, v8

    .line 328
    .line 329
    iget v4, p0, Lcom/narvii/account/LoginActivity;->ut:I

    .line 330
    .line 331
    const/16 v5, 0x7530

    .line 332
    .line 333
    const/high16 v8, 0x41a00000    # 20.0f

    .line 334
    .line 335
    if-ge v4, v5, :cond_18

    .line 336
    .line 337
    const/high16 v1, 0x400000

    .line 338
    :goto_13
    or-int/2addr v7, v1

    .line 339
    goto :goto_14

    .line 340
    .line 341
    :cond_18
    add-int/lit8 v4, v4, -0x1e

    .line 342
    int-to-float v2, v4

    .line 343
    mul-float/2addr v2, v1

    .line 344
    .line 345
    const/high16 v1, 0x42b40000    # 90.0f

    .line 346
    div-float/2addr v2, v1

    .line 347
    .line 348
    .line 349
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    .line 350
    move-result v2

    .line 351
    .line 352
    cmpg-float v1, v2, v8

    .line 353
    .line 354
    if-gez v1, :cond_19

    .line 355
    .line 356
    const/high16 v1, 0x800000

    .line 357
    goto :goto_13

    .line 358
    :cond_19
    :goto_14
    add-float/2addr v0, v2

    .line 359
    .line 360
    iget v1, p0, Lcom/narvii/account/LoginActivity;->ic:I

    .line 361
    .line 362
    if-ge v1, v3, :cond_1a

    .line 363
    .line 364
    const/high16 v1, 0x1000000

    .line 365
    :goto_15
    or-int/2addr v7, v1

    .line 366
    goto :goto_16

    .line 367
    .line 368
    :cond_1a
    const/16 v2, 0xa

    .line 369
    sub-int/2addr v1, v3

    .line 370
    .line 371
    .line 372
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 373
    move-result v1

    .line 374
    int-to-float v9, v1

    .line 375
    .line 376
    cmpg-float v1, v9, v10

    .line 377
    .line 378
    if-gez v1, :cond_1b

    .line 379
    .line 380
    const/high16 v1, 0x2000000

    .line 381
    goto :goto_15

    .line 382
    :cond_1b
    :goto_16
    add-float/2addr v0, v9

    .line 383
    .line 384
    iget v1, p0, Lcom/narvii/account/LoginActivity;->mc:I

    .line 385
    .line 386
    add-int/lit8 v1, v1, -0x6

    .line 387
    .line 388
    mul-int/lit8 v1, v1, 0x5

    .line 389
    .line 390
    const/16 v2, 0x14

    .line 391
    .line 392
    .line 393
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 394
    move-result v1

    .line 395
    int-to-float v1, v1

    .line 396
    .line 397
    cmpg-float v2, v1, v6

    .line 398
    .line 399
    if-gez v2, :cond_1c

    .line 400
    .line 401
    const/high16 v2, 0x4000000

    .line 402
    :goto_17
    or-int/2addr v7, v2

    .line 403
    goto :goto_18

    .line 404
    .line 405
    :cond_1c
    cmpg-float v2, v1, v8

    .line 406
    .line 407
    if-gez v2, :cond_1d

    .line 408
    .line 409
    const/high16 v2, 0x8000000

    .line 410
    goto :goto_17

    .line 411
    :cond_1d
    :goto_18
    add-float/2addr v0, v1

    .line 412
    .line 413
    const/high16 v1, 0x42c80000    # 100.0f

    .line 414
    mul-float/2addr v0, v1

    .line 415
    .line 416
    const/high16 v1, 0x43430000    # 195.0f

    .line 417
    div-float/2addr v0, v1

    .line 418
    float-to-int v0, v0

    .line 419
    sub-int/2addr v12, v0

    .line 420
    .line 421
    .line 422
    filled-new-array {v12, v7}, [I

    .line 423
    move-result-object v0

    .line 424
    return-object v0
.end method

.method private joinCommunity(ZLjava/lang/String;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "config"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    move-object v4, v0

    .line 12
    .line 13
    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "/community/join"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    const-string v1, "invitationId"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-string v2, "api"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    move-object v7, v1

    .line 54
    .line 55
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    new-instance v8, Lcom/narvii/account/LoginActivity$6;

    .line 62
    .line 63
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 64
    move-object v1, v8

    .line 65
    move-object v2, p0

    .line 66
    move v5, p1

    .line 67
    move-object v6, p2

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/narvii/account/LoginActivity$6;-><init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;Lcom/narvii/config/ConfigService;ZLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v0, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 74
    return-void
.end method

.method private synthetic lambda$sendingPublicKeyFailed$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    const p1, 0x7f120048

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 25
    return-void
.end method

.method private synthetic lambda$sendingPublicKeySucceed$0(ZZZ)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "eventLogProfile"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->getResponse()Lcom/narvii/logging/EventLogProfileResponse;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->getError()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/narvii/logging/EventLogProfileResponse;->needTriggerInterestPicker:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    const-string v2, "interestPicker"

    .line 34
    .line 35
    const-string v3, "login success directly"

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v1}, Lcom/narvii/util/InterestPickerUtils;->openInterestPicker(Landroid/content/Context;Lcom/narvii/logging/EventLogProfileResponse;)V

    .line 46
    :cond_2
    const/4 v1, 0x1

    .line 47
    .line 48
    :goto_1
    iget-object v2, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    :cond_3
    if-nez v1, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/services/EventLogProfileService;->refreshIfIdle()V

    .line 58
    .line 59
    new-instance p2, Lcom/narvii/account/LoginActivity$4;

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, p0, p1, p3}, Lcom/narvii/account/LoginActivity$4;-><init>(Lcom/narvii/account/LoginActivity;ZZ)V

    .line 63
    .line 64
    iput-object p2, p0, Lcom/narvii/account/LoginActivity;->eventLogProfileListener:Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-direct {p0, p3}, Lcom/narvii/account/LoginActivity;->finishWithResult(Z)V

    .line 72
    :goto_2
    return-void
.end method

.method public static synthetic s(Lcom/narvii/account/LoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginActivity;->lambda$sendingPublicKeyFailed$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(Lcom/narvii/app/NVActivity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I
    .param p3, "p3"    # Landroid/os/Bundle;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendingPublicKeyFailed(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ne p2, v1, :cond_0

    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, v0, v2, p2}, Lcom/narvii/account/LoginActivity;->trackLoginRegister(ZZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    new-instance p2, Lcom/narvii/account/t;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/narvii/account/t;-><init>(Lcom/narvii/account/LoginActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    .line 35
    return-void
.end method

.method private sendingPublicKeySucceed(ILcom/narvii/account/AccountBaseFragment;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/narvii/account/LoginActivity;->executePendingOnFinishLogin(Lcom/narvii/account/AccountBaseFragment;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    const-string v3, "skipInterestPicker"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    move-result v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v2, v0

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    const-string v4, "loginIntent"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    check-cast v3, Landroid/content/Intent;

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v3}, Lcom/narvii/account/LoginActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 80
    .line 81
    :cond_2
    iget-boolean v3, p0, Lcom/narvii/account/LoginActivity;->crossAppFinishing:Z

    .line 82
    .line 83
    new-instance v4, Lcom/narvii/account/u;

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, p0, v2, v3, p1}, Lcom/narvii/account/u;-><init>(Lcom/narvii/account/LoginActivity;ZZZ)V

    .line 87
    .line 88
    const-wide/16 v2, 0x78

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 92
    .line 93
    iget v2, p0, Lcom/narvii/account/LoginActivity;->statType:I

    .line 94
    const/4 v3, 0x4

    .line 95
    const/4 v4, 0x3

    .line 96
    const/4 v5, 0x2

    .line 97
    .line 98
    const/16 v6, 0xa

    .line 99
    const/4 v7, 0x0

    .line 100
    .line 101
    if-ne v2, v1, :cond_3

    .line 102
    .line 103
    const-string p2, "Phone Number"

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_3
    if-ne v2, v5, :cond_4

    .line 107
    .line 108
    const-string p2, "Email"

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :cond_4
    if-ne v2, v4, :cond_5

    .line 112
    .line 113
    const-string p2, "Facebook"

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_5
    if-ne v2, v3, :cond_6

    .line 117
    .line 118
    const-string p2, "Google"

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_6
    if-nez p2, :cond_7

    .line 122
    .line 123
    if-ne v2, v6, :cond_7

    .line 124
    .line 125
    const-string p2, "Auto Login"

    .line 126
    goto :goto_2

    .line 127
    :cond_7
    move-object p2, v7

    .line 128
    .line 129
    :goto_2
    if-nez p1, :cond_c

    .line 130
    .line 131
    if-eq v2, v1, :cond_b

    .line 132
    .line 133
    if-eq v2, v5, :cond_a

    .line 134
    .line 135
    if-eq v2, v4, :cond_9

    .line 136
    .line 137
    if-eq v2, v3, :cond_8

    .line 138
    goto :goto_3

    .line 139
    .line 140
    :cond_8
    const-string v2, "google"

    .line 141
    goto :goto_4

    .line 142
    .line 143
    :cond_9
    const-string v2, "facebook"

    .line 144
    goto :goto_4

    .line 145
    .line 146
    :cond_a
    const-string v2, "email"

    .line 147
    goto :goto_4

    .line 148
    .line 149
    :cond_b
    const-string v2, "phone"

    .line 150
    goto :goto_4

    .line 151
    :cond_c
    :goto_3
    move-object v2, v7

    .line 152
    .line 153
    :goto_4
    if-eqz v2, :cond_d

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 157
    move-result-object v3

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->allowNoPage()Lcom/narvii/logging/LogEvent$Builder;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 169
    move-result-object v3

    .line 170
    .line 171
    sget-object v4, Lcom/narvii/logging/ActSemantic;->loginSuccess:Lcom/narvii/logging/ActSemantic;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 175
    move-result-object v3

    .line 176
    .line 177
    const-string v4, "loginType"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 185
    .line 186
    :cond_d
    const-string v2, "statistics"

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    check-cast v2, Lcom/narvii/util/statistics/StatisticsService;

    .line 193
    .line 194
    const-string v3, "Source"

    .line 195
    .line 196
    const-string v4, "Type"

    .line 197
    .line 198
    if-eqz p1, :cond_f

    .line 199
    .line 200
    const-string v5, "Registration Succeed"

    .line 201
    .line 202
    .line 203
    invoke-interface {v2, v5}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v6}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->priority(I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v4, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    iget-object v3, p0, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    .line 223
    .line 224
    if-eqz v3, :cond_e

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 228
    move-result v3

    .line 229
    .line 230
    const-string v4, "Email Verification Skipped"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 234
    move-result-object v3

    .line 235
    .line 236
    iget-object v5, p0, Lcom/narvii/account/LoginActivity;->statEmailVerificationSkipped:Ljava/lang/Boolean;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    move-result v5

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v4, v5}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 244
    .line 245
    :cond_e
    const-string v3, "Initial Registration Method"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 249
    goto :goto_5

    .line 250
    .line 251
    :cond_f
    const-string v5, "Login Succeed"

    .line 252
    .line 253
    .line 254
    invoke-interface {v2, v5}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v6}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->priority(I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 259
    move-result-object v2

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 263
    move-result-object p2

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 271
    move-result-object v2

    .line 272
    .line 273
    :goto_5
    const-string p2, "community"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    move-result-object p2

    .line 278
    .line 279
    const-string v3, "Referral"

    .line 280
    .line 281
    if-eqz p2, :cond_10

    .line 282
    .line 283
    const-string p2, "Invite Code"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 287
    goto :goto_6

    .line 288
    .line 289
    :cond_10
    const-string p2, "prefs"

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    move-result-object p2

    .line 294
    .line 295
    check-cast p2, Landroid/content/SharedPreferences;

    .line 296
    .line 297
    const-string v4, "trackingId"

    .line 298
    .line 299
    .line 300
    invoke-interface {p2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    move-result-object v4

    .line 302
    .line 303
    const-string v5, "Standalone App"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    move-result v4

    .line 308
    .line 309
    if-eqz v4, :cond_11

    .line 310
    .line 311
    const-string v4, "trackingIdReged"

    .line 312
    .line 313
    .line 314
    invoke-interface {p2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 315
    move-result v0

    .line 316
    .line 317
    if-nez v0, :cond_11

    .line 318
    .line 319
    const-string v0, "Standalone"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 323
    .line 324
    .line 325
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 326
    move-result-object p2

    .line 327
    .line 328
    .line 329
    invoke-interface {p2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 330
    move-result-object p2

    .line 331
    .line 332
    .line 333
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    :cond_11
    :goto_6
    const/4 p2, -0x1

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, v1, p1, p2}, Lcom/narvii/account/LoginActivity;->trackLoginRegister(ZZI)V

    .line 338
    .line 339
    .line 340
    invoke-static {p0, v2}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 341
    return-void
.end method

.method private setVisibilityAnim(Landroid/view/View;Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/account/LoginActivity;->fadeIn:Landroid/view/animation/Animation;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-nez p2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    const/16 p2, 0x8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/account/LoginActivity;->fadeOut:Landroid/view/animation/Animation;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method private setupViewModel()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "keystore"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/security/KeyStoreService;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/account/vm/LoginViewModel;->factory(Lcom/narvii/security/KeyStoreService;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 18
    .line 19
    const-class v0, Lcom/narvii/account/vm/LoginViewModel;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/account/vm/LoginViewModel;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->loginViewModel:Lcom/narvii/account/vm/LoginViewModel;

    .line 28
    return-void
.end method

.method public static synthetic t(Lcom/narvii/account/LoginActivity;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/account/LoginActivity;->lambda$sendingPublicKeySucceed$0(ZZZ)V

    return-void
.end method

.method private trackLoginRegister(ZZI)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    const-string v2, "service"

    .line 17
    .line 18
    const-string v3, "old"

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/account/LoginActivity;->username:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string v2, "username"

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/account/LoginActivity;->username:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    :cond_0
    if-eqz p1, :cond_2

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    const-string p1, "register_success"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    const-string p1, "login_success"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    const-string p1, "error_type"

    .line 55
    .line 56
    .line 57
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    iget p1, p0, Lcom/narvii/account/LoginActivity;->httpCode:I

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    const-string p3, "http_response_code"

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 p1, 0x0

    .line 76
    .line 77
    iput p1, p0, Lcom/narvii/account/LoginActivity;->httpCode:I

    .line 78
    .line 79
    :cond_3
    if-eqz p2, :cond_4

    .line 80
    .line 81
    const-string p1, "register_failure"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_4
    const-string p1, "login_failure"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    :goto_0
    return-void
.end method

.method private tryToJoinCommunity(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 4
    .line 5
    const-string v0, "invitationId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v0}, Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->getPasteBoardLink()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v2, "pasteBoard"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/master/invitation/PasteBoardService;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v3}, Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V

    .line 50
    return-void

    .line 51
    .line 52
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/narvii/master/invitation/PasteBoardService;->canCheckUrl(Ljava/lang/String;)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteCode(Ljava/lang/String;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_4
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    const-string v2, "/community/link-identify"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const-string v2, "q"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    const-string v2, "api"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 112
    .line 113
    new-instance v2, Lcom/narvii/account/LoginActivity$5;

    .line 114
    .line 115
    const-class v3, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/account/LoginActivity$5;-><init>(Lcom/narvii/account/LoginActivity;Ljava/lang/Class;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 122
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/account/LoginActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->crossAppFinishing:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/account/LoginActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->finishPageFinishing:Z

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/account/LoginActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginActivity;->finishWithResult(Z)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/account/LoginActivity;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->joinCommunity(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/account/LoginActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->sendingPublicKeyFailed(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/account/LoginActivity;ILcom/narvii/account/AccountBaseFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->sendingPublicKeySucceed(ILcom/narvii/account/AccountBaseFragment;)V

    return-void
.end method


# virtual methods
.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 0
    .param p1    # Lcom/narvii/logging/LogEvent$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    .line 4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result v2

    .line 22
    int-to-byte v2, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 31
    move-result v2

    .line 32
    .line 33
    iget v3, p0, Lcom/narvii/account/LoginActivity;->density:F

    .line 34
    div-float/2addr v2, v3

    .line 35
    float-to-int v2, v2

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 52
    move-result v2

    .line 53
    .line 54
    iget v3, p0, Lcom/narvii/account/LoginActivity;->density:F

    .line 55
    div-float/2addr v2, v3

    .line 56
    float-to-int v2, v2

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 68
    .line 69
    :cond_1
    iget v0, p0, Lcom/narvii/account/LoginActivity;->mc:I

    .line 70
    add-int/2addr v0, v1

    .line 71
    .line 72
    iput v0, p0, Lcom/narvii/account/LoginActivity;->mc:I

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 76
    move-result p1

    .line 77
    return p1
.end method

.method public finish()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "logging"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v2, "SkipSignup"

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->finishPageFinishing:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v1, "com.narvii.action.FINISH_LOGIN_PAGE"

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, "finish login activity with "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, " childs"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result v1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Landroid/app/Activity;->finishActivity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 117
    return-void
.end method

.method finishWithResult(Lcom/narvii/account/AccountBaseFragment;ZILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    iget-boolean p1, p0, Lcom/narvii/account/LoginActivity;->isRequesting:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->creatingAccount:Z

    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->isRequesting:Z

    iput p3, p0, Lcom/narvii/account/LoginActivity;->statErrorCode:I

    iget-boolean p2, p0, Lcom/narvii/account/LoginActivity;->exists:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/account/LoginActivity;->trackLoginRegister(ZZI)V

    # Раньше это выполнялось в LoginActivity$3.onFinish()
    # после sendPublicKey().
    #
    # Теперь вызываем напрямую, без отправки public key.
    invoke-static {p0, p3, v0}, Lcom/narvii/account/LoginActivity;->z(Lcom/narvii/account/LoginActivity;ILcom/narvii/account/AccountBaseFragment;)V

    if-eqz p4, :cond_4

    div-int/lit8 p2, p3, 0x64

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, 0xda

    if-ne p3, p1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "device_id"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p2

    const-string p3, "device_not_supported"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x104000a

    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getPasteBoardLink()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "clipboard"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/content/ClipboardManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_0
    return-object v2
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method logAuthPrompt()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "prefs"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    const-string v1, "last_email"

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    const-string v1, "last_phoneNumber"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    move v0, v4

    .line 37
    .line 38
    :goto_1
    if-nez v0, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/narvii/account/AccountKeychain;->inited(Landroid/content/Context;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    return-void

    .line 46
    .line 47
    :cond_3
    if-nez v0, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/narvii/account/AccountKeychain;->readFrom(Landroid/content/Context;)Lcom/narvii/account/AccountKeychain;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    move v0, v4

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move v0, v3

    .line 57
    .line 58
    :goto_2
    const-string v1, "logging"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    .line 65
    const/4 v2, 0x4

    .line 66
    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v5, "type"

    .line 70
    .line 71
    aput-object v5, v2, v3

    .line 72
    .line 73
    const-string v3, "promptType"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    aput-object v3, v2, v4

    .line 80
    const/4 v3, 0x2

    .line 81
    .line 82
    const-string v5, "newDevice"

    .line 83
    .line 84
    aput-object v5, v2, v3

    .line 85
    const/4 v3, 0x3

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    aput-object v0, v2, v3

    .line 92
    .line 93
    const-string v0, "AuthPrompt"

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v0, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    iput-boolean v4, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    .line 99
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const/16 v0, 0x4f

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    if-ne p2, v1, :cond_1

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    const-string v0, "accountVerified"

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    const v1, 0x7f0a05ff

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->l0(I)Landroidx/fragment/app/Fragment;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    instance-of v1, v0, Lcom/narvii/account/LoginFragment;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/account/LoginFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/account/LoginFragment;->sendLoginRequest()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->joiningCommunity:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->creatingAccount:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->isFinishingCreateAccount:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    return-void

    .line 16
    .line 17
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountBaseFragment;->cancel()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/account/LoginActivity;->setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->u0()I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-lez v0, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->t0(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Landroidx/fragment/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    instance-of v1, v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/app/FragmentOnBackListener;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, p0}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    return-void

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    const-string v1, "login"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    check-cast v0, Lcom/narvii/account/LoginFragment;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lcom/narvii/account/LoginFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    return-void

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    const-string v0, "account"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0d0021

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    const v0, 0x10a0001

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->fadeOut:Landroid/view/animation/Animation;

    .line 46
    .line 47
    const/high16 v0, 0x10a0000

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/account/LoginActivity;->fadeIn:Landroid/view/animation/Animation;

    .line 54
    .line 55
    const-string v0, "navigator"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/navigator/Navigator;

    .line 62
    .line 63
    instance-of v1, v0, Lcom/narvii/app/BaseNavigator;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_0
    const-string v0, "aminoapp"

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x1

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v0, "://login"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v0

    .line 120
    .line 121
    if-eqz v0, :cond_1

    .line 122
    move v0, v3

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    move v0, v2

    .line 125
    .line 126
    :goto_1
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v2}, Lcom/narvii/account/LoginActivity;->finishWithResult(Z)V

    .line 138
    .line 139
    .line 140
    :cond_2
    const v0, 0x7f0a01c8

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 147
    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    .line 151
    const v1, 0x7f080704

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 155
    .line 156
    :cond_3
    if-nez p1, :cond_5

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    const v0, 0x7f0a05ff

    .line 168
    .line 169
    if-eqz p1, :cond_4

    .line 170
    .line 171
    const-string p1, "user"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    move-result p1

    .line 180
    .line 181
    if-nez p1, :cond_4

    .line 182
    .line 183
    const-string p1, "pass"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    move-result p1

    .line 192
    .line 193
    if-nez p1, :cond_4

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    new-instance v1, Lcom/narvii/account/UrlLoginFragment;

    .line 204
    .line 205
    .line 206
    invoke-direct {v1}, Lcom/narvii/account/UrlLoginFragment;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 214
    goto :goto_2

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    new-instance v1, Lcom/narvii/account/SignupLocationFragment;

    .line 225
    .line 226
    .line 227
    invoke-direct {v1}, Lcom/narvii/account/SignupLocationFragment;-><init>()V

    .line 228
    .line 229
    const-string v2, "signupLocation"

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    new-instance v1, Lcom/narvii/account/LoginFragment;

    .line 247
    .line 248
    .line 249
    invoke-direct {v1}, Lcom/narvii/account/LoginFragment;-><init>()V

    .line 250
    .line 251
    const-string v2, "login"

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 259
    goto :goto_2

    .line 260
    .line 261
    :cond_5
    const-string v0, "authPromptLogged"

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 265
    move-result v0

    .line 266
    .line 267
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    .line 268
    .line 269
    const-string v0, "startingRequestCodes"

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 273
    move-result-object p1

    .line 274
    .line 275
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 276
    .line 277
    if-nez p1, :cond_6

    .line 278
    .line 279
    new-instance p1, Ljava/util/ArrayList;

    .line 280
    .line 281
    .line 282
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/narvii/account/LoginActivity;->setupViewModel()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->updateViews()V

    .line 291
    .line 292
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 293
    .line 294
    new-instance v0, Landroid/content/IntentFilter;

    .line 295
    .line 296
    const-string v1, "com.narvii.action.KEYCHAIN_STATUS_CHANGED"

    .line 297
    .line 298
    .line 299
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 303
    .line 304
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->finishPageReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    .line 307
    .line 308
    const-string v1, "com.narvii.action.FINISH_LOGIN_PAGE"

    .line 309
    .line 310
    .line 311
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVActivity;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 318
    move-result-object p1

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 322
    .line 323
    const-string p1, "signupWakeup"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 327
    move-result p1

    .line 328
    .line 329
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->signupWakeup:Z

    .line 330
    .line 331
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 333
    move-result-wide v0

    .line 334
    long-to-int p1, v0

    .line 335
    .line 336
    iput p1, p0, Lcom/narvii/account/LoginActivity;->ut:I

    .line 337
    .line 338
    :try_start_0
    const-string p1, "sensor"

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    move-result-object p1

    .line 343
    .line 344
    check-cast p1, Landroid/hardware/SensorManager;

    .line 345
    .line 346
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 347
    .line 348
    new-instance p1, Lcom/narvii/account/LoginActivity$SEL;

    .line 349
    const/4 v0, 0x0

    .line 350
    .line 351
    .line 352
    invoke-direct {p1, p0, v0}, Lcom/narvii/account/LoginActivity$SEL;-><init>(Lcom/narvii/account/LoginActivity;Lcom/narvii/account/w;)V

    .line 353
    .line 354
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    .line 355
    .line 356
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 357
    const/4 v0, 0x5

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 361
    move-result-object p1

    .line 362
    .line 363
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 364
    .line 365
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    .line 366
    const/4 v2, 0x3

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 370
    .line 371
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 375
    move-result-object p1

    .line 376
    .line 377
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 378
    .line 379
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 383
    .line 384
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 385
    const/4 v0, 0x4

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 389
    move-result-object p1

    .line 390
    .line 391
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 392
    .line 393
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .line 398
    :catchall_0
    :try_start_1
    const-string p1, "SHA-1"

    .line 399
    .line 400
    .line 401
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 402
    move-result-object p1

    .line 403
    .line 404
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->md:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    .line 406
    .line 407
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 408
    move-result-object p1

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 412
    move-result-object p1

    .line 413
    .line 414
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 415
    .line 416
    iput p1, p0, Lcom/narvii/account/LoginActivity;->density:F

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/narvii/account/LoginActivity;->logAuthPrompt()V

    .line 420
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    sput-object v0, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->sel:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->finishPageReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 28
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->signupWakeup:Z

    .line 6
    .line 7
    const-string v1, "signupWakeup"

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    move-result p1

    .line 13
    or-int/2addr p1, v0

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->signupWakeup:Z

    .line 16
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    .line 7
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "authPromptLogged"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/account/LoginActivity;->authPromptLogged:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    const-string v0, "startingRequestCodes"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    return-void
.end method

.method protected onStop()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onStop()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_e

    .line 16
    .line 17
    const-string v0, "statistics"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 24
    .line 25
    iget v1, p0, Lcom/narvii/account/LoginActivity;->statType:I

    .line 26
    .line 27
    const-string v2, "Google"

    .line 28
    const/4 v3, 0x4

    .line 29
    .line 30
    const-string v4, "Facebook"

    .line 31
    const/4 v5, 0x3

    .line 32
    .line 33
    const-string v6, "Email"

    .line 34
    .line 35
    const-string v7, "Phone Number"

    .line 36
    const/4 v8, 0x1

    .line 37
    .line 38
    if-ne v1, v8, :cond_0

    .line 39
    move-object v1, v7

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v9, 0x2

    .line 42
    .line 43
    if-ne v1, v9, :cond_1

    .line 44
    move-object v1, v6

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    if-ne v1, v5, :cond_2

    .line 48
    move-object v1, v4

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    if-ne v1, v3, :cond_3

    .line 52
    move-object v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    .line 56
    :goto_0
    iget v9, p0, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 57
    .line 58
    iget v10, p0, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    .line 59
    .line 60
    .line 61
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 62
    move-result v9

    .line 63
    .line 64
    const/16 v10, 0xa

    .line 65
    .line 66
    if-ne v9, v8, :cond_4

    .line 67
    .line 68
    const-string v2, "Age Gating"

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_4
    if-ne v9, v5, :cond_5

    .line 72
    move-object v2, v7

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_5
    if-ne v9, v3, :cond_6

    .line 76
    move-object v2, v6

    .line 77
    goto :goto_1

    .line 78
    :cond_6
    const/4 v3, 0x5

    .line 79
    .line 80
    if-ne v9, v3, :cond_7

    .line 81
    move-object v2, v4

    .line 82
    goto :goto_1

    .line 83
    :cond_7
    const/4 v3, 0x6

    .line 84
    .line 85
    if-ne v9, v3, :cond_8

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_8
    if-ne v9, v10, :cond_9

    .line 89
    .line 90
    const-string v2, "Email Verification Code"

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_9
    const/16 v2, 0x10

    .line 94
    .line 95
    if-ne v9, v2, :cond_a

    .line 96
    .line 97
    const-string v2, "Phone or Email"

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_a
    const/16 v2, 0x14

    .line 101
    .line 102
    if-ne v9, v2, :cond_b

    .line 103
    .line 104
    const-string v2, "Password"

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_b
    const/16 v2, 0x1e

    .line 108
    .line 109
    if-ne v9, v2, :cond_c

    .line 110
    .line 111
    const-string v2, "Profile"

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_c
    const-string v2, "Zero"

    .line 115
    .line 116
    :goto_1
    iget v3, p0, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 117
    .line 118
    if-lez v3, :cond_d

    .line 119
    .line 120
    const-string v3, "Login Quit"

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 124
    move-result-object v0

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_d
    const-string v3, "Registration Quit"

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    :goto_2
    invoke-virtual {v0, v10}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->priority(I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    const-string v4, "Type"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    const-string v3, "Step"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    const-string v2, "Source"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 157
    .line 158
    iget v1, p0, Lcom/narvii/account/LoginActivity;->statErrorCode:I

    .line 159
    .line 160
    if-eqz v1, :cond_e

    .line 161
    .line 162
    const-string v2, "Error Code"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 166
    .line 167
    .line 168
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    .line 180
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-eqz v1, :cond_10

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 190
    .line 191
    instance-of v2, v1, Lcom/narvii/account/EmailSignupFragment;

    .line 192
    .line 193
    if-nez v2, :cond_10

    .line 194
    .line 195
    instance-of v1, v1, Lcom/narvii/account/SignUpAddProfileFragment;

    .line 196
    .line 197
    if-eqz v1, :cond_f

    .line 198
    :cond_10
    return-void
.end method

.method procReq(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x4

    .line 5
    .line 6
    .line 7
    filled-new-array {v2, v0, v3, v1}, [I

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f120413

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    const v2, 0x7f120414

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    move-result v2

    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    .line 30
    :goto_0
    if-ge v5, v3, :cond_1

    .line 31
    .line 32
    aget v6, v0, v5

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v6}, Lcom/narvii/account/LoginActivity;->getIds(I)[B

    .line 36
    move-result-object v7

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {v7, v1, v2}, Lc/f/b/e/q5;->d([BLjava/lang/String;I)Ljava/lang/String;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    sget-object v9, La0/a;->o:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v6, v7}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    .line 64
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/narvii/account/LoginActivity;->getVals()[I

    .line 69
    move-result-object v0

    .line 70
    :goto_1
    array-length v1, v0

    .line 71
    .line 72
    if-ge v4, v1, :cond_2

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v2, "val"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    add-int/lit8 v2, v4, 0x1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    aget v3, v0, v4

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move v4, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method

.method setCreatingAccount(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/account/LoginActivity;->setRequesting(Z)V

    .line 4
    return-void
.end method

.method setExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->exists:Z

    return-void
.end method

.method setHttpCode(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/account/LoginActivity;->httpCode:I

    return-void
.end method

.method setRequesting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/account/LoginActivity;->isRequesting:Z

    return-void
.end method

.method setSubmitting(Lcom/narvii/account/AccountBaseFragment;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 6
    .line 7
    :cond_0
    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/LoginActivity;->setRequesting(Z)V

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->updateViewsR:Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/account/LoginActivity;->updateViewsR:Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

.method setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/account/LoginActivity;->username:Ljava/lang/String;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/narvii/account/LoginActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/account/LoginActivity;->safedk_NVActivity_startActivityForResult_1e7758655dff1587c7e4c04d4a2a3a59(Lcom/narvii/app/NVActivity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/account/LoginActivity;->startingActivity:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->startingRequestCodes:Ljava/util/ArrayList;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/activity/ComponentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method updateViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a05ff

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0dfc

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0a0b96

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/account/LoginActivity;->account:Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getKeychainStatus()I

    .line 33
    move-result v3

    .line 34
    .line 35
    if-lez v3, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 40
    .line 41
    :goto_1
    xor-int/lit8 v4, v3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0, v4}, Lcom/narvii/account/LoginActivity;->setVisibilityAnim(Landroid/view/View;Z)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1, v3}, Lcom/narvii/account/LoginActivity;->setVisibilityAnim(Landroid/view/View;Z)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/account/LoginActivity;->submittingFragment:Lcom/narvii/account/AccountBaseFragment;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/account/AccountBaseFragment;->getProgressText()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
