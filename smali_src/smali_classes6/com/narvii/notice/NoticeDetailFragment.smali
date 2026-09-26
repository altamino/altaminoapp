.class public Lcom/narvii/notice/NoticeDetailFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;,
        Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;,
        Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;,
        Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;,
        Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;
    }
.end annotation


# instance fields
.field private appealTicketId:Ljava/lang/String;

.field private btnAppeal:Landroid/widget/TextView;

.field btnGotit:Landroid/view/View;

.field private community:Lcom/narvii/model/Community;

.field private notice:Lcom/narvii/account/notice/AccountNotice;

.field tagClickListener:Lcom/narvii/util/text/DefaultTagClickListener;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeDetailFragment$1;-><init>(Lcom/narvii/notice/NoticeDetailFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->tagClickListener:Lcom/narvii/util/text/DefaultTagClickListener;

    .line 11
    return-void
.end method

.method private appealNotice()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/notice/NoticeHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/notice/NoticeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 8
    .line 9
    new-instance v2, Lcom/narvii/notice/NoticeDetailFragment$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/narvii/notice/NoticeDetailFragment$2;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/notice/NoticeHelper;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/narvii/notice/NoticeHelper;->sendAppealNoticeRequest(Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method

.method private configDetailView(Landroid/view/View;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v3, v0, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 9
    const/4 v4, 0x4

    .line 10
    .line 11
    if-eq v3, v4, :cond_0

    .line 12
    .line 13
    const/16 v4, 0xa

    .line 14
    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    :cond_0
    move v3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v3, v2

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v4, v0, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 23
    .line 24
    const/16 v5, 0xb

    .line 25
    .line 26
    if-ne v4, v5, :cond_2

    .line 27
    move v4, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v4, v2

    .line 30
    .line 31
    :goto_1
    if-eqz v4, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLableColor()I

    .line 35
    move-result v0

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_3
    if-eqz v3, :cond_4

    .line 39
    .line 40
    .line 41
    const v0, -0x7a8a9

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_4
    const v0, -0x8800

    .line 46
    .line 47
    :goto_2
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 48
    .line 49
    .line 50
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const/high16 v6, 0x40a00000    # 5.0f

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 63
    move-result v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67
    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->getNoticeLabel()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    goto :goto_4

    .line 76
    .line 77
    :cond_5
    if-eqz v3, :cond_6

    .line 78
    .line 79
    .line 80
    const v0, 0x7f121160

    .line 81
    .line 82
    .line 83
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    goto :goto_4

    .line 86
    .line 87
    .line 88
    :cond_6
    const v0, 0x7f12128f

    .line 89
    goto :goto_3

    .line 90
    .line 91
    .line 92
    :goto_4
    const v4, 0x7f0a0799

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    check-cast v4, Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v0

    .line 106
    .line 107
    const/16 v6, 0x8

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    move v0, v6

    .line 111
    goto :goto_5

    .line 112
    :cond_7
    move v0, v2

    .line 113
    .line 114
    .line 115
    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a0408

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Landroid/widget/TextView;

    .line 128
    .line 129
    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 130
    const/4 v5, 0x0

    .line 131
    .line 132
    if-nez v4, :cond_8

    .line 133
    move-object v4, v5

    .line 134
    goto :goto_6

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    .line 141
    invoke-static {v4}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    iget-object v7, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 145
    .line 146
    iget-object v7, v7, Lcom/narvii/account/notice/AccountNotice;->createdTime:Ljava/util/Date;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v7}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    .line 152
    .line 153
    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    const v0, 0x7f0a09ca

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 165
    .line 166
    if-nez v4, :cond_9

    .line 167
    move v4, v2

    .line 168
    goto :goto_7

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-virtual {v4}, Lcom/narvii/account/notice/AccountNotice;->getMuteTime()I

    .line 172
    move-result v4

    .line 173
    .line 174
    :goto_7
    if-eqz v0, :cond_c

    .line 175
    .line 176
    if-eqz v3, :cond_a

    .line 177
    .line 178
    if-lez v4, :cond_a

    .line 179
    move v3, v2

    .line 180
    goto :goto_8

    .line 181
    :cond_a
    move v3, v6

    .line 182
    .line 183
    .line 184
    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    if-ne v4, v1, :cond_b

    .line 187
    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v3

    .line 193
    .line 194
    aput-object v3, v1, v2

    .line 195
    .line 196
    .line 197
    const v3, 0x7f120d0d

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    goto :goto_9

    .line 206
    .line 207
    :cond_b
    new-array v1, v1, [Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    aput-object v3, v1, v2

    .line 214
    .line 215
    .line 216
    const v3, 0x7f120d0e

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    :goto_9
    const v0, 0x7f0a039d

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    check-cast v0, Landroid/widget/TextView;

    .line 233
    .line 234
    new-instance v1, Lcom/narvii/util/text/NVText;

    .line 235
    .line 236
    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 237
    .line 238
    if-nez v3, :cond_d

    .line 239
    .line 240
    const-string v3, ""

    .line 241
    goto :goto_a

    .line 242
    .line 243
    .line 244
    :cond_d
    invoke-virtual {v3}, Lcom/narvii/account/notice/AccountNotice;->strikeContent()Ljava/lang/String;

    .line 245
    move-result-object v3

    .line 246
    .line 247
    .line 248
    :goto_a
    invoke-direct {v1, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->tagClickListener:Lcom/narvii/util/text/DefaultTagClickListener;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v3}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    const v0, 0x7f0a0366

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    .line 273
    .line 274
    if-nez v1, :cond_e

    .line 275
    move v2, v6

    .line 276
    .line 277
    .line 278
    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    .line 281
    .line 282
    if-eqz v0, :cond_f

    .line 283
    .line 284
    .line 285
    const v0, 0x7f0a036b

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 292
    .line 293
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    .line 294
    .line 295
    iget-object v1, v1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    const v0, 0x7f0a037c

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    check-cast v0, Landroid/widget/TextView;

    .line 308
    .line 309
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    .line 310
    .line 311
    iget-object v1, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .line 316
    :cond_f
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 317
    .line 318
    if-nez v0, :cond_10

    .line 319
    move-object v0, v5

    .line 320
    goto :goto_b

    .line 321
    .line 322
    :cond_10
    iget-object v0, v0, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 323
    .line 324
    .line 325
    :goto_b
    const v1, 0x7f0a0f36

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    move-result-object v1

    .line 330
    .line 331
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 332
    .line 333
    iput-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 334
    .line 335
    if-eqz v0, :cond_14

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 339
    .line 340
    .line 341
    const v1, 0x7f0a0171

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 345
    move-result-object v1

    .line 346
    .line 347
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 351
    move-result-object v2

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    const v2, 0x7f0a09f9

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    move-result-object p1

    .line 362
    .line 363
    check-cast p1, Lcom/narvii/widget/NicknameView;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSystem()Z

    .line 367
    move-result v2

    .line 368
    .line 369
    if-eqz v2, :cond_11

    .line 370
    .line 371
    .line 372
    const v3, -0xc4c0c0

    .line 373
    goto :goto_c

    .line 374
    .line 375
    .line 376
    :cond_11
    const v3, -0xb56f1e

    .line 377
    .line 378
    .line 379
    :goto_c
    invoke-virtual {p1, v3}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 383
    .line 384
    if-eqz v2, :cond_12

    .line 385
    move-object v0, v5

    .line 386
    goto :goto_d

    .line 387
    :cond_12
    move-object v0, p0

    .line 388
    .line 389
    .line 390
    :goto_d
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    .line 392
    if-eqz v2, :cond_13

    .line 393
    goto :goto_e

    .line 394
    :cond_13
    move-object v5, p0

    .line 395
    .line 396
    .line 397
    :goto_e
    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    :cond_14
    return-void
.end method

.method private configRefObjView(Landroid/view/View;)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    const v0, 0x7f0a0dde

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a0c07

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0a0a39

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    .line 34
    const v3, 0x7f0a0a3c

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    const v4, 0x7f0a0a3a

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    const v5, 0x7f0a098b

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/widget/EmojioneView;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/narvii/account/notice/AccountNotice;->isGlobal()Z

    .line 64
    move-result v5

    .line 65
    .line 66
    const/16 v6, 0x8

    .line 67
    const/4 v7, 0x0

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    move v8, v6

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v8, v7

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    if-eqz v5, :cond_2

    .line 78
    move v0, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v0, v7

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/account/notice/AccountNotice;->attchObjectType()I

    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x1

    .line 91
    .line 92
    if-nez v0, :cond_3

    .line 93
    move v0, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move v0, v7

    .line 96
    .line 97
    :goto_2
    iget-object v5, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 98
    const/4 v8, 0x0

    .line 99
    .line 100
    if-nez v5, :cond_4

    .line 101
    move-object v5, v8

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_4
    iget-object v5, v5, Lcom/narvii/account/notice/AccountNotice;->targetUser:Lcom/narvii/model/User;

    .line 105
    .line 106
    :goto_3
    if-eqz v0, :cond_5

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v9

    .line 111
    .line 112
    .line 113
    const v10, 0x7f0704f3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 117
    move-result v9

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move v9, v7

    .line 120
    .line 121
    .line 122
    :goto_4
    invoke-virtual {v2, v9}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 123
    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    const v1, 0x7f080a0e

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    iput-object p1, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 147
    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :cond_6
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 154
    move-result-object v10

    .line 155
    .line 156
    .line 157
    const v11, 0x7f0603dd

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    .line 161
    move-result v10

    .line 162
    .line 163
    .line 164
    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 165
    .line 166
    iput-object v9, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    iget-object v9, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Lcom/narvii/account/notice/AccountNotice;->attachObjectFirstMedia()Lcom/narvii/model/Media;

    .line 172
    move-result-object v9

    .line 173
    .line 174
    if-eqz v9, :cond_7

    .line 175
    .line 176
    iget-object v10, v9, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v10, :cond_7

    .line 179
    .line 180
    const-string v11, "ndcsticker://e/"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    move-result v10

    .line 185
    .line 186
    if-eqz v10, :cond_7

    .line 187
    goto :goto_5

    .line 188
    :cond_7
    move v1, v7

    .line 189
    .line 190
    :goto_5
    if-eqz v1, :cond_8

    .line 191
    move v10, v7

    .line 192
    goto :goto_6

    .line 193
    :cond_8
    move v10, v6

    .line 194
    .line 195
    .line 196
    :goto_6
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    if-eqz v9, :cond_a

    .line 199
    .line 200
    if-eqz v1, :cond_9

    .line 201
    goto :goto_7

    .line 202
    :cond_9
    move v10, v7

    .line 203
    goto :goto_8

    .line 204
    :cond_a
    :goto_7
    move v10, v6

    .line 205
    .line 206
    .line 207
    :goto_8
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    if-eqz v1, :cond_b

    .line 210
    .line 211
    iget-object v1, v9, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 212
    .line 213
    const/16 v10, 0xf

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 218
    .line 219
    new-instance v10, Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Lcom/narvii/util/StringUtils;->hex2bytes(Ljava/lang/String;)[B

    .line 223
    move-result-object v1

    .line 224
    .line 225
    .line 226
    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v10}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 230
    goto :goto_9

    .line 231
    .line 232
    :cond_b
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attchObjectType()I

    .line 236
    move-result p1

    .line 237
    const/4 v1, 0x7

    .line 238
    .line 239
    if-ne p1, v1, :cond_c

    .line 240
    .line 241
    const-string v8, "chat-message"

    .line 242
    goto :goto_9

    .line 243
    .line 244
    :cond_c
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attchObjectType()I

    .line 248
    move-result p1

    .line 249
    .line 250
    const/16 v1, 0x6d

    .line 251
    .line 252
    if-ne p1, v1, :cond_d

    .line 253
    .line 254
    const-string v8, "shared-folder-image"

    .line 255
    .line 256
    :cond_d
    :goto_9
    iput-object v8, v2, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v9}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 260
    .line 261
    :goto_a
    if-eqz v0, :cond_f

    .line 262
    .line 263
    if-eqz v5, :cond_f

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 275
    .line 276
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    move-result p1

    .line 279
    .line 280
    if-eqz p1, :cond_e

    .line 281
    move p1, v6

    .line 282
    goto :goto_b

    .line 283
    :cond_e
    move p1, v7

    .line 284
    .line 285
    .line 286
    :goto_b
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    goto :goto_d

    .line 288
    .line 289
    :cond_f
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachTitle()Ljava/lang/String;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachTitle()Ljava/lang/String;

    .line 302
    move-result-object p1

    .line 303
    .line 304
    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    move-result p1

    .line 307
    .line 308
    if-eqz p1, :cond_10

    .line 309
    move p1, v6

    .line 310
    goto :goto_c

    .line 311
    :cond_10
    move p1, v7

    .line 312
    .line 313
    .line 314
    :goto_c
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    .line 316
    :goto_d
    if-eqz v0, :cond_11

    .line 317
    .line 318
    if-eqz v5, :cond_11

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 322
    goto :goto_f

    .line 323
    .line 324
    :cond_11
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachContent()Ljava/lang/String;

    .line 328
    move-result-object p1

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->attachContent()Ljava/lang/String;

    .line 337
    move-result-object p1

    .line 338
    .line 339
    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    move-result p1

    .line 342
    .line 343
    if-eqz p1, :cond_12

    .line 344
    goto :goto_e

    .line 345
    :cond_12
    move v6, v7

    .line 346
    .line 347
    .line 348
    :goto_e
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_f
    return-void
.end method

.method private openRefObject()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v1, "link"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/account/notice/AccountNotice;->attchObjectString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v2, "android.intent.action.VIEW"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v1}, Lcom/narvii/notice/NoticeDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    :cond_1
    return-void
.end method

.method private resolveCurNotice()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/notice/NoticeDetailFragment$4;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/notice/NoticeDetailFragment$4;-><init>(Lcom/narvii/notice/NoticeDetailFragment;)V

    .line 20
    .line 21
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 24
    .line 25
    iget v1, v1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v4, "/notice/"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/narvii/account/notice/AccountNotice;->noticeId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "/accept"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const-string v2, "api"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 85
    .line 86
    iget-object v3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 93
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    return-object p0
.end method

.method private updateNoticeCount()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 23
    .line 24
    iget v1, v1, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 25
    .line 26
    if-lez v1, :cond_2

    .line 27
    .line 28
    const-string v1, "api"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    const-string v3, "reminder/check"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 47
    .line 48
    iget v3, v3, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    sget-object v3, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    const-string v3, "ignoreUnreadChatThreadsCount"

    .line 61
    .line 62
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 70
    move-result v3

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    const-string v4, "timezone"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    new-instance v3, Lcom/narvii/notice/NoticeDetailFragment$3;

    .line 87
    .line 88
    const-class v4, Lcom/narvii/community/ReminderCheckResult;

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/notice/NoticeDetailFragment$3;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Ljava/lang/Class;Lcom/narvii/account/AccountService;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    .line 96
    :cond_2
    const-string v0, "_notice"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    check-cast v0, Lcom/narvii/services/incubator/IncubatorNoticeService;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/narvii/services/incubator/IncubatorNoticeService;->sendGlobalNoticeRequest()V

    .line 108
    :cond_3
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment;->configDetailView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/notice/NoticeDetailFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment;->configRefObjView(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/notice/NoticeDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->updateNoticeCount()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/notice/NoticeDetailFragment$NoticeDetailAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, p0}, Lcom/narvii/notice/NoticeDetailFragment$AttachMediasAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p0}, Lcom/narvii/notice/NoticeDetailFragment$AttachInfoAdapter;-><init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const/high16 v2, 0x432a0000    # 170.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 42
    move-result v1

    .line 43
    float-to-int v1, v1

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :sswitch_0
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->openRefObject()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->resolveCurNotice()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/account/notice/AccountNotice;->operator:Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :sswitch_3
    invoke-direct {p0}, Lcom/narvii/notice/NoticeDetailFragment;->appealNotice()V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :sswitch_data_0
    .sparse-switch
        0x7f0a0127 -> :sswitch_3
        0x7f0a0171 -> :sswitch_2
        0x7f0a0627 -> :sswitch_1
        0x7f0a09f9 -> :sswitch_2
        0x7f0a0dde -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "notice"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/account/notice/AccountNotice;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/account/notice/AccountNotice;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 20
    .line 21
    const-string p1, "community"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-class v0, Lcom/narvii/model/Community;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/model/Community;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->community:Lcom/narvii/model/Community;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget p1, p1, Lcom/narvii/account/notice/AccountNotice;->type:I

    .line 42
    const/4 v0, 0x4

    .line 43
    .line 44
    if-eq p1, v0, :cond_0

    .line 45
    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    .line 50
    .line 51
    :cond_0
    const p1, 0x7f121167

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    const p1, 0x7f121291

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->notice:Lcom/narvii/account/notice/AccountNotice;

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    const/4 p1, 0x0

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/account/notice/AccountNotice;->getAppealTicketId()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    :goto_1
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->appealTicketId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02f9

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0127

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnAppeal:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment;->appealTicketId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a0627

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment;->btnGotit:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
