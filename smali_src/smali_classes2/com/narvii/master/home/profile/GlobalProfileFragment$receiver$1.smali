.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    const-string v0, "userBlockService"

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-eqz p1, :cond_7

    .line 22
    .line 23
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_7

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    if-nez p1, :cond_7

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setUid(Ljava/lang/String;)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    if-nez v2, :cond_1

    .line 95
    move-object v2, v1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_1
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 108
    move-object v2, v1

    .line 109
    .line 110
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v3}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 118
    move-result v2

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    :goto_0
    invoke-static {p1, v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Boolean;)V

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfilePage()Z

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 143
    move-result p1

    .line 144
    .line 145
    if-nez p1, :cond_6

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->setUser(Lcom/narvii/model/User;)V

    .line 151
    .line 152
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getProfileView()Lcom/narvii/master/home/widgets/GlobalProfileHeaderView;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    if-eqz p1, :cond_3

    .line 159
    .line 160
    .line 161
    const v2, 0x7f0a0171

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 168
    goto :goto_1

    .line 169
    :cond_3
    move-object p1, v1

    .line 170
    .line 171
    .line 172
    :goto_1
    const v2, 0x7f080a0e

    .line 173
    .line 174
    if-nez p1, :cond_4

    .line 175
    goto :goto_2

    .line 176
    .line 177
    :cond_4
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 181
    move-result-object v3

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 185
    move-result-object v3

    .line 186
    .line 187
    iput-object v3, p1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    :goto_2
    if-nez p1, :cond_5

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_5
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 196
    move-result-object v3

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    iput-object v2, p1, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 208
    .line 209
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->sendGlobalProfileRequest()V

    .line 213
    .line 214
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter()V

    .line 218
    .line 219
    .line 220
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 224
    .line 225
    .line 226
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    move-result p1

    .line 228
    .line 229
    if-nez p1, :cond_8

    .line 230
    .line 231
    const-string p1, "com.narvii.action.WALLET_CHANGED"

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 235
    move-result-object v2

    .line 236
    .line 237
    .line 238
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    move-result p1

    .line 240
    .line 241
    if-nez p1, :cond_8

    .line 242
    .line 243
    const-string p1, "com.narvii.action.COUPONS_CHANGED"

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    .line 249
    .line 250
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    move-result p1

    .line 252
    .line 253
    if-eqz p1, :cond_9

    .line 254
    .line 255
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 259
    move-result p1

    .line 260
    .line 261
    if-eqz p1, :cond_9

    .line 262
    .line 263
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateMembershipView()V

    .line 267
    .line 268
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 269
    .line 270
    .line 271
    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$updateMenu(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    .line 272
    .line 273
    :cond_9
    const-string p1, "com.narvii.action.ACTION_STREAK_REPAIR_SUCCESS"

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    .line 280
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    move-result p1

    .line 282
    .line 283
    if-eqz p1, :cond_a

    .line 284
    .line 285
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->isMyProfile()Z

    .line 289
    move-result p1

    .line 290
    .line 291
    if-eqz p1, :cond_a

    .line 292
    .line 293
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 294
    .line 295
    .line 296
    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getMembershipService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/wallet/MembershipService;

    .line 297
    move-result-object p1

    .line 298
    .line 299
    if-eqz p1, :cond_a

    .line 300
    const/4 v2, 0x1

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 304
    .line 305
    :cond_a
    const-string p1, "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 309
    move-result-object p2

    .line 310
    .line 311
    .line 312
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    move-result p1

    .line 314
    .line 315
    if-eqz p1, :cond_d

    .line 316
    .line 317
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    .line 321
    move-result-object p1

    .line 322
    .line 323
    if-nez p1, :cond_b

    .line 324
    goto :goto_5

    .line 325
    .line 326
    :cond_b
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 327
    .line 328
    .line 329
    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$getUserBlockService$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Lcom/narvii/userblock/UserBlockService;

    .line 330
    move-result-object p1

    .line 331
    .line 332
    if-nez p1, :cond_c

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 336
    goto :goto_4

    .line 337
    :cond_c
    move-object v1, p1

    .line 338
    .line 339
    :goto_4
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getUid()Ljava/lang/String;

    .line 343
    move-result-object p1

    .line 344
    .line 345
    .line 346
    invoke-interface {v1, p1}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 347
    move-result p1

    .line 348
    .line 349
    .line 350
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 351
    move-result-object v1

    .line 352
    .line 353
    :goto_5
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 354
    .line 355
    .line 356
    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$isUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;)Ljava/lang/Boolean;

    .line 357
    move-result-object p1

    .line 358
    .line 359
    .line 360
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    move-result p1

    .line 362
    .line 363
    if-nez p1, :cond_d

    .line 364
    .line 365
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 366
    .line 367
    .line 368
    invoke-static {p1, v1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setUserBlocked$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Ljava/lang/Boolean;)V

    .line 369
    .line 370
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter()V

    .line 374
    .line 375
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$receiver$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->updateViews()V

    .line 379
    :cond_d
    return-void
.end method
