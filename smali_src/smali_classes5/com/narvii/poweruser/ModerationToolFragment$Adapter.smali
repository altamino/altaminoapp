.class Lcom/narvii/poweruser/ModerationToolFragment$Adapter;
.super Lcom/narvii/list/prefs/PrefsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/ModerationToolFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ModerationToolFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/ModerationToolFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    const-string v1, "config"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Lcom/narvii/model/User;->isCurator()Z

    .line 37
    move-result v5

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    move v5, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v5, v3

    .line 43
    .line 44
    :goto_0
    if-eqz v2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/narvii/model/User;->isLeader()Z

    .line 52
    move-result v6

    .line 53
    .line 54
    if-eqz v6, :cond_1

    .line 55
    move v3, v4

    .line 56
    .line 57
    :cond_1
    if-eqz v2, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    .line 65
    move-result v4

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 70
    .line 71
    .line 72
    const v6, 0x7f120bd4

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 76
    .line 77
    const-class v6, Lcom/narvii/flag/FlagListFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    :cond_2
    if-eqz v2, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 96
    move-result v4

    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 102
    move-result v4

    .line 103
    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 107
    .line 108
    .line 109
    const v6, 0x7f120203

    .line 110
    .line 111
    .line 112
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 113
    .line 114
    const-class v6, Lcom/narvii/catalog/review/CatalogSubmissionFragment;

    .line 115
    .line 116
    .line 117
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    :cond_3
    if-eqz v2, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 133
    move-result v4

    .line 134
    .line 135
    if-eqz v4, :cond_4

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 139
    move-result v4

    .line 140
    .line 141
    if-eqz v4, :cond_4

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedChatThreadEnabled()Z

    .line 145
    move-result v4

    .line 146
    .line 147
    if-eqz v4, :cond_4

    .line 148
    .line 149
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 150
    .line 151
    .line 152
    const v6, 0x7f12075a

    .line 153
    .line 154
    .line 155
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 156
    .line 157
    const-class v6, Lcom/narvii/poweruser/FeaturedPublicChatListFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    move-result-object v6

    .line 162
    .line 163
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    :cond_4
    if-eqz v2, :cond_5

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 172
    move-result-object v4

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 176
    move-result v4

    .line 177
    .line 178
    if-eqz v4, :cond_5

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedPostEnabled()Z

    .line 182
    move-result v4

    .line 183
    .line 184
    if-eqz v4, :cond_5

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 188
    move-result v4

    .line 189
    .line 190
    if-eqz v4, :cond_5

    .line 191
    .line 192
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 193
    .line 194
    .line 195
    const v6, 0x7f120ff2

    .line 196
    .line 197
    .line 198
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 199
    .line 200
    const-class v6, Lcom/narvii/poweruser/ReorderFeatureFragment;

    .line 201
    .line 202
    .line 203
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    move-result-object v6

    .line 205
    .line 206
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    :cond_5
    if-eqz v2, :cond_6

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 215
    move-result-object v4

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    .line 219
    move-result v4

    .line 220
    .line 221
    if-eqz v4, :cond_6

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isFeaturedMemberEnabled()Z

    .line 225
    move-result v4

    .line 226
    .line 227
    if-eqz v4, :cond_6

    .line 228
    .line 229
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 230
    .line 231
    .line 232
    const v6, 0x7f120ff1

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 236
    .line 237
    const-class v6, Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    .line 238
    .line 239
    .line 240
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    move-result-object v6

    .line 242
    .line 243
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    :cond_6
    if-eqz v2, :cond_7

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 252
    move-result-object v4

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 256
    move-result v4

    .line 257
    .line 258
    if-eqz v4, :cond_7

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 262
    move-result v4

    .line 263
    .line 264
    if-eqz v4, :cond_7

    .line 265
    .line 266
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 267
    .line 268
    .line 269
    const v6, 0x7f1203fb

    .line 270
    .line 271
    .line 272
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 273
    .line 274
    const-class v6, Lcom/narvii/poweruser/DisabledFeedFragment;

    .line 275
    .line 276
    .line 277
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    move-result-object v6

    .line 279
    .line 280
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    :cond_7
    if-eqz v2, :cond_8

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 289
    move-result-object v4

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 293
    move-result v4

    .line 294
    .line 295
    if-eqz v4, :cond_8

    .line 296
    .line 297
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 298
    .line 299
    .line 300
    const v6, 0x7f120cb0

    .line 301
    .line 302
    .line 303
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 304
    .line 305
    const-class v6, Lcom/narvii/poweruser/history/ModerationHistoryFragment;

    .line 306
    .line 307
    .line 308
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    move-result-object v6

    .line 310
    .line 311
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    :cond_8
    if-eqz v2, :cond_9

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 320
    move-result-object v4

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Lcom/narvii/model/User;->isCurator()Z

    .line 324
    move-result v4

    .line 325
    .line 326
    if-eqz v4, :cond_9

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 330
    move-result v4

    .line 331
    .line 332
    if-eqz v4, :cond_9

    .line 333
    .line 334
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 335
    .line 336
    .line 337
    const v6, 0x7f1203fd

    .line 338
    .line 339
    .line 340
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 341
    .line 342
    const-class v6, Lcom/narvii/poweruser/DisabledPublicChatListFragment;

    .line 343
    .line 344
    .line 345
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    move-result-object v6

    .line 347
    .line 348
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 349
    .line 350
    .line 351
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    :cond_9
    if-eqz v2, :cond_a

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 357
    move-result-object v4

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4}, Lcom/narvii/model/User;->isLeader()Z

    .line 361
    move-result v4

    .line 362
    .line 363
    if-eqz v4, :cond_a

    .line 364
    .line 365
    new-instance v4, Lcom/narvii/list/prefs/PrefsEntry;

    .line 366
    .line 367
    .line 368
    const v6, 0x7f12019f

    .line 369
    .line 370
    .line 371
    invoke-direct {v4, v6}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 372
    .line 373
    const-class v6, Lcom/narvii/poweruser/BannedMemberListFragment;

    .line 374
    .line 375
    .line 376
    invoke-static {v6}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 377
    move-result-object v6

    .line 378
    .line 379
    iput-object v6, v4, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 380
    .line 381
    .line 382
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    :cond_a
    if-eqz v2, :cond_b

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 388
    move-result-object v0

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 392
    move-result v0

    .line 393
    .line 394
    if-eqz v0, :cond_b

    .line 395
    .line 396
    const-string v0, "sharedFolder"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isModuleEnabled(Ljava/lang/String;)Z

    .line 400
    move-result v0

    .line 401
    .line 402
    if-eqz v0, :cond_b

    .line 403
    .line 404
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 405
    .line 406
    .line 407
    const v4, 0x7f1203fa

    .line 408
    .line 409
    .line 410
    invoke-direct {v0, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 411
    .line 412
    const-class v4, Lcom/narvii/sharedfolder/DisabledSharedPhotosFragment;

    .line 413
    .line 414
    .line 415
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 416
    move-result-object v4

    .line 417
    .line 418
    iput-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 419
    .line 420
    .line 421
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    :cond_b
    if-eqz v2, :cond_c

    .line 424
    .line 425
    if-eqz v3, :cond_c

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 429
    move-result v0

    .line 430
    .line 431
    if-eqz v0, :cond_c

    .line 432
    .line 433
    new-instance v0, Lcom/narvii/list/prefs/PrefsBadge;

    .line 434
    .line 435
    iget-object v2, p0, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;->this$0:Lcom/narvii/poweruser/ModerationToolFragment;

    .line 436
    .line 437
    .line 438
    invoke-static {v2}, Lcom/narvii/poweruser/ModerationToolFragment;->u(Lcom/narvii/poweruser/ModerationToolFragment;)I

    .line 439
    move-result v2

    .line 440
    .line 441
    .line 442
    const v3, 0x7f1210ed

    .line 443
    .line 444
    .line 445
    invoke-direct {v0, v3, v2}, Lcom/narvii/list/prefs/PrefsBadge;-><init>(II)V

    .line 446
    .line 447
    const-class v2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 448
    .line 449
    .line 450
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 451
    move-result-object v2

    .line 452
    .line 453
    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 454
    .line 455
    .line 456
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    :cond_c
    if-eqz v5, :cond_d

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 462
    move-result v0

    .line 463
    .line 464
    if-eqz v0, :cond_d

    .line 465
    .line 466
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 467
    .line 468
    .line 469
    const v1, 0x7f120fc1

    .line 470
    .line 471
    .line 472
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 473
    .line 474
    const-class v1, Lcom/narvii/poweruser/RecentCreatedChatroomListFragment;

    .line 475
    .line 476
    .line 477
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 478
    move-result-object v1

    .line 479
    .line 480
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 481
    .line 482
    .line 483
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_d
    return-void
.end method
