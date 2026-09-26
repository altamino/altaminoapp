.class Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/MonetizationStoreMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreSectionsAdapter"
.end annotation


# instance fields
.field storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field final synthetic this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 17
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->v(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->D(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/monetization/store/data/StoreSection;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "sticker"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    const-string v1, "account"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v1, v4

    .line 44
    .line 45
    .line 46
    :goto_0
    const v2, 0x7f0d05b3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    const p3, 0x7f0a0db0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->w(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    move v0, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v0, v2

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    const v0, 0x7f0a0ad9

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, Landroid/widget/TextView;

    .line 85
    .line 86
    iget-object v5, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {v5}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->A(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I

    .line 90
    move-result v5

    .line 91
    .line 92
    .line 93
    invoke-static {v5}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->A(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I

    .line 105
    move-result v1

    .line 106
    .line 107
    if-lez v1, :cond_2

    .line 108
    move v1, v4

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move v1, v2

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const p3, 0x7f0a0dcc

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p3

    .line 126
    .line 127
    check-cast p3, Landroid/widget/TextView;

    .line 128
    .line 129
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->name:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    const p3, 0x7f0a0dcd

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    const p3, 0x7f0a0dcb

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object p3

    .line 152
    .line 153
    check-cast p3, Landroid/widget/Button;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 156
    .line 157
    new-array v1, v3, [Ljava/lang/Object;

    .line 158
    .line 159
    iget v5, p1, Lcom/narvii/monetization/store/data/StoreSection;->allItemsCount:I

    .line 160
    .line 161
    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v5

    .line 164
    .line 165
    aput-object v5, v1, v4

    .line 166
    .line 167
    .line 168
    const v5, 0x7f121072

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v5, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    .line 183
    .line 184
    if-nez v0, :cond_3

    .line 185
    move v0, v4

    .line 186
    goto :goto_3

    .line 187
    .line 188
    .line 189
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 190
    move-result v0

    .line 191
    .line 192
    :goto_3
    iget v1, p1, Lcom/narvii/monetization/store/data/StoreSection;->allItemsCount:I

    .line 193
    .line 194
    if-ge v0, v1, :cond_4

    .line 195
    move v2, v4

    .line 196
    .line 197
    .line 198
    :cond_4
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    const p3, 0x7f0a0dca

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object p3

    .line 206
    .line 207
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v4}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreSection;->icon()I

    .line 214
    move-result v0

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 218
    .line 219
    .line 220
    const p3, 0x7f0a0766

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    move-result-object p3

    .line 225
    .line 226
    check-cast p3, Landroid/widget/GridLayout;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 230
    .line 231
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSection;->previewStoreItemList:Ljava/util/List;

    .line 232
    .line 233
    if-eqz p1, :cond_5

    .line 234
    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    move-result v0

    .line 242
    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 250
    .line 251
    new-instance v1, Lcom/narvii/monetization/store/StoreItemView;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v2}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    iget-object v2, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->z(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Lcom/narvii/wallet/MembershipService;

    .line 264
    move-result-object v2

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 268
    move-result v2

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/store/StoreItemView;->setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 278
    .line 279
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    .line 285
    .line 286
    .line 287
    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 288
    .line 289
    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 290
    .line 291
    .line 292
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 293
    move-result-object v2

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 297
    move-result-object v2

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 301
    move-result-object v2

    .line 302
    .line 303
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 304
    int-to-float v2, v2

    .line 305
    .line 306
    .line 307
    const v4, 0x3ea3d70a    # 0.32f

    .line 308
    mul-float/2addr v2, v4

    .line 309
    float-to-int v2, v2

    .line 310
    .line 311
    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    goto :goto_4

    .line 316
    :cond_5
    return-object p2
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->x(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    const-string v2, "Category"

    .line 7
    .line 8
    const-string v3, "Source"

    .line 9
    const/4 v4, 0x2

    .line 10
    .line 11
    const-string v5, "chat-bubble"

    .line 12
    .line 13
    const-string v6, "sticker"

    .line 14
    .line 15
    const-string v7, "avatar-frame"

    .line 16
    const/4 v8, -0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    .line 20
    .line 21
    const v11, 0x7f0a0dcb

    .line 22
    const/4 v12, 0x1

    .line 23
    .line 24
    if-eqz v1, :cond_7

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 28
    move-result v13

    .line 29
    .line 30
    if-eq v13, v11, :cond_7

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 34
    move-result v13

    .line 35
    .line 36
    .line 37
    const v14, 0x7f0a0dcd

    .line 38
    .line 39
    if-ne v13, v14, :cond_0

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    instance-of v11, v1, Lcom/narvii/monetization/store/StoreItemView;

    .line 44
    .line 45
    if-eqz v11, :cond_5

    .line 46
    .line 47
    move-object/from16 v2, p3

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/monetization/store/data/StoreSection;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    move-result v11

    .line 61
    .line 62
    .line 63
    sparse-switch v11, :sswitch_data_0

    .line 64
    :goto_0
    move v4, v8

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :sswitch_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-nez v2, :cond_1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v4, v12

    .line 81
    goto :goto_1

    .line 82
    .line 83
    .line 84
    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v2

    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move v4, v10

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :pswitch_0
    const-string v9, "ChatBubblesList"

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :pswitch_1
    const-string v9, "StickersList"

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :pswitch_2
    sget-object v3, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 102
    .line 103
    const-string v9, "ProfileFramesList"

    .line 104
    .line 105
    :goto_2
    if-eqz v9, :cond_4

    .line 106
    .line 107
    iget-object v2, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v9}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 119
    .line 120
    .line 121
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 125
    .line 126
    iget-object v2, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 130
    return v12

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 134
    move-result v4

    .line 135
    .line 136
    .line 137
    const v5, 0x7f0a0db0

    .line 138
    .line 139
    if-ne v4, v5, :cond_6

    .line 140
    .line 141
    const-class v4, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 142
    .line 143
    .line 144
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    iget-object v5, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 148
    .line 149
    .line 150
    invoke-static {v5}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->A(Lcom/narvii/monetization/store/MonetizationStoreMainFragment;)I

    .line 151
    move-result v5

    .line 152
    .line 153
    const-string v6, "pendingRequestCount"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v4}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 166
    move-result v1

    .line 167
    return v1

    .line 168
    .line 169
    :cond_7
    :goto_3
    move-object/from16 v13, p3

    .line 170
    .line 171
    check-cast v13, Lcom/narvii/monetization/store/data/StoreSection;

    .line 172
    .line 173
    iget-object v13, v13, Lcom/narvii/monetization/store/data/StoreSectionMini;->sectionGroupId:Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v1, :cond_f

    .line 176
    .line 177
    .line 178
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 179
    move-result v14

    .line 180
    .line 181
    if-ne v14, v11, :cond_8

    .line 182
    move v14, v12

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    move v14, v10

    .line 185
    .line 186
    .line 187
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 191
    move-result v15

    .line 192
    .line 193
    .line 194
    sparse-switch v15, :sswitch_data_1

    .line 195
    :goto_5
    move v4, v8

    .line 196
    goto :goto_6

    .line 197
    .line 198
    .line 199
    :sswitch_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v5

    .line 201
    .line 202
    if-nez v5, :cond_b

    .line 203
    goto :goto_5

    .line 204
    .line 205
    .line 206
    :sswitch_4
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v4

    .line 208
    .line 209
    if-nez v4, :cond_9

    .line 210
    goto :goto_5

    .line 211
    :cond_9
    move v4, v12

    .line 212
    goto :goto_6

    .line 213
    .line 214
    .line 215
    :sswitch_5
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v4

    .line 217
    .line 218
    if-nez v4, :cond_a

    .line 219
    goto :goto_5

    .line 220
    :cond_a
    move v4, v10

    .line 221
    .line 222
    .line 223
    :cond_b
    :goto_6
    packed-switch v4, :pswitch_data_1

    .line 224
    goto :goto_8

    .line 225
    .line 226
    :pswitch_3
    if-eqz v14, :cond_c

    .line 227
    .line 228
    const-string v4, "ChatBubblesSeeAll"

    .line 229
    :goto_7
    move-object v9, v4

    .line 230
    goto :goto_8

    .line 231
    .line 232
    :cond_c
    const-string v4, "ChatBubblesHeader"

    .line 233
    goto :goto_7

    .line 234
    .line 235
    :pswitch_4
    if-eqz v14, :cond_d

    .line 236
    .line 237
    const-string v4, "StickersSeeAll"

    .line 238
    goto :goto_7

    .line 239
    .line 240
    :cond_d
    const-string v4, "StickersHeader"

    .line 241
    goto :goto_7

    .line 242
    .line 243
    :pswitch_5
    if-eqz v14, :cond_e

    .line 244
    .line 245
    const-string v4, "ProfileFrameSeeAll"

    .line 246
    goto :goto_7

    .line 247
    .line 248
    :cond_e
    const-string v4, "ProfileFrameHeader"

    .line 249
    goto :goto_7

    .line 250
    .line 251
    :goto_8
    if-eqz v9, :cond_f

    .line 252
    .line 253
    iget-object v4, v0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 254
    .line 255
    sget-object v5, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 256
    .line 257
    .line 258
    invoke-static {v4, v5}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 259
    move-result-object v4

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v9}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 263
    move-result-object v4

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 267
    .line 268
    .line 269
    :cond_f
    invoke-static {v13}, Lcom/narvii/monetization/store/data/StoreSection;->getSectionFragment(Ljava/lang/String;)Ljava/lang/Class;

    .line 270
    move-result-object v4

    .line 271
    .line 272
    .line 273
    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 274
    move-result-object v4

    .line 275
    .line 276
    if-eqz v1, :cond_10

    .line 277
    .line 278
    .line 279
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getId()I

    .line 280
    move-result v1

    .line 281
    .line 282
    if-ne v1, v11, :cond_10

    .line 283
    .line 284
    const-string v2, "See All"

    .line 285
    .line 286
    .line 287
    :cond_10
    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    .line 289
    const-string v1, "sectionGroupId"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    .line 294
    const-string v1, "sectionGroupInfo"

    .line 295
    .line 296
    .line 297
    invoke-static/range {p3 .. p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    invoke-static {v0, v4}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 305
    return v12

    .line 306
    nop

    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    :sswitch_data_0
    .sparse-switch
        -0x77faa807 -> :sswitch_2
        -0x70aaf6c3 -> :sswitch_1
        0xc8f98a1 -> :sswitch_0
    .end sparse-switch

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    :sswitch_data_1
    .sparse-switch
        -0x77faa807 -> :sswitch_5
        -0x70aaf6c3 -> :sswitch_4
        0xc8f98a1 -> :sswitch_3
    .end sparse-switch

    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreMainFragment$StoreSectionsAdapter;->this$0:Lcom/narvii/monetization/store/MonetizationStoreMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/store/MonetizationStoreMainFragment;->refreshSectionData()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method
