.class Lcom/narvii/user/profile/UserProfileFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a0d25

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a0f44

    .line 39
    .line 40
    const-string v2, "id"

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    const-class p1, Lcom/narvii/user/list/FollowingListFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment$11;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 68
    move-result v0

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a0f43

    .line 72
    .line 73
    if-ne v0, v1, :cond_3

    .line 74
    .line 75
    const-class p1, Lcom/narvii/user/list/FollowersListFragment;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment$11;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 99
    move-result v0

    .line 100
    .line 101
    .line 102
    const v1, 0x7f0a0f36

    .line 103
    const/4 v3, 0x0

    .line 104
    .line 105
    if-eq v0, v1, :cond_10

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 109
    move-result v0

    .line 110
    .line 111
    .line 112
    const v4, 0x7f0a09f9

    .line 113
    .line 114
    if-ne v0, v4, :cond_4

    .line 115
    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 120
    move-result v0

    .line 121
    .line 122
    .line 123
    const v1, 0x7f0a04b7

    .line 124
    .line 125
    if-ne v0, v1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 128
    .line 129
    const-string v0, "edit button"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0, v3}, Lcom/narvii/user/profile/UserProfileFragment;->editProfile(Ljava/lang/String;Z)V

    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    .line 137
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 138
    move-result v0

    .line 139
    .line 140
    .line 141
    const v1, 0x7f0a0989

    .line 142
    .line 143
    if-ne v0, v1, :cond_7

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 149
    move-result v0

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V

    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_6
    sget-object v0, Lcom/narvii/widget/MoodView;->SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 169
    move-result v0

    .line 170
    .line 171
    .line 172
    const v1, 0x7f0a02a4

    .line 173
    .line 174
    if-ne v0, v1, :cond_8

    .line 175
    .line 176
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->startChat()V

    .line 180
    .line 181
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 182
    .line 183
    const-string/jumbo v0, "statistics"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 190
    .line 191
    const-string v0, "Start Chat Button in User Profile"

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 195
    move-result-object p1

    .line 196
    .line 197
    const-string v0, "Start Chat Button in User Profile Totals"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 201
    .line 202
    goto/16 :goto_3

    .line 203
    .line 204
    .line 205
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 206
    move-result v0

    .line 207
    .line 208
    .line 209
    const v1, 0x7f0a0f3e

    .line 210
    .line 211
    if-ne v0, v1, :cond_9

    .line 212
    .line 213
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 214
    .line 215
    new-instance v0, Landroid/content/Intent;

    .line 216
    .line 217
    const-string v1, "follow"

    .line 218
    .line 219
    .line 220
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 224
    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 229
    move-result v0

    .line 230
    .line 231
    .line 232
    const v1, 0x7f0a0963

    .line 233
    .line 234
    if-eq v0, v1, :cond_c

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 238
    move-result v0

    .line 239
    .line 240
    .line 241
    const v2, 0x7f0a0f5a

    .line 242
    .line 243
    if-ne v0, v2, :cond_a

    .line 244
    goto :goto_0

    .line 245
    .line 246
    .line 247
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 248
    move-result v0

    .line 249
    .line 250
    .line 251
    const v1, 0x7f0a0057

    .line 252
    .line 253
    if-ne v0, v1, :cond_b

    .line 254
    .line 255
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 256
    .line 257
    const-string v0, "My User Profile Page"

    .line 258
    .line 259
    .line 260
    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->E(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V

    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    .line 265
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 266
    move-result p1

    .line 267
    .line 268
    .line 269
    const v0, 0x7f0a010b

    .line 270
    .line 271
    if-ne p1, v0, :cond_15

    .line 272
    .line 273
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 274
    .line 275
    .line 276
    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->I(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 284
    move-result v0

    .line 285
    .line 286
    const-string v2, "Reputation"

    .line 287
    .line 288
    const-string v3, "Ranking Bar"

    .line 289
    .line 290
    if-eqz v0, :cond_e

    .line 291
    .line 292
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 296
    move-result p1

    .line 297
    .line 298
    if-ne p1, v1, :cond_d

    .line 299
    move-object v2, v3

    .line 300
    .line 301
    .line 302
    :cond_d
    invoke-static {v0, v2}, Lcom/narvii/user/profile/UserProfileFragment;->E(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/String;)V

    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :cond_e
    const-class v0, Lcom/narvii/achievements/AllRanksFragment;

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    move-result-object v0

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 314
    move-result p1

    .line 315
    .line 316
    if-ne p1, v1, :cond_f

    .line 317
    move-object v2, v3

    .line 318
    .line 319
    :cond_f
    const-string p1, "Source"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    .line 324
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 325
    .line 326
    .line 327
    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment$11;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 328
    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    check-cast v0, Lcom/narvii/model/User;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 343
    move-result p1

    .line 344
    .line 345
    if-ne p1, v1, :cond_12

    .line 346
    .line 347
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 348
    .line 349
    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 350
    .line 351
    .line 352
    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 353
    move-result-object p1

    .line 354
    .line 355
    const-string v1, "UserIcon"

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 359
    move-result-object p1

    .line 360
    .line 361
    if-eqz v0, :cond_11

    .line 362
    .line 363
    iget-object v1, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 364
    .line 365
    if-eqz v1, :cond_11

    .line 366
    const/4 v1, 0x1

    .line 367
    goto :goto_2

    .line 368
    :cond_11
    move v1, v3

    .line 369
    .line 370
    .line 371
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 372
    move-result-object v1

    .line 373
    .line 374
    const-string v4, "isLiveChatting"

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 378
    move-result-object p1

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 382
    .line 383
    :cond_12
    if-eqz v0, :cond_13

    .line 384
    .line 385
    iget-object p1, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    move-result p1

    .line 390
    .line 391
    if-nez p1, :cond_13

    .line 392
    .line 393
    const-class p1, Lcom/narvii/chat/ChatFragment;

    .line 394
    .line 395
    .line 396
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    move-result-object p1

    .line 398
    .line 399
    iget-object v0, v0, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    .line 404
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 405
    .line 406
    .line 407
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment$11;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 408
    return-void

    .line 409
    .line 410
    :cond_13
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 414
    move-result p1

    .line 415
    .line 416
    if-eqz p1, :cond_14

    .line 417
    .line 418
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 419
    .line 420
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 424
    move-result-object v0

    .line 425
    .line 426
    .line 427
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    const v0, 0x7f121232

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 434
    .line 435
    .line 436
    const v0, 0x7f121240

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 440
    .line 441
    .line 442
    const v0, 0x7f121233

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 446
    .line 447
    new-instance v0, Lcom/narvii/user/profile/UserProfileFragment$11$1;

    .line 448
    .line 449
    .line 450
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/UserProfileFragment$11$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$11;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 457
    goto :goto_3

    .line 458
    .line 459
    :cond_14
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$11;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 460
    const/4 v0, 0x0

    .line 461
    .line 462
    .line 463
    invoke-virtual {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->gallery(Lcom/narvii/model/Media;)V

    .line 464
    :cond_15
    :goto_3
    return-void
.end method
