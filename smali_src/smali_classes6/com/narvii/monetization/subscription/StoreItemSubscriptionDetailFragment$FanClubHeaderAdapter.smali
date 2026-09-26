.class Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method private getItemExpiredTime(I)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120184

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f120185

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    if-le p1, v0, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 30
    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    aput-object p1, v0, v2

    .line 39
    .line 40
    .line 41
    const p1, 0x7f120186

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0481

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->u(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    instance-of p3, p2, Lcom/narvii/model/StoreItemBaseObject;

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    return-object p1

    .line 23
    .line 24
    :cond_0
    check-cast p2, Lcom/narvii/model/StoreItemBaseObject;

    .line 25
    .line 26
    .line 27
    const p3, 0x7f0a06d5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    const p3, 0x7f0a0e9e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    const p3, 0x7f0a0d18

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    check-cast p3, Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->t(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 76
    const/4 v1, 0x2

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->x(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;Ljava/text/DateFormat;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iget v1, v0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x1

    .line 97
    .line 98
    if-ne v1, v4, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    .line 102
    move-result v1

    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v1, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    .line 107
    .line 108
    if-nez v1, :cond_2

    .line 109
    move-object v1, v2

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 113
    .line 114
    new-array v5, v4, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->t(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    iget-object v7, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 125
    .line 126
    aput-object v6, v5, v3

    .line 127
    .line 128
    .line 129
    const v6, 0x7f12114d

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_3
    iget-object v1, v0, Lcom/narvii/model/OwnershipInfo;->createdTime:Ljava/util/Date;

    .line 140
    .line 141
    if-nez v1, :cond_4

    .line 142
    move-object v1, v2

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_4
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 146
    .line 147
    new-array v5, v4, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->t(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Ljava/text/DateFormat;

    .line 151
    move-result-object v6

    .line 152
    .line 153
    iget-object v7, v0, Lcom/narvii/model/OwnershipInfo;->expiredTime:Ljava/util/Date;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 157
    move-result-object v6

    .line 158
    .line 159
    aput-object v6, v5, v3

    .line 160
    .line 161
    .line 162
    const v6, 0x7f12114e

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    goto :goto_2

    .line 171
    .line 172
    .line 173
    :cond_5
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 174
    move-result v1

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v1}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->getItemExpiredTime(I)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    if-eqz v1, :cond_6

    .line 188
    move v1, v4

    .line 189
    goto :goto_3

    .line 190
    :cond_6
    move v1, v3

    .line 191
    .line 192
    .line 193
    :goto_3
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 194
    .line 195
    iget p3, v0, Lcom/narvii/model/OwnershipInfo;->ownershipStatus:I

    .line 196
    .line 197
    if-ne p3, v4, :cond_9

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    .line 201
    move-result p3

    .line 202
    .line 203
    if-nez p3, :cond_9

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 207
    move-result p3

    .line 208
    .line 209
    if-nez p3, :cond_7

    .line 210
    .line 211
    iget-object p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 212
    .line 213
    .line 214
    const v1, 0x7f120c8b

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    goto :goto_4

    .line 220
    .line 221
    :cond_7
    if-ne p3, v4, :cond_8

    .line 222
    .line 223
    iget-object p3, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 224
    .line 225
    .line 226
    const v1, 0x7f120c8c

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 230
    move-result-object v2

    .line 231
    goto :goto_4

    .line 232
    .line 233
    :cond_8
    if-lez p3, :cond_9

    .line 234
    const/4 v1, 0x7

    .line 235
    .line 236
    if-gt p3, v1, :cond_9

    .line 237
    .line 238
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 239
    .line 240
    new-array v2, v4, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object p3

    .line 245
    .line 246
    aput-object p3, v2, v3

    .line 247
    .line 248
    .line 249
    const p3, 0x7f120c8d

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, p3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    .line 256
    :cond_9
    :goto_4
    const p3, 0x7f0a0541

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    move-result-object p3

    .line 261
    .line 262
    check-cast p3, Landroid/widget/TextView;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    if-eqz v2, :cond_a

    .line 268
    move v1, v4

    .line 269
    goto :goto_5

    .line 270
    :cond_a
    move v1, v3

    .line 271
    .line 272
    .line 273
    :goto_5
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 274
    .line 275
    .line 276
    const p3, 0x7f0a02cd

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    move-result-object p3

    .line 281
    .line 282
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    .line 289
    move-result v1

    .line 290
    .line 291
    .line 292
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 293
    .line 294
    .line 295
    const p3, 0x7f0a0c10

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 299
    move-result-object p3

    .line 300
    .line 301
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    .line 308
    move-result v0

    .line 309
    .line 310
    if-nez v0, :cond_b

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Lcom/narvii/model/StoreItemBaseObject;->availableInAnyStore()Z

    .line 314
    move-result p2

    .line 315
    .line 316
    if-eqz p2, :cond_b

    .line 317
    move v3, v4

    .line 318
    .line 319
    .line 320
    :cond_b
    invoke-static {p3, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 321
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a02cd

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->u(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/data/StoreItem;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    .line 33
    :cond_0
    if-eqz p5, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0a0c10

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->v(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/wallet/MembershipService;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;->w(Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->openPurchaseDialogWithCheck()V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 78
    move-result p1

    .line 79
    return p1
.end method
