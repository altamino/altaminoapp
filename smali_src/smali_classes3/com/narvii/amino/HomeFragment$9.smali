.class Lcom/narvii/amino/HomeFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/amino/HomeFragment;->pageScrollState:I

    .line 5
    .line 6
    if-nez p1, :cond_3

    .line 7
    const/4 p1, 0x0

    .line 8
    move v0, p1

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/amino/HomeFragment;->access$000(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/widget/NVViewPager;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-ge v0, v1, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 46
    .line 47
    iget v2, v2, Lcom/narvii/amino/HomeFragment;->curSelectedPos:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_1

    .line 50
    move v2, p1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    const/16 v2, 0x8

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 9

    .line 1
    .line 2
    iget-object p3, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p3

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    cmpl-float v1, p2, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    add-int/2addr p1, v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-lt p1, v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 33
    move-result-object p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move-object p1, v2

    .line 36
    :goto_1
    const/4 v1, 0x0

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    :cond_2
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    instance-of v4, v4, Lcom/narvii/app/DrawerActivity;

    .line 75
    .line 76
    const/16 v5, 0x8

    .line 77
    .line 78
    const/high16 v6, 0x3f800000    # 1.0f

    .line 79
    .line 80
    if-eqz v4, :cond_8

    .line 81
    .line 82
    instance-of v4, p3, Lcom/narvii/app/NVFragment;

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    move-object v4, p3

    .line 86
    .line 87
    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 94
    .line 95
    if-ne v4, v7, :cond_3

    .line 96
    move v4, v1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v4, v3

    .line 99
    :goto_2
    int-to-float v4, v4

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    move v4, v6

    .line 102
    .line 103
    :goto_3
    instance-of v7, p1, Lcom/narvii/app/NVFragment;

    .line 104
    .line 105
    if-eqz v7, :cond_6

    .line 106
    move-object v7, p1

    .line 107
    .line 108
    check-cast v7, Lcom/narvii/app/NVFragment;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    if-ne v7, v8, :cond_5

    .line 117
    move v7, v1

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    move v7, v3

    .line 120
    :goto_4
    int-to-float v7, v7

    .line 121
    goto :goto_5

    .line 122
    :cond_6
    move v7, v4

    .line 123
    .line 124
    :goto_5
    sub-float v8, v6, p2

    .line 125
    mul-float/2addr v4, v8

    .line 126
    mul-float/2addr v7, p2

    .line 127
    add-float/2addr v4, v7

    .line 128
    .line 129
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 133
    move-result-object v7

    .line 134
    .line 135
    check-cast v7, Lcom/narvii/app/DrawerActivity;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    .line 139
    move-result-object v7

    .line 140
    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    .line 144
    const v8, 0x7f0a0b43

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    move-result-object v7

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 152
    .line 153
    cmpl-float v4, v4, v0

    .line 154
    .line 155
    if-nez v4, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 159
    move-result v4

    .line 160
    .line 161
    if-eq v4, v5, :cond_8

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    goto :goto_6

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 169
    move-result v4

    .line 170
    .line 171
    if-eqz v4, :cond_8

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    :cond_8
    :goto_6
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    instance-of v4, v4, Lcom/narvii/app/DrawerActivity;

    .line 183
    .line 184
    if-eqz v4, :cond_e

    .line 185
    .line 186
    instance-of v4, p3, Lcom/narvii/app/NVFragment;

    .line 187
    .line 188
    if-eqz v4, :cond_a

    .line 189
    move-object v4, p3

    .line 190
    .line 191
    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    .line 195
    move-result-object v4

    .line 196
    .line 197
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 198
    .line 199
    if-ne v4, v7, :cond_9

    .line 200
    move v4, v1

    .line 201
    goto :goto_7

    .line 202
    :cond_9
    move v4, v3

    .line 203
    :goto_7
    int-to-float v4, v4

    .line 204
    goto :goto_8

    .line 205
    :cond_a
    move v4, v6

    .line 206
    .line 207
    :goto_8
    instance-of v7, p1, Lcom/narvii/app/NVFragment;

    .line 208
    .line 209
    if-eqz v7, :cond_c

    .line 210
    move-object v7, p1

    .line 211
    .line 212
    check-cast v7, Lcom/narvii/app/NVFragment;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v7}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    .line 216
    move-result-object v7

    .line 217
    .line 218
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 219
    .line 220
    if-ne v7, v8, :cond_b

    .line 221
    move v7, v1

    .line 222
    goto :goto_9

    .line 223
    :cond_b
    move v7, v3

    .line 224
    :goto_9
    int-to-float v7, v7

    .line 225
    goto :goto_a

    .line 226
    :cond_c
    move v7, v4

    .line 227
    .line 228
    :goto_a
    sub-float v8, v6, p2

    .line 229
    mul-float/2addr v4, v8

    .line 230
    mul-float/2addr v7, p2

    .line 231
    add-float/2addr v4, v7

    .line 232
    .line 233
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 237
    move-result-object v7

    .line 238
    .line 239
    check-cast v7, Lcom/narvii/app/DrawerActivity;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Lcom/narvii/app/DrawerActivity;->getLiveLayerView()Landroid/view/View;

    .line 243
    move-result-object v7

    .line 244
    .line 245
    if-eqz v7, :cond_e

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    .line 249
    .line 250
    cmpl-float v4, v4, v0

    .line 251
    .line 252
    if-nez v4, :cond_d

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 256
    move-result v4

    .line 257
    .line 258
    if-eq v4, v5, :cond_e

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    goto :goto_b

    .line 263
    .line 264
    .line 265
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 266
    move-result v4

    .line 267
    .line 268
    if-eqz v4, :cond_e

    .line 269
    .line 270
    .line 271
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    :cond_e
    :goto_b
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 277
    move-result-object v4

    .line 278
    .line 279
    instance-of v4, v4, Lcom/narvii/app/DrawerActivity;

    .line 280
    .line 281
    if-eqz v4, :cond_12

    .line 282
    .line 283
    instance-of v4, p3, Lcom/narvii/app/NVFragment;

    .line 284
    .line 285
    if-eqz v4, :cond_f

    .line 286
    move-object v4, p3

    .line 287
    .line 288
    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->hideCBBInHomeFragment()Z

    .line 292
    move-result v4

    .line 293
    xor-int/2addr v4, v3

    .line 294
    int-to-float v4, v4

    .line 295
    goto :goto_c

    .line 296
    :cond_f
    move v4, v6

    .line 297
    .line 298
    :goto_c
    instance-of v5, p1, Lcom/narvii/app/NVFragment;

    .line 299
    .line 300
    if-eqz v5, :cond_10

    .line 301
    move-object v5, p1

    .line 302
    .line 303
    check-cast v5, Lcom/narvii/app/NVFragment;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->hideCBBInHomeFragment()Z

    .line 307
    move-result v5

    .line 308
    xor-int/2addr v5, v3

    .line 309
    int-to-float v5, v5

    .line 310
    goto :goto_d

    .line 311
    :cond_10
    move v5, v4

    .line 312
    .line 313
    :goto_d
    sub-float v7, v6, p2

    .line 314
    mul-float/2addr v4, v7

    .line 315
    mul-float/2addr v5, p2

    .line 316
    add-float/2addr v4, v5

    .line 317
    .line 318
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 322
    move-result-object v5

    .line 323
    .line 324
    check-cast v5, Lcom/narvii/app/DrawerActivity;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5}, Lcom/narvii/app/DrawerActivity;->getCBBView()Landroid/view/View;

    .line 328
    move-result-object v5

    .line 329
    .line 330
    if-eqz v5, :cond_12

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 334
    .line 335
    cmpl-float v0, v4, v0

    .line 336
    .line 337
    if-nez v0, :cond_11

    .line 338
    .line 339
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 343
    move-result-object v0

    .line 344
    .line 345
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v3}, Lcom/narvii/app/DrawerActivity;->setDisableCBB(Z)V

    .line 349
    goto :goto_e

    .line 350
    .line 351
    :cond_11
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 355
    move-result-object v0

    .line 356
    .line 357
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lcom/narvii/app/DrawerActivity;->setDisableCBB(Z)V

    .line 361
    .line 362
    :cond_12
    :goto_e
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 363
    .line 364
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    .line 365
    .line 366
    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 368
    move-result v0

    .line 369
    .line 370
    if-le v0, v3, :cond_13

    .line 371
    .line 372
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 376
    move-result-object v0

    .line 377
    .line 378
    .line 379
    const v1, 0x7f0701ed

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 383
    move-result v1

    .line 384
    .line 385
    :cond_13
    instance-of v0, p3, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 386
    .line 387
    if-eqz v0, :cond_14

    .line 388
    move-object v4, p3

    .line 389
    .line 390
    check-cast v4, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 391
    .line 392
    .line 393
    invoke-interface {v4, v1}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->setExtraHeight(I)V

    .line 394
    .line 395
    :cond_14
    instance-of v4, p1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 396
    .line 397
    if-eqz v4, :cond_15

    .line 398
    move-object v5, p1

    .line 399
    .line 400
    check-cast v5, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 401
    .line 402
    .line 403
    invoke-interface {v5, v1}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->setExtraHeight(I)V

    .line 404
    .line 405
    :cond_15
    if-eqz v0, :cond_16

    .line 406
    move-object v0, p3

    .line 407
    .line 408
    check-cast v0, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 409
    .line 410
    .line 411
    invoke-interface {v0}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->getTabAlpha()F

    .line 412
    move-result v0

    .line 413
    goto :goto_f

    .line 414
    :cond_16
    move v0, v6

    .line 415
    .line 416
    :goto_f
    if-eqz v4, :cond_17

    .line 417
    move-object v1, p1

    .line 418
    .line 419
    check-cast v1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    .line 420
    .line 421
    .line 422
    invoke-interface {v1}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->getTabAlpha()F

    .line 423
    move-result v1

    .line 424
    goto :goto_10

    .line 425
    :cond_17
    move v1, v6

    .line 426
    .line 427
    :goto_10
    sub-float v4, v6, p2

    .line 428
    mul-float/2addr v0, v4

    .line 429
    mul-float/2addr v1, p2

    .line 430
    add-float/2addr v0, v1

    .line 431
    .line 432
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 433
    .line 434
    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->configService:Lcom/narvii/config/ConfigService;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 442
    move-result v1

    .line 443
    .line 444
    cmpl-float v5, v0, v6

    .line 445
    .line 446
    if-lez v5, :cond_18

    .line 447
    goto :goto_11

    .line 448
    :cond_18
    move v6, v0

    .line 449
    .line 450
    :goto_11
    const/high16 v0, 0x437f0000    # 255.0f

    .line 451
    mul-float/2addr v6, v0

    .line 452
    float-to-int v0, v6

    .line 453
    .line 454
    .line 455
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 456
    move-result v5

    .line 457
    .line 458
    .line 459
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 460
    move-result v6

    .line 461
    .line 462
    .line 463
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 464
    move-result v1

    .line 465
    .line 466
    .line 467
    invoke-static {v0, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 468
    move-result v0

    .line 469
    .line 470
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 474
    move-result-object v1

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 478
    move-result-object v1

    .line 479
    .line 480
    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    .line 481
    .line 482
    if-eqz v1, :cond_19

    .line 483
    .line 484
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 488
    move-result-object v1

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 492
    move-result-object v1

    .line 493
    .line 494
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 498
    move-result v1

    .line 499
    goto :goto_12

    .line 500
    :cond_19
    const/4 v1, -0x1

    .line 501
    .line 502
    :goto_12
    if-eq v0, v1, :cond_1a

    .line 503
    .line 504
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 508
    move-result-object v1

    .line 509
    .line 510
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 511
    .line 512
    .line 513
    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    .line 518
    :cond_1a
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 519
    .line 520
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    move-result-object p3

    .line 525
    .line 526
    check-cast p3, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    .line 527
    .line 528
    if-nez p3, :cond_1b

    .line 529
    move-object p3, v2

    .line 530
    goto :goto_13

    .line 531
    .line 532
    .line 533
    :cond_1b
    invoke-virtual {p3}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->getView()Landroid/view/View;

    .line 534
    move-result-object p3

    .line 535
    .line 536
    :goto_13
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 537
    .line 538
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    move-result-object p1

    .line 543
    .line 544
    check-cast p1, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    .line 545
    .line 546
    if-nez p1, :cond_1c

    .line 547
    move-object p1, v2

    .line 548
    goto :goto_14

    .line 549
    .line 550
    .line 551
    :cond_1c
    invoke-virtual {p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->getView()Landroid/view/View;

    .line 552
    move-result-object p1

    .line 553
    .line 554
    :goto_14
    if-eqz p3, :cond_1d

    .line 555
    .line 556
    .line 557
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 558
    .line 559
    :cond_1d
    if-eqz p1, :cond_1e

    .line 560
    .line 561
    .line 562
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 563
    .line 564
    :cond_1e
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 565
    .line 566
    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 567
    .line 568
    .line 569
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 570
    move-result p2

    .line 571
    sub-int/2addr p2, v3

    .line 572
    .line 573
    :goto_15
    if-ltz p2, :cond_21

    .line 574
    .line 575
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 576
    .line 577
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 581
    move-result-object v0

    .line 582
    .line 583
    if-ne v0, p3, :cond_1f

    .line 584
    move-object p3, v2

    .line 585
    goto :goto_16

    .line 586
    .line 587
    :cond_1f
    if-ne v0, p1, :cond_20

    .line 588
    move-object p1, v2

    .line 589
    goto :goto_16

    .line 590
    .line 591
    :cond_20
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 592
    .line 593
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 597
    .line 598
    :goto_16
    add-int/lit8 p2, p2, -0x1

    .line 599
    goto :goto_15

    .line 600
    .line 601
    :cond_21
    if-eqz p3, :cond_23

    .line 602
    .line 603
    .line 604
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 605
    move-result-object p2

    .line 606
    .line 607
    if-eqz p2, :cond_22

    .line 608
    .line 609
    .line 610
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 611
    move-result-object p2

    .line 612
    .line 613
    check-cast p2, Landroid/view/ViewGroup;

    .line 614
    .line 615
    .line 616
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 617
    .line 618
    :cond_22
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 619
    .line 620
    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 621
    .line 622
    .line 623
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 624
    .line 625
    :cond_23
    if-eqz p1, :cond_25

    .line 626
    .line 627
    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 629
    move-result-object p2

    .line 630
    .line 631
    if-eqz p2, :cond_24

    .line 632
    .line 633
    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 635
    move-result-object p2

    .line 636
    .line 637
    check-cast p2, Landroid/view/ViewGroup;

    .line 638
    .line 639
    .line 640
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 641
    .line 642
    :cond_24
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 643
    .line 644
    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 645
    .line 646
    .line 647
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 648
    :cond_25
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    iput p1, v0, Lcom/narvii/amino/HomeFragment;->curSelectedPos:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/amino/HomeFragment;->D(Lcom/narvii/amino/HomeFragment;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 20
    move-object v3, v0

    .line 21
    .line 22
    check-cast v3, Lcom/narvii/app/NVFragment;

    .line 23
    .line 24
    iput-object v3, v2, Lcom/narvii/amino/HomeFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 25
    .line 26
    :cond_0
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    instance-of v2, v2, Lcom/narvii/app/DrawerActivity;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/narvii/app/DrawerActivity;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    move-object v4, v0

    .line 53
    .line 54
    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    .line 58
    move-result v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v4, v3

    .line 61
    .line 62
    :goto_0
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 63
    .line 64
    iget-boolean v5, v5, Lcom/narvii/amino/HomeFragment;->pageCreateComplete:Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4, v5}, Lcom/narvii/post/entry/PostEntryView;->setLift1(IZ)V

    .line 68
    .line 69
    :cond_2
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 70
    .line 71
    const-string v4, "liveLayerHost"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    check-cast v2, Lcom/narvii/livelayer/LiveLayerHost;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    move-object v4, v0

    .line 87
    .line 88
    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getOnlineBarLift()I

    .line 92
    move-result v4

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setLift(I)V

    .line 96
    .line 97
    :cond_3
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 98
    .line 99
    const-string v4, "cbbHost"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    check-cast v2, Lcom/narvii/community/CBBHost;

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getCBBLift()I

    .line 115
    move-result v0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0}, Lcom/narvii/community/CBBHost;->setLift(I)V

    .line 119
    .line 120
    :cond_4
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    :goto_1
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 132
    move-result v0

    .line 133
    .line 134
    if-ge v3, v0, :cond_7

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    .line 147
    const v1, 0x7f0a0e27

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    check-cast v0, Landroid/widget/TextView;

    .line 154
    const/4 v1, 0x1

    .line 155
    .line 156
    if-ne v3, p1, :cond_5

    .line 157
    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 164
    .line 165
    const/high16 v2, 0x41880000    # 17.0f

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    goto :goto_2

    .line 170
    .line 171
    :cond_5
    if-eqz v0, :cond_6

    .line 172
    .line 173
    .line 174
    const v2, 0x3f19999a    # 0.6f

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 178
    .line 179
    const/high16 v2, 0x41700000    # 15.0f

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    .line 184
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 185
    goto :goto_1

    .line 186
    .line 187
    :cond_7
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$9;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 195
    return-void
.end method
