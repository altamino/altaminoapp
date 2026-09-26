.class public Lcom/narvii/poweruser/PowerUserDialog;
.super Lcom/narvii/util/dialog/ActionSheetDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private context:Lcom/narvii/app/NVContext;

.field private object:Lcom/narvii/model/NVObject;

.field private ops:[I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    const-string v0, "account"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->account:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 29
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 8
    .line 9
    aget p1, p1, p2

    .line 10
    .line 11
    const-string v0, "/"

    .line 12
    .line 13
    .line 14
    sparse-switch p1, :sswitch_data_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    instance-of p2, p1, Landroid/app/Activity;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    .line 26
    .line 27
    const/16 p2, 0x21c

    .line 28
    .line 29
    const/16 v2, 0x3c0

    .line 30
    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v3, p2, v2}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    const-string v2, "urgent"

    .line 42
    .line 43
    const-string v3, "png"

    .line 44
    .line 45
    .line 46
    invoke-static {p2, v2, v3}, Lcom/narvii/util/image/Screenshot;->getNewScreenshotFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    new-instance v2, Ljava/io/FileOutputStream;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 55
    .line 56
    const/16 v4, 0x64

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 66
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    :cond_1
    move-object p1, v1

    .line 69
    .line 70
    :goto_0
    new-instance p2, Lcom/narvii/util/PackageUtils;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    const-string v3, "navigator"

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    check-cast v2, Lcom/narvii/app/BaseNavigator;

    .line 94
    .line 95
    new-instance v3, Landroid/content/Intent;

    .line 96
    .line 97
    const-string v4, "mailto"

    .line 98
    .line 99
    const-string v5, "urgent@altamino.top"

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v5, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    const-string v4, "android.intent.action.SENDTO"

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v4, "Urgent Review - "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    const-string v1, "android.intent.extra.SUBJECT"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/poweruser/PowerUserDialog;->account:Lcom/narvii/account/AccountService;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    if-eqz v1, :cond_2

    .line 144
    .line 145
    const-string v4, "<b>Reporter</b>:&nbsp; <a href=\""

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v4, "://user/"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget-object v4, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v4, "\" style=\"text-decoration:none\"><font color=\"#000000\">"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v1, "</font></a>"

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_1

    .line 184
    .line 185
    :cond_2
    const-string v1, "From: [Unknown]"

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    :goto_1
    const-string v1, "<br>"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v4, "<b>Title</b>:&nbsp; "

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    iget-object v4, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 201
    .line 202
    instance-of v5, v4, Lcom/narvii/model/Feed;

    .line 203
    .line 204
    if-eqz v5, :cond_3

    .line 205
    .line 206
    check-cast v4, Lcom/narvii/model/Feed;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 210
    move-result-object v4

    .line 211
    goto :goto_2

    .line 212
    .line 213
    :cond_3
    instance-of v5, v4, Lcom/narvii/model/User;

    .line 214
    .line 215
    if-eqz v5, :cond_4

    .line 216
    .line 217
    check-cast v4, Lcom/narvii/model/User;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 221
    move-result-object v4

    .line 222
    goto :goto_2

    .line 223
    .line 224
    :cond_4
    instance-of v5, v4, Lcom/narvii/model/ChatThread;

    .line 225
    .line 226
    if-eqz v5, :cond_5

    .line 227
    .line 228
    check-cast v4, Lcom/narvii/model/ChatThread;

    .line 229
    .line 230
    iget-object v4, v4, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 231
    goto :goto_2

    .line 232
    .line 233
    :cond_5
    const-string v4, ""

    .line 234
    .line 235
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    .line 242
    move-result-object v2

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v2, "://"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v0

    .line 276
    .line 277
    const-string v2, "<a href=\""

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v2, "\">"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v2, "</a><br>"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v0, "<b>Reason</b>:&nbsp; "

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object p2

    .line 312
    .line 313
    .line 314
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 315
    move-result-object p2

    .line 316
    .line 317
    const-string v0, "android.intent.extra.TEXT"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 321
    .line 322
    if-eqz p1, :cond_6

    .line 323
    .line 324
    const-string p2, "android.intent.extra.STREAM"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    .line 329
    :cond_6
    iget-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 330
    .line 331
    .line 332
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 333
    move-result-object p1

    .line 334
    .line 335
    .line 336
    const p2, 0x7f120154

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    move-result-object p1

    .line 341
    .line 342
    .line 343
    invoke-static {v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 344
    move-result-object p1

    .line 345
    .line 346
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 347
    .line 348
    const/16 v0, 0x18

    .line 349
    .line 350
    if-le p2, v0, :cond_7

    .line 351
    const/4 p2, 0x3

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    .line 356
    :cond_7
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 357
    .line 358
    .line 359
    invoke-static {p2, p1}, Lcom/narvii/poweruser/PowerUserDialog;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 360
    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :sswitch_1
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 364
    .line 365
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 366
    .line 367
    .line 368
    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 369
    .line 370
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 371
    .line 372
    check-cast p2, Lcom/narvii/model/Feed;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    .line 376
    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :sswitch_2
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 380
    .line 381
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 382
    .line 383
    .line 384
    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 385
    .line 386
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 387
    .line 388
    check-cast p2, Lcom/narvii/model/Feed;

    .line 389
    const/4 v0, 0x0

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    .line 393
    .line 394
    goto/16 :goto_4

    .line 395
    .line 396
    :sswitch_3
    new-instance p1, Lcom/narvii/poweruser/ChangeCategoryFragment;

    .line 397
    .line 398
    .line 399
    invoke-direct {p1}, Lcom/narvii/poweruser/ChangeCategoryFragment;-><init>()V

    .line 400
    .line 401
    new-instance p2, Landroid/os/Bundle;

    .line 402
    .line 403
    .line 404
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 405
    .line 406
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 410
    move-result-object v0

    .line 411
    .line 412
    const-string v1, "id"

    .line 413
    .line 414
    .line 415
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 419
    .line 420
    iget-object p2, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 421
    .line 422
    .line 423
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 424
    move-result-object p2

    .line 425
    .line 426
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 430
    move-result-object p2

    .line 431
    .line 432
    .line 433
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 434
    move-result-object p2

    .line 435
    .line 436
    const-string v0, "changeCategory"

    .line 437
    .line 438
    .line 439
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 440
    .line 441
    .line 442
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 443
    goto :goto_4

    .line 444
    .line 445
    :sswitch_4
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 446
    .line 447
    .line 448
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 452
    move-result-object v1

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 456
    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    .line 466
    move-result-object v2

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 478
    move-result-object v0

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v0, "/admin"

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    move-result-object v0

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 494
    .line 495
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 496
    .line 497
    aget p2, v0, p2

    .line 498
    .line 499
    .line 500
    const v0, 0x7f120fe1

    .line 501
    .line 502
    if-eq p2, v0, :cond_8

    .line 503
    .line 504
    const/16 p2, 0x72

    .line 505
    goto :goto_3

    .line 506
    .line 507
    :cond_8
    const/16 p2, 0x74

    .line 508
    .line 509
    .line 510
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 511
    move-result-object p2

    .line 512
    .line 513
    const-string v0, "adminOpName"

    .line 514
    .line 515
    .line 516
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 520
    move-result-object p1

    .line 521
    .line 522
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 523
    .line 524
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 525
    .line 526
    .line 527
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 528
    move-result-object v0

    .line 529
    .line 530
    .line 531
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 535
    .line 536
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->context:Lcom/narvii/app/NVContext;

    .line 537
    .line 538
    const-string v1, "api"

    .line 539
    .line 540
    .line 541
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    move-result-object v0

    .line 543
    .line 544
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 545
    .line 546
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 550
    :goto_4
    return-void

    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    :sswitch_data_0
    .sparse-switch
        0x7f120090 -> :sswitch_4
        0x7f120211 -> :sswitch_3
        0x7f1203ae -> :sswitch_2
        0x7f120444 -> :sswitch_1
        0x7f120fe1 -> :sswitch_4
        0x7f121222 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTarget(Lcom/narvii/model/NVObject;)V
    .locals 8

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/PowerUserDialog;->object:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->account:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ActionSheetDialog;->clearItems()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    const v1, 0x7f121222

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 38
    .line 39
    aput v1, v4, v3

    .line 40
    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v1, v3

    .line 43
    .line 44
    .line 45
    :goto_0
    const v4, 0x7f120211

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 49
    .line 50
    iget-object v5, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 51
    .line 52
    add-int/lit8 v6, v1, 0x1

    .line 53
    .line 54
    aput v4, v5, v1

    .line 55
    .line 56
    instance-of v4, p1, Lcom/narvii/model/Item;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    move-object v4, p1

    .line 60
    .line 61
    check-cast v4, Lcom/narvii/model/Item;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 64
    .line 65
    iget v4, v4, Lcom/narvii/model/User;->role:I

    .line 66
    .line 67
    const/16 v5, 0xfe

    .line 68
    .line 69
    if-ne v4, v5, :cond_2

    .line 70
    .line 71
    .line 72
    const v4, 0x7f120444

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v4, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 76
    .line 77
    iget-object v5, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 78
    .line 79
    add-int/lit8 v7, v1, 0x2

    .line 80
    .line 81
    aput v4, v5, v6

    .line 82
    .line 83
    .line 84
    const v4, 0x7f1203ae

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 90
    .line 91
    add-int/lit8 v6, v1, 0x3

    .line 92
    .line 93
    aput v4, v2, v7

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 103
    move-result v0

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    instance-of p1, p1, Lcom/narvii/model/Feed;

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    .line 112
    const p1, 0x7f120090

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 118
    .line 119
    add-int/lit8 v1, v6, 0x1

    .line 120
    .line 121
    aput p1, v0, v6

    .line 122
    .line 123
    .line 124
    const p1, 0x7f120fe1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/poweruser/PowerUserDialog;->ops:[I

    .line 130
    .line 131
    aput p1, v0, v1

    .line 132
    :cond_3
    :goto_1
    return-void
.end method
