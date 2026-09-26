.class public Lcom/narvii/monetization/store/StoreItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final disCountLabelAminoPlus:Landroid/view/View;

.field private final freeLabel:Landroid/widget/TextView;

.field private isMemberShip:Z

.field private isSelected:Z

.field private final isSelectedLabel:Landroid/view/View;

.field private final membershipLabel:Landroid/widget/ImageView;

.field private final nameView:Landroid/widget/TextView;

.field private final ownedLabel:Landroid/widget/ImageView;

.field private final previewView:Lcom/narvii/widget/NVImageView;

.field private final priceLabel:Landroid/view/ViewGroup;

.field private final priceLabelMainText:Landroid/widget/TextView;

.field private storeItem:Lcom/narvii/monetization/store/data/StoreItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/store/StoreItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d05af

    .line 4
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0dc5

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->previewView:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f0a0dc2

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->nameView:Landroid/widget/TextView;

    const p1, 0x7f0a0dc1

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->membershipLabel:Landroid/widget/ImageView;

    const p1, 0x7f0a0dbe

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    const p1, 0x7f0a0dc4

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->ownedLabel:Landroid/widget/ImageView;

    const p1, 0x7f0a0dc7

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    const p1, 0x7f0a0dc8

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    const p1, 0x7f0a0dbd

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->disCountLabelAminoPlus:Landroid/view/View;

    const p1, 0x7f0a0dc0

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelectedLabel:Landroid/view/View;

    return-void
.end method

.method private updateView()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->previewView:Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->nameView:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->membershipLabel:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->ownedLabel:Landroid/widget/ImageView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    instance-of v2, v0, Lcom/narvii/model/IStoreItem;

    .line 63
    const/4 v4, 0x0

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    move-object v5, v0

    .line 67
    .line 68
    check-cast v5, Lcom/narvii/model/IStoreItem;

    .line 69
    .line 70
    .line 71
    invoke-interface {v5}, Lcom/narvii/model/IStoreItem;->isTotalOwned()Z

    .line 72
    move-result v5

    .line 73
    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    instance-of v5, v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 77
    .line 78
    if-nez v5, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->ownedLabel:Landroid/widget/ImageView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    :cond_1
    const/4 v5, 0x4

    .line 87
    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget-object v6, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    .line 96
    move-result v6

    .line 97
    .line 98
    if-nez v6, :cond_2

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    iget v6, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 102
    const/4 v7, 0x2

    .line 103
    .line 104
    .line 105
    const v8, 0x7f1207cb

    .line 106
    .line 107
    if-ne v6, v7, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->membershipLabel:Landroid/widget/ImageView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    .line 114
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const/4 v7, 0x1

    .line 125
    .line 126
    if-ne v6, v5, :cond_5

    .line 127
    .line 128
    iget-object v5, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    iget v5, v1, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    .line 134
    .line 135
    if-ne v5, v7, :cond_4

    .line 136
    .line 137
    iget-boolean v5, p0, Lcom/narvii/monetization/store/StoreItemView;->isMemberShip:Z

    .line 138
    .line 139
    if-eqz v5, :cond_4

    .line 140
    .line 141
    iget-object v5, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    .line 142
    .line 143
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->disCountLabelAminoPlus:Landroid/view/View;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    goto :goto_1

    .line 157
    .line 158
    :cond_4
    iget-object v5, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    .line 159
    .line 160
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->disCountLabelAminoPlus:Landroid/view/View;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    goto :goto_1

    .line 174
    :cond_5
    const/4 v1, 0x3

    .line 175
    .line 176
    if-ne v6, v1, :cond_6

    .line 177
    goto :goto_1

    .line 178
    .line 179
    :cond_6
    if-ne v6, v7, :cond_9

    .line 180
    .line 181
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 185
    .line 186
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    goto :goto_1

    .line 191
    .line 192
    :cond_7
    :goto_0
    const-string v6, "- -"

    .line 193
    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 197
    .line 198
    if-ne v1, v5, :cond_8

    .line 199
    .line 200
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabel:Landroid/view/ViewGroup;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->priceLabelMainText:Landroid/widget/TextView;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    goto :goto_1

    .line 210
    .line 211
    :cond_8
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemView;->freeLabel:Landroid/widget/TextView;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :cond_9
    :goto_1
    const v1, 0x7f0a0025

    .line 223
    .line 224
    if-eqz v2, :cond_a

    .line 225
    .line 226
    check-cast v0, Lcom/narvii/model/IStoreItem;

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->isNew()Z

    .line 230
    move-result v0

    .line 231
    .line 232
    .line 233
    invoke-static {p0, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 234
    goto :goto_2

    .line 235
    .line 236
    .line 237
    :cond_a
    invoke-static {p0, v1, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 238
    .line 239
    :goto_2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelectedLabel:Landroid/view/View;

    .line 240
    .line 241
    iget-boolean v1, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelected:Z

    .line 242
    .line 243
    if-eqz v1, :cond_b

    .line 244
    move v3, v4

    .line 245
    .line 246
    .line 247
    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method public setIsSelected(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/monetization/store/StoreItemView;->isSelected:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemView;->updateView()V

    .line 6
    return-void
.end method

.method public setStoreItem(Lcom/narvii/monetization/store/data/StoreItem;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemView;->storeItem:Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/monetization/store/StoreItemView;->isMemberShip:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemView;->updateView()V

    .line 8
    return-void
.end method
