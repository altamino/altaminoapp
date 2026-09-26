.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserCreatedInfoAdapter"
.end annotation


# instance fields
.field private cell:Landroid/view/View;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
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
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d070d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const p2, 0x7f0a09d5

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 30
    move-result p2

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    const/4 p2, -0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setTextColor(I)V

    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 56
    move-result p1

    .line 57
    const/4 p2, 0x0

    .line 58
    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 62
    .line 63
    .line 64
    const p3, 0x7f0a0169

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    const p3, 0x7f0a09f9

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p3

    .line 81
    .line 82
    check-cast p3, Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalAuthor()Lcom/narvii/model/User;

    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x0

    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    move-object v2, v1

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/4 p3, 0x1

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 109
    move-result v0

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    move v0, p3

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    move v0, p2

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 118
    .line 119
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 120
    .line 121
    .line 122
    const v0, 0x7f0a0f34

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    check-cast p1, Landroid/widget/TextView;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 131
    .line 132
    new-array p3, p3, [Ljava/lang/Object;

    .line 133
    .line 134
    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 135
    .line 136
    iget-object v2, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 137
    .line 138
    iget-wide v2, v2, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    aput-object v1, p3, p2

    .line 145
    .line 146
    .line 147
    const v1, 0x7f121226

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p3

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 157
    .line 158
    .line 159
    invoke-static {p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->v(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 160
    move-result-object p3

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 168
    move-result p3

    .line 169
    .line 170
    .line 171
    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 172
    .line 173
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 179
    .line 180
    .line 181
    const p3, 0x7f0a0dc9

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    check-cast p1, Lcom/narvii/monetization/StoreItemStatusView;

    .line 188
    .line 189
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 190
    .line 191
    iget-boolean v0, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    iget-object p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 199
    move-result p3

    .line 200
    .line 201
    if-eqz p3, :cond_4

    .line 202
    .line 203
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 204
    .line 205
    iget-object p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 206
    .line 207
    iget-boolean p3, p3, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 208
    .line 209
    if-nez p3, :cond_6

    .line 210
    .line 211
    :cond_4
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 212
    .line 213
    if-nez p3, :cond_5

    .line 214
    .line 215
    new-instance p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    .line 222
    invoke-direct {p3, p0, v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 223
    .line 224
    iput-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 225
    .line 226
    .line 227
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 230
    .line 231
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 232
    .line 233
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 237
    .line 238
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->storeItemOwnStatusController:Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    .line 239
    .line 240
    const-string p2, "Keyboard"

    .line 241
    .line 242
    iput-object p2, p1, Lcom/narvii/monetization/StoreItemOwnStatusController;->source:Ljava/lang/String;

    .line 243
    goto :goto_2

    .line 244
    .line 245
    :cond_6
    const/16 p2, 0x8

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    goto :goto_2

    .line 250
    .line 251
    :cond_7
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 252
    .line 253
    .line 254
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->v(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 258
    .line 259
    iget-object p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 263
    move-result p1

    .line 264
    .line 265
    if-eqz p1, :cond_8

    .line 266
    .line 267
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 268
    .line 269
    .line 270
    const p3, 0x7f0a04b7

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    move-result-object p1

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->cell:Landroid/view/View;

    .line 285
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    if-eqz p5, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a04b7

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->v(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickEditStickerCollectionButton(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a09d5

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0a0169

    .line 43
    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    const v1, 0x7f0a0f34

    .line 52
    .line 53
    if-ne v0, v1, :cond_2

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->v(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 64
    const/4 v2, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/StickerHelper;->onClickStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 71
    move-result p1

    .line 72
    return p1
.end method
