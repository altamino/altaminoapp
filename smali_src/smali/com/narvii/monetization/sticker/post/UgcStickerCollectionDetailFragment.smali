.class public Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;,
        Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;
    }
.end annotation


# static fields
.field static final DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field public adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

.field private approveMode:Z

.field public padding:I

.field previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field requestFinished:Z

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field public stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

.field storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    const-string v1, "detail.sticker_collection"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    sput-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method private updateApproveLayout()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0142

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a0c09

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a002d

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method private updateSubmitLayout()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const v2, 0x7f0a0dfd

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 54
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->updateApproveLayout()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->updateSubmitLayout()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 12

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/list/StaticViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    new-array v4, v3, [Landroid/view/View;

    .line 23
    const/4 v5, 0x0

    .line 24
    .line 25
    aput-object v2, v4, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$2;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$2;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f0d0365

    .line 50
    .line 51
    .line 52
    filled-new-array {v2}, [I

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    const/high16 v2, 0x41000000    # 8.0f

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 69
    move-result v1

    .line 70
    float-to-int v1, v1

    .line 71
    .line 72
    iput v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->padding:I

    .line 73
    .line 74
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 75
    .line 76
    iget v11, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->padding:I

    .line 77
    move-object v6, v1

    .line 78
    move-object v7, p0

    .line 79
    move v8, v11

    .line 80
    move v9, v11

    .line 81
    move v10, v11

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v6 .. v11}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 85
    .line 86
    new-instance v4, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    .line 87
    .line 88
    const-class v6, Lcom/narvii/model/Sticker;

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, p0, p0, v6}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 92
    .line 93
    iput-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    .line 94
    const/4 v6, 0x4

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v4, v6}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    .line 105
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$3;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$3;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 109
    .line 110
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v5}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    if-eqz v1, :cond_0

    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    .line 128
    .line 129
    if-nez v1, :cond_0

    .line 130
    .line 131
    new-instance v1, Lcom/narvii/monetization/common/RecommendHeaderAdapter;

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 135
    .line 136
    new-instance v9, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;

    .line 137
    .line 138
    const-string/jumbo v6, "sticker"

    .line 139
    .line 140
    const/16 v7, 0x72

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 144
    move-result-object v8

    .line 145
    move-object v3, v9

    .line 146
    move-object v4, p0

    .line 147
    move-object v5, p0

    .line 148
    .line 149
    .line 150
    invoke-direct/range {v3 .. v8}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$4;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    iget-boolean v3, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v3}, Lcom/narvii/monetization/store/StoreRecommendAdapter;->setPreview(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v9}, Lcom/narvii/monetization/common/RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 169
    move-result v1

    .line 170
    float-to-int v7, v1

    .line 171
    .line 172
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 173
    move-object v2, v1

    .line 174
    move-object v3, p0

    .line 175
    move v4, v7

    .line 176
    move v5, v7

    .line 177
    move v6, v7

    .line 178
    .line 179
    .line 180
    invoke-direct/range {v2 .. v7}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 181
    const/4 v2, 0x3

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v9, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    .line 189
    :cond_0
    new-instance v1, Lcom/narvii/adapter/MarginAdapter;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    const/high16 v3, 0x42a00000    # 80.0f

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 199
    move-result v2

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    .line 207
    if-nez p1, :cond_1

    .line 208
    .line 209
    const-string p1, "response"

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    const-class v1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 216
    .line 217
    .line 218
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 222
    .line 223
    if-eqz p1, :cond_1

    .line 224
    .line 225
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    .line 229
    :cond_1
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a002d

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1212a7

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    const v3, 0x7f120d57

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0c09

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f120fce

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$5;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$5;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const v0, 0x7f120025

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$6;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 82
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "requestFinished"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 25
    .line 26
    const-string p1, "approveMode"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->approveMode:Z

    .line 33
    const/4 p1, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f120781

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f08047b

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04b7

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

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f120781

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/sticker/StickerHelper;->isContributedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    const v1, 0x7f120781

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    xor-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 42
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "requestFinished"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object v8

    .line 8
    .line 9
    instance-of v0, v8, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v9, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->adapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    move-object v1, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    const/4 v2, 0x0

    .line 29
    .line 30
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    .line 33
    const/4 v6, 0x4

    .line 34
    .line 35
    iget v7, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->padding:I

    .line 36
    move-object v0, v9

    .line 37
    move-object v3, v8

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;-><init>(Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    .line 41
    .line 42
    iput-object v9, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 43
    const/4 v0, 0x3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setRowOffset(I)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    .line 53
    check-cast v8, Lcom/narvii/widget/NVListView;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v0}, Lcom/narvii/widget/NVListView;->setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v0}, Lcom/narvii/widget/NVListView;->setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V

    .line 64
    .line 65
    :cond_1
    if-nez p2, :cond_2

    .line 66
    .line 67
    const-string/jumbo p2, "statistics"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 74
    .line 75
    const-string v0, "Amino+ Product Detail Page (Store)"

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    const-string v0, "Amino+ Product Detail Page (Store) Total"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    const-string v0, "Type"

    .line 88
    .line 89
    const-string v1, "Shared Sticker Packs"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    const-string v0, "Source"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 103
    .line 104
    .line 105
    :cond_2
    const p2, 0x7f0a0df8

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    new-instance p2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method
