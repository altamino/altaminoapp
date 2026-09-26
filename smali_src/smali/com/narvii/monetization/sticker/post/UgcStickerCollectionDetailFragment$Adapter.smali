.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "/sticker-collection/"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "includeStickers"

    .line 42
    .line 43
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_9

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d075f

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 18
    .line 19
    if-eqz p2, :cond_8

    .line 20
    .line 21
    .line 22
    const p3, 0x7f0a0da8

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 32
    .line 33
    .line 34
    const p3, 0x7f0a0342

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    check-cast p3, Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    xor-int/2addr v0, v1

    .line 62
    .line 63
    .line 64
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalCommunity()Lcom/narvii/model/Community;

    .line 68
    move-result-object p3

    .line 69
    .line 70
    const-string v0, "config"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 77
    const/4 v2, 0x0

    .line 78
    .line 79
    if-eqz p3, :cond_0

    .line 80
    .line 81
    iget p3, p3, Lcom/narvii/model/Community;->id:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eq p3, v0, :cond_0

    .line 88
    move p3, v1

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move p3, v2

    .line 91
    .line 92
    .line 93
    :goto_0
    const v0, 0x7f0a0dc9

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    check-cast v0, Lcom/narvii/monetization/StoreItemStatusView;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->t(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Z

    .line 105
    move-result v3

    .line 106
    xor-int/2addr v3, v1

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 110
    .line 111
    .line 112
    const v3, 0x7f0a0d59

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    check-cast v3, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    .line 119
    .line 120
    .line 121
    const v4, 0x7f0a0d5a

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v4, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p2}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 128
    .line 129
    .line 130
    const v3, 0x7f0a0f34

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    check-cast v3, Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 139
    .line 140
    new-array v5, v1, [Ljava/lang/Object;

    .line 141
    .line 142
    sget-object v6, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 143
    .line 144
    iget-wide v7, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 148
    move-result-object v6

    .line 149
    .line 150
    aput-object v6, v5, v2

    .line 151
    .line 152
    .line 153
    const v6, 0x7f121226

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 163
    .line 164
    .line 165
    invoke-static {v4}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 170
    move-result v4

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 174
    .line 175
    .line 176
    const v3, 0x7f0a0169

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 184
    move-result v4

    .line 185
    const/4 v5, 0x0

    .line 186
    .line 187
    if-eqz v4, :cond_1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalAuthor()Lcom/narvii/model/User;

    .line 191
    move-result-object v4

    .line 192
    goto :goto_1

    .line 193
    .line 194
    :cond_1
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 195
    .line 196
    .line 197
    invoke-static {v4}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->t(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Z

    .line 198
    move-result v4

    .line 199
    .line 200
    if-eqz v4, :cond_2

    .line 201
    .line 202
    iget-object v4, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    .line 203
    goto :goto_1

    .line 204
    :cond_2
    move-object v4, v5

    .line 205
    .line 206
    .line 207
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 208
    move-result v6

    .line 209
    .line 210
    if-eqz v6, :cond_4

    .line 211
    .line 212
    if-eqz v4, :cond_3

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v5}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 216
    move-result v5

    .line 217
    .line 218
    if-eqz v5, :cond_3

    .line 219
    goto :goto_2

    .line 220
    :cond_3
    move v1, v2

    .line 221
    .line 222
    .line 223
    :goto_2
    invoke-static {v3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 224
    goto :goto_4

    .line 225
    .line 226
    :cond_4
    if-eqz v4, :cond_5

    .line 227
    goto :goto_3

    .line 228
    :cond_5
    move v1, v2

    .line 229
    .line 230
    .line 231
    :goto_3
    invoke-static {v3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 232
    .line 233
    :goto_4
    if-eqz v4, :cond_6

    .line 234
    .line 235
    .line 236
    const v1, 0x7f0a0f36

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 246
    .line 247
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 251
    .line 252
    .line 253
    const v2, 0x7f0a09f9

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    move-result-object v2

    .line 258
    .line 259
    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 260
    .line 261
    iput-boolean p3, v2, Lcom/narvii/widget/NicknameView;->hideRole:Z

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, p3}, Lcom/narvii/widget/NicknameView;->setHideRankingBadge(Z)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 268
    .line 269
    if-eqz p3, :cond_6

    .line 270
    .line 271
    const/16 v5, 0x8

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    const v1, -0xededee

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 281
    .line 282
    :cond_6
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;

    .line 283
    .line 284
    .line 285
    invoke-direct {v1, p0, p3, v4}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;ZLcom/narvii/model/User;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 291
    .line 292
    iget-object v1, p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 293
    .line 294
    if-nez v1, :cond_7

    .line 295
    .line 296
    new-instance v1, Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 300
    move-result-object v2

    .line 301
    .line 302
    .line 303
    invoke-direct {v1, v2, v0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 304
    .line 305
    iput-object v1, p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 306
    .line 307
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 308
    .line 309
    iget-boolean p3, p3, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, p3}, Lcom/narvii/monetization/StoreItemStatusView;->setPreview(Z)V

    .line 313
    .line 314
    :cond_7
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 315
    .line 316
    iget-object p3, p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 320
    :cond_8
    return-object p1

    .line 321
    .line 322
    .line 323
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 324
    move-result-object p1

    .line 325
    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v2, "update"

    .line 11
    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const-string v2, "edit"

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    const-string p1, "delete"

    .line 20
    .line 21
    if-ne v1, p1, :cond_3

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 81
    :cond_3
    :goto_2
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    return-object v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method public setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 3
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    new-instance v1, Lcom/narvii/util/FilterHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 8
    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->w(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 9
    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->v(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    .line 10
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 12
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 13
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    const p1, 0x7f120438

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
