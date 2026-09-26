.class Landroidx/core/app/NotificationCompatBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field private final mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private final mBuilder:Landroid/app/Notification$Builder;

.field private final mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

.field private mContentView:Landroid/widget/RemoteViews;

.field private final mContext:Landroid/content/Context;

.field private final mExtras:Landroid/os/Bundle;

.field private mGroupAlertBehavior:I

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mActionExtrasList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/core/app/s0;->a()V

    .line 33
    .line 34
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2}, Landroidx/core/app/r0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 46
    .line 47
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 53
    .line 54
    :goto_0
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 57
    .line 58
    iget-wide v3, v0, Landroid/app/Notification;->when:J

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    iget v3, v0, Landroid/app/Notification;->icon:I

    .line 65
    .line 66
    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 79
    .line 80
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    .line 93
    .line 94
    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    .line 95
    .line 96
    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 103
    const/4 v4, 0x2

    .line 104
    and-int/2addr v3, v4

    .line 105
    const/4 v5, 0x1

    .line 106
    const/4 v6, 0x0

    .line 107
    .line 108
    if-eqz v3, :cond_1

    .line 109
    move v3, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move v3, v6

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 118
    .line 119
    and-int/lit8 v3, v3, 0x8

    .line 120
    .line 121
    if-eqz v3, :cond_2

    .line 122
    move v3, v5

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v3, v6

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 131
    .line 132
    and-int/lit8 v3, v3, 0x10

    .line 133
    .line 134
    if-eqz v3, :cond_3

    .line 135
    move v3, v5

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    move v3, v6

    .line 138
    .line 139
    .line 140
    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    move-result-object v2

    .line 154
    .line 155
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 180
    .line 181
    iget v7, v0, Landroid/app/Notification;->flags:I

    .line 182
    .line 183
    and-int/lit16 v7, v7, 0x80

    .line 184
    .line 185
    if-eqz v7, :cond_4

    .line 186
    move v7, v5

    .line 187
    goto :goto_4

    .line 188
    :cond_4
    move v7, v6

    .line 189
    .line 190
    .line 191
    :goto_4
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 204
    move-result-object v2

    .line 205
    .line 206
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 207
    .line 208
    iget v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 209
    .line 210
    iget-boolean v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 214
    .line 215
    iget-object v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 216
    .line 217
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    iget-boolean v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 227
    move-result-object v2

    .line 228
    .line 229
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 233
    .line 234
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 238
    move-result-object v2

    .line 239
    .line 240
    .line 241
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    move-result v3

    .line 243
    .line 244
    if-eqz v3, :cond_5

    .line 245
    .line 246
    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 249
    .line 250
    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    .line 251
    .line 252
    .line 253
    invoke-direct {p0, v3}, Landroidx/core/app/NotificationCompatBuilder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    .line 254
    goto :goto_5

    .line 255
    .line 256
    :cond_5
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 257
    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 264
    .line 265
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 266
    .line 267
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 268
    .line 269
    iput-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 270
    .line 271
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 272
    .line 273
    iput-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 274
    .line 275
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 276
    .line 277
    iget-boolean v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 281
    .line 282
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 283
    .line 284
    iget-boolean v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 288
    move-result-object v3

    .line 289
    .line 290
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 294
    move-result-object v3

    .line 295
    .line 296
    iget-boolean v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 300
    move-result-object v3

    .line 301
    .line 302
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 306
    .line 307
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 308
    .line 309
    iput v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 310
    .line 311
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 312
    .line 313
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 317
    move-result-object v3

    .line 318
    .line 319
    iget v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 323
    move-result-object v3

    .line 324
    .line 325
    iget v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 329
    move-result-object v3

    .line 330
    .line 331
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 335
    move-result-object v3

    .line 336
    .line 337
    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 338
    .line 339
    iget-object v8, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 343
    .line 344
    const/16 v3, 0x1c

    .line 345
    .line 346
    if-ge v2, v3, :cond_7

    .line 347
    .line 348
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 349
    .line 350
    .line 351
    invoke-static {v2}, Landroidx/core/app/NotificationCompatBuilder;->g(Ljava/util/List;)Ljava/util/List;

    .line 352
    move-result-object v2

    .line 353
    .line 354
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 355
    .line 356
    .line 357
    invoke-static {v2, v7}, Landroidx/core/app/NotificationCompatBuilder;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 358
    move-result-object v2

    .line 359
    goto :goto_6

    .line 360
    .line 361
    :cond_7
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 362
    .line 363
    :goto_6
    if-eqz v2, :cond_8

    .line 364
    .line 365
    .line 366
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 367
    move-result v7

    .line 368
    .line 369
    if-nez v7, :cond_8

    .line 370
    .line 371
    .line 372
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 373
    move-result-object v2

    .line 374
    .line 375
    .line 376
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    move-result v7

    .line 378
    .line 379
    if-eqz v7, :cond_8

    .line 380
    .line 381
    .line 382
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 383
    move-result-object v7

    .line 384
    .line 385
    check-cast v7, Ljava/lang/String;

    .line 386
    .line 387
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 391
    goto :goto_7

    .line 392
    .line 393
    :cond_8
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 394
    .line 395
    iput-object v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 396
    .line 397
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 401
    move-result v2

    .line 402
    .line 403
    if-lez v2, :cond_b

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->k()Landroid/os/Bundle;

    .line 407
    move-result-object v2

    .line 408
    .line 409
    const-string v7, "android.car.EXTENSIONS"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 413
    move-result-object v2

    .line 414
    .line 415
    if-nez v2, :cond_9

    .line 416
    .line 417
    new-instance v2, Landroid/os/Bundle;

    .line 418
    .line 419
    .line 420
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 421
    .line 422
    :cond_9
    new-instance v8, Landroid/os/Bundle;

    .line 423
    .line 424
    .line 425
    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 426
    .line 427
    new-instance v9, Landroid/os/Bundle;

    .line 428
    .line 429
    .line 430
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 431
    move v10, v6

    .line 432
    .line 433
    :goto_8
    iget-object v11, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 437
    move-result v11

    .line 438
    .line 439
    if-ge v10, v11, :cond_a

    .line 440
    .line 441
    .line 442
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 443
    move-result-object v11

    .line 444
    .line 445
    iget-object v12, p1, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    move-result-object v12

    .line 450
    .line 451
    check-cast v12, Landroidx/core/app/NotificationCompat$Action;

    .line 452
    .line 453
    .line 454
    invoke-static {v12}, Landroidx/core/app/NotificationCompatJellybean;->e(Landroidx/core/app/NotificationCompat$Action;)Landroid/os/Bundle;

    .line 455
    move-result-object v12

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    .line 460
    add-int/lit8 v10, v10, 0x1

    .line 461
    goto :goto_8

    .line 462
    .line 463
    :cond_a
    const-string v10, "invisible_actions"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->k()Landroid/os/Bundle;

    .line 473
    move-result-object v9

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v7, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 477
    .line 478
    iget-object v2, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 482
    .line 483
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 484
    .line 485
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 486
    .line 487
    if-eqz v7, :cond_c

    .line 488
    .line 489
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 493
    .line 494
    :cond_c
    const/16 v7, 0x18

    .line 495
    .line 496
    if-lt v2, v7, :cond_f

    .line 497
    .line 498
    iget-object v7, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 499
    .line 500
    iget-object v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 504
    move-result-object v7

    .line 505
    .line 506
    iget-object v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    .line 507
    .line 508
    .line 509
    invoke-static {v7, v8}, Landroidx/core/app/l0;->a(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 510
    .line 511
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 512
    .line 513
    if-eqz v7, :cond_d

    .line 514
    .line 515
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 516
    .line 517
    .line 518
    invoke-static {v8, v7}, Landroidx/core/app/d1;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 519
    .line 520
    :cond_d
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 521
    .line 522
    if-eqz v7, :cond_e

    .line 523
    .line 524
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 525
    .line 526
    .line 527
    invoke-static {v8, v7}, Landroidx/core/app/e1;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 528
    .line 529
    :cond_e
    iget-object v7, p1, Landroidx/core/app/NotificationCompat$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 530
    .line 531
    if-eqz v7, :cond_f

    .line 532
    .line 533
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 534
    .line 535
    .line 536
    invoke-static {v8, v7}, Landroidx/core/app/f1;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 537
    :cond_f
    const/4 v7, 0x0

    .line 538
    .line 539
    if-lt v2, v1, :cond_11

    .line 540
    .line 541
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 542
    .line 543
    iget v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 544
    .line 545
    .line 546
    invoke-static {v8, v9}, Landroidx/core/app/m0;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 547
    move-result-object v8

    .line 548
    .line 549
    iget-object v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 550
    .line 551
    .line 552
    invoke-static {v8, v9}, Landroidx/core/app/n0;->a(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 553
    move-result-object v8

    .line 554
    .line 555
    iget-object v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    invoke-static {v8, v9}, Landroidx/core/app/o0;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 559
    move-result-object v8

    .line 560
    .line 561
    iget-wide v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 562
    .line 563
    .line 564
    invoke-static {v8, v9, v10}, Landroidx/core/app/p0;->a(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 565
    move-result-object v8

    .line 566
    .line 567
    iget v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 568
    .line 569
    .line 570
    invoke-static {v8, v9}, Landroidx/core/app/c1;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 571
    .line 572
    iget-boolean v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    .line 573
    .line 574
    if-eqz v8, :cond_10

    .line 575
    .line 576
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 577
    .line 578
    iget-boolean v9, p1, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    .line 579
    .line 580
    .line 581
    invoke-static {v8, v9}, Landroidx/core/app/q0;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 582
    .line 583
    :cond_10
    iget-object v8, p1, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 587
    move-result v8

    .line 588
    .line 589
    if-nez v8, :cond_11

    .line 590
    .line 591
    iget-object v8, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 595
    move-result-object v8

    .line 596
    .line 597
    .line 598
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 599
    move-result-object v8

    .line 600
    .line 601
    .line 602
    invoke-virtual {v8, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 603
    move-result-object v6

    .line 604
    .line 605
    .line 606
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 607
    .line 608
    :cond_11
    if-lt v2, v3, :cond_12

    .line 609
    .line 610
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 614
    move-result-object v2

    .line 615
    .line 616
    .line 617
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    move-result v3

    .line 619
    .line 620
    if-eqz v3, :cond_12

    .line 621
    .line 622
    .line 623
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    move-result-object v3

    .line 625
    .line 626
    check-cast v3, Landroidx/core/app/Person;

    .line 627
    .line 628
    iget-object v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3}, Landroidx/core/app/Person;->k()Landroid/app/Person;

    .line 632
    move-result-object v3

    .line 633
    .line 634
    .line 635
    invoke-static {v6, v3}, Landroidx/core/app/w0;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 636
    goto :goto_9

    .line 637
    .line 638
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 639
    .line 640
    const/16 v3, 0x1d

    .line 641
    .line 642
    if-lt v2, v3, :cond_13

    .line 643
    .line 644
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 645
    .line 646
    iget-boolean v6, p1, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 647
    .line 648
    .line 649
    invoke-static {v3, v6}, Landroidx/core/app/y0;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 650
    .line 651
    iget-object v3, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 652
    .line 653
    iget-object v6, p1, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 654
    .line 655
    .line 656
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->k(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;

    .line 657
    move-result-object v6

    .line 658
    .line 659
    .line 660
    invoke-static {v3, v6}, Landroidx/core/app/z0;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 661
    .line 662
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 663
    .line 664
    if-eqz v3, :cond_13

    .line 665
    .line 666
    iget-object v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v3}, Landroidx/core/content/LocusIdCompat;->b()Landroid/content/LocusId;

    .line 670
    move-result-object v3

    .line 671
    .line 672
    .line 673
    invoke-static {v6, v3}, Landroidx/core/app/a1;->a(Landroid/app/Notification$Builder;Landroid/content/LocusId;)Landroid/app/Notification$Builder;

    .line 674
    .line 675
    :cond_13
    const/16 v3, 0x1f

    .line 676
    .line 677
    if-lt v2, v3, :cond_14

    .line 678
    .line 679
    iget v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 680
    .line 681
    if-eqz v3, :cond_14

    .line 682
    .line 683
    iget-object v6, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 684
    .line 685
    .line 686
    invoke-static {v6, v3}, Landroidx/core/app/b1;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 687
    .line 688
    :cond_14
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mSilent:Z

    .line 689
    .line 690
    if-eqz p1, :cond_17

    .line 691
    .line 692
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 693
    .line 694
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 695
    .line 696
    if-eqz p1, :cond_15

    .line 697
    .line 698
    iput v4, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 699
    goto :goto_a

    .line 700
    .line 701
    :cond_15
    iput v5, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 702
    .line 703
    :goto_a
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 707
    .line 708
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 712
    .line 713
    iget p1, v0, Landroid/app/Notification;->defaults:I

    .line 714
    .line 715
    and-int/lit8 p1, p1, -0x4

    .line 716
    .line 717
    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 718
    .line 719
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 723
    .line 724
    if-lt v2, v1, :cond_17

    .line 725
    .line 726
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 727
    .line 728
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 732
    move-result p1

    .line 733
    .line 734
    if-eqz p1, :cond_16

    .line 735
    .line 736
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 737
    .line 738
    const-string v0, "silent"

    .line 739
    .line 740
    .line 741
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 742
    .line 743
    :cond_16
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 744
    .line 745
    iget v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 746
    .line 747
    .line 748
    invoke-static {p1, v0}, Landroidx/core/app/c1;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 749
    :cond_17
    return-void
.end method

.method private b(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->e()Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->B()Landroid/graphics/drawable/Icon;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->i()Ljava/lang/CharSequence;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->a()Landroid/app/PendingIntent;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->f()[Landroidx/core/app/RemoteInput;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->f()[Landroidx/core/app/RemoteInput;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/core/app/RemoteInput;->b([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;

    .line 39
    move-result-object v0

    .line 40
    array-length v2, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    :goto_1
    if-ge v3, v2, :cond_1

    .line 44
    .line 45
    aget-object v4, v0, v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->c()Landroid/os/Bundle;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->c()Landroid/os/Bundle;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    :goto_2
    const-string v2, "android.support.allowGeneratedReplies"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->b()Z

    .line 78
    move-result v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    const/16 v3, 0x18

    .line 86
    .line 87
    if-lt v2, v3, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->b()Z

    .line 91
    move-result v3

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Landroidx/core/app/t0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 95
    .line 96
    :cond_3
    const-string v3, "android.support.action.semanticAction"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->g()I

    .line 100
    move-result v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 104
    .line 105
    const/16 v3, 0x1c

    .line 106
    .line 107
    if-lt v2, v3, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->g()I

    .line 111
    move-result v3

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v3}, Landroidx/core/app/u0;->a(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 115
    .line 116
    :cond_4
    const/16 v3, 0x1d

    .line 117
    .line 118
    if-lt v2, v3, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->k()Z

    .line 122
    move-result v3

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v3}, Landroidx/core/app/v0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 126
    .line 127
    :cond_5
    const/16 v3, 0x1f

    .line 128
    .line 129
    if-lt v2, v3, :cond_6

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->j()Z

    .line 133
    move-result v2

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v2}, Landroidx/core/app/x0;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 137
    .line 138
    :cond_6
    const-string v2, "android.support.action.showsUserInterface"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action;->h()Z

    .line 142
    move-result p1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 158
    return-void
.end method

.method private static e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object p1

    .line 4
    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    return-object p0

    .line 7
    .line 8
    :cond_1
    new-instance v0, Landroidx/collection/ArraySet;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    return-object p0
.end method

.method private static g(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/Person;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroidx/core/app/Person;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/core/app/Person;->j()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method private h(Landroid/app/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 6
    .line 7
    iget v0, p1, Landroid/app/Notification;->defaults:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x4

    .line 10
    .line 11
    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 12
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public c()Landroid/app/Notification;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->b(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    .line 10
    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->t(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompatBuilder;->d()Landroid/app/Notification;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 29
    .line 30
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 35
    .line 36
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Style;->s(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 45
    .line 46
    :cond_4
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilderCompat:Landroidx/core/app/NotificationCompat$Builder;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->u(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)Landroid/widget/RemoteViews;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    iput-object v1, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 59
    .line 60
    :cond_5
    if-eqz v0, :cond_6

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Style;->a(Landroid/os/Bundle;)V

    .line 70
    :cond_6
    return-object v2
.end method

.method protected d()Landroid/app/Notification;
    .locals 4

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    const/16 v1, 0x18

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    if-lt v0, v1, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 38
    .line 39
    and-int/lit16 v1, v1, 0x200

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 44
    .line 45
    if-ne v1, v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->h(Landroid/app/Notification;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 57
    .line 58
    and-int/lit16 v1, v1, 0x200

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 63
    .line 64
    if-ne v1, v2, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->h(Landroid/app/Notification;)V

    .line 68
    :cond_2
    return-object v0

    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mExtras:Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mBuilder:Landroid/app/Notification$Builder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 88
    .line 89
    :cond_4
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 94
    .line 95
    :cond_5
    iget-object v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 100
    .line 101
    :cond_6
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 102
    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 112
    .line 113
    and-int/lit16 v1, v1, 0x200

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 118
    .line 119
    if-ne v1, v3, :cond_7

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->h(Landroid/app/Notification;)V

    .line 123
    .line 124
    .line 125
    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 131
    .line 132
    and-int/lit16 v1, v1, 0x200

    .line 133
    .line 134
    if-nez v1, :cond_8

    .line 135
    .line 136
    iget v1, p0, Landroidx/core/app/NotificationCompatBuilder;->mGroupAlertBehavior:I

    .line 137
    .line 138
    if-ne v1, v2, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Landroidx/core/app/NotificationCompatBuilder;->h(Landroid/app/Notification;)V

    .line 142
    :cond_8
    return-object v0
.end method

.method f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method
