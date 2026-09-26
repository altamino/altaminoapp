.class Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/Sticker;",
        ">;"
    }
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 17
    return-void
.end method

.method private canUseSticker(Lcom/narvii/model/Sticker;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->canUseSticker(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/model/Sticker;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method private showMembershipLock(Lcom/narvii/model/Sticker;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    return v2

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    return v0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->isGift()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    return v0

    .line 45
    :cond_3
    return v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Sticker;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0d0209

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    const v0, 0x7f0d0708

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    const p3, 0x7f0a0db3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    move v0, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v0, v1

    .line 60
    .line 61
    :goto_1
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    move v1, v2

    .line 71
    .line 72
    :cond_2
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 73
    .line 74
    iget-boolean v3, v3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->cacheSticker:Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p1, v1, v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;->setSticker(Lcom/narvii/model/Sticker;ZZ)V

    .line 78
    .line 79
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 80
    .line 81
    iget-boolean p3, p3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 82
    .line 83
    if-nez p3, :cond_6

    .line 84
    .line 85
    .line 86
    const p3, 0x7f0a0959

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object p3

    .line 91
    .line 92
    check-cast p3, Landroid/widget/ImageView;

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->showMembershipLock(Lcom/narvii/model/Sticker;)Z

    .line 96
    move-result v1

    .line 97
    .line 98
    .line 99
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    iget-object v1, v1, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    iget v1, v1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 112
    const/4 v3, 0x4

    .line 113
    .line 114
    if-ne v1, v3, :cond_3

    .line 115
    .line 116
    .line 117
    const v1, 0x7f08039d

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    goto :goto_2

    .line 122
    .line 123
    .line 124
    :cond_3
    const v1, 0x7f08039c

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    :goto_2
    const p3, 0x7f0a0e77

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    .line 138
    move-result v1

    .line 139
    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->showMembershipLock(Lcom/narvii/model/Sticker;)Z

    .line 144
    move-result v1

    .line 145
    .line 146
    if-eqz v1, :cond_4

    .line 147
    goto :goto_3

    .line 148
    .line 149
    :cond_4
    const/high16 v1, 0x3f000000    # 0.5f

    .line 150
    goto :goto_4

    .line 151
    .line 152
    :cond_5
    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 153
    .line 154
    .line 155
    :goto_4
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 156
    .line 157
    :cond_6
    iget-object p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 158
    .line 159
    .line 160
    invoke-static {p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 161
    move-result p3

    .line 162
    .line 163
    if-eqz p3, :cond_9

    .line 164
    .line 165
    .line 166
    const p3, 0x7f0a0dad

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p3

    .line 171
    .line 172
    check-cast p3, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 181
    .line 182
    iget-object v3, v3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 183
    .line 184
    iget-object v4, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v5, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v4, v5}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1, v3}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    const/4 v2, 0x3

    .line 198
    goto :goto_5

    .line 199
    .line 200
    .line 201
    :cond_7
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->stickerStatus()I

    .line 202
    move-result v1

    .line 203
    .line 204
    if-nez v1, :cond_8

    .line 205
    goto :goto_5

    .line 206
    .line 207
    .line 208
    :cond_8
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->stickerStatus()I

    .line 209
    move-result v2

    .line 210
    .line 211
    :goto_5
    iput v2, p1, Lcom/narvii/model/Sticker;->stickerStatus:I

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->stickerStatus()I

    .line 215
    move-result v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, v1}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerStatus(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->setStickerSelected(Z)V

    .line 222
    const/4 v0, 0x2

    .line 223
    .line 224
    if-ne v2, v0, :cond_9

    .line 225
    .line 226
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 227
    .line 228
    iget-boolean v1, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 229
    .line 230
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3, p1, v1, v0}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 234
    :cond_9
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->setStickerList(Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 11
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/VideoManager;->removeViewInstallCollectionCallbacks(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    if-eqz v0, :cond_12

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x0

    .line 12
    const/4 p5, 0x1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 17
    .line 18
    iget-object p4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 19
    .line 20
    iget-object p4, p4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 21
    .line 22
    if-nez p4, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p4}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    :goto_0
    new-instance p4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {p4, p0, p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;Lcom/narvii/model/Sticker;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/monetization/sticker/StickerHelper;->deleteDisabledSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;Lcom/narvii/util/Callback;)V

    .line 36
    return p5

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-direct {p0, p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    .line 40
    move-result p1

    .line 41
    .line 42
    if-eqz p1, :cond_d

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 47
    const/4 v1, 0x3

    .line 48
    .line 49
    .line 50
    const v2, 0x7f0a0dad

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    iget-object v0, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p3, p1}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    const/4 p1, 0x4

    .line 71
    .line 72
    iput p1, p3, Lcom/narvii/model/Sticker;->sourceType:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->stickerStatus()I

    .line 82
    move-result p4

    .line 83
    .line 84
    if-ne p4, v1, :cond_4

    .line 85
    .line 86
    iget-object p4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 87
    .line 88
    .line 89
    invoke-static {p4}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    .line 90
    move-result-object p4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 95
    .line 96
    iget-object v1, p3, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v2, p3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, p3, v0}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 106
    move-result-object p4

    .line 107
    .line 108
    if-eqz p4, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    instance-of p2, p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    check-cast p1, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, p4}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 124
    :cond_3
    return p5

    .line 125
    .line 126
    :cond_4
    iget-object p4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 127
    .line 128
    iget-object p4, p4, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 129
    .line 130
    iget-object v0, p3, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v1, p3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p4, v0, v1, p2}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 136
    .line 137
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 138
    .line 139
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p3, p5, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 145
    .line 146
    iput-object p3, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 147
    :cond_5
    return p5

    .line 148
    .line 149
    :cond_6
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p3}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/narvii/asset/DownloadStatusInfo;->isReady()Z

    .line 157
    move-result p2

    .line 158
    const/4 v0, 0x0

    .line 159
    .line 160
    if-eqz p2, :cond_b

    .line 161
    .line 162
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 163
    .line 164
    iget-object v3, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 165
    .line 166
    if-eqz v3, :cond_b

    .line 167
    .line 168
    iget-object p1, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 169
    .line 170
    .line 171
    invoke-interface {v3, p3, p1}, Lcom/narvii/monetization/sticker/picker/StickerSelectListener;->onStickerSelected(Lcom/narvii/model/Sticker;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 172
    .line 173
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 177
    move-result p1

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    iput p5, p3, Lcom/narvii/model/Sticker;->sourceType:I

    .line 182
    .line 183
    .line 184
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->stickerStatus()I

    .line 191
    move-result p2

    .line 192
    .line 193
    if-ne p2, v1, :cond_8

    .line 194
    .line 195
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->x(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 202
    .line 203
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 204
    .line 205
    iget-object p4, p3, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v0, p3, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, p4, v0}, Lcom/narvii/sticker/StickerCacheService;->getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, p3, p2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    instance-of p3, p2, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 226
    .line 227
    if-eqz p3, :cond_7

    .line 228
    .line 229
    check-cast p2, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 230
    .line 231
    .line 232
    invoke-interface {p2, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 233
    :cond_7
    return p5

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-virtual {p3}, Lcom/narvii/model/Sticker;->stickerStatus()I

    .line 237
    move-result p2

    .line 238
    const/4 p4, 0x2

    .line 239
    .line 240
    if-eq p2, p4, :cond_9

    .line 241
    .line 242
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 243
    .line 244
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, p3, v0, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 248
    .line 249
    :cond_9
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 250
    .line 251
    iput-object p3, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 252
    :cond_a
    return p5

    .line 253
    .line 254
    .line 255
    :cond_b
    invoke-virtual {p1}, Lcom/narvii/asset/DownloadStatusInfo;->isFailed()Z

    .line 256
    move-result p1

    .line 257
    .line 258
    if-eqz p1, :cond_11

    .line 259
    .line 260
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p3}, Lcom/narvii/sticker/StickerCacheService;->downloadSticker(Lcom/narvii/model/Sticker;)V

    .line 266
    .line 267
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 268
    .line 269
    .line 270
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z

    .line 271
    move-result p1

    .line 272
    .line 273
    if-eqz p1, :cond_c

    .line 274
    .line 275
    .line 276
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    move-result-object p1

    .line 278
    .line 279
    check-cast p1, Lcom/narvii/video/widget/EditorStickerInstallFrameView;

    .line 280
    .line 281
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 282
    .line 283
    iget-object p2, p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, p3, v0, p2}, Lcom/narvii/video/widget/EditorStickerInstallFrameView;->bindSticker(Lcom/narvii/model/Sticker;ZLcom/narvii/sticker/StickerCacheService;)V

    .line 287
    .line 288
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 289
    .line 290
    iput-object p3, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 291
    .line 292
    .line 293
    :cond_c
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 294
    return p5

    .line 295
    .line 296
    :cond_d
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 297
    .line 298
    iget-boolean p2, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 299
    .line 300
    if-nez p2, :cond_f

    .line 301
    .line 302
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isTotalOwned()Z

    .line 306
    move-result p1

    .line 307
    .line 308
    if-eqz p1, :cond_e

    .line 309
    goto :goto_1

    .line 310
    .line 311
    :cond_e
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 312
    .line 313
    .line 314
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->C(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    .line 315
    goto :goto_2

    .line 316
    .line 317
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 318
    .line 319
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    .line 323
    move-result p1

    .line 324
    .line 325
    if-eqz p1, :cond_10

    .line 326
    .line 327
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 328
    .line 329
    .line 330
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->A(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    .line 331
    goto :goto_2

    .line 332
    .line 333
    :cond_10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 334
    .line 335
    .line 336
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->B(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    .line 337
    :cond_11
    :goto_2
    return p5

    .line 338
    .line 339
    .line 340
    :cond_12
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 341
    move-result p1

    .line 342
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->w(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->w(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/monetization/sticker/StickerPreviewListener;->onStickerPreviewStart()V

    .line 18
    .line 19
    :cond_0
    instance-of p1, p3, Lcom/narvii/model/Sticker;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    check-cast p3, Lcom/narvii/model/Sticker;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 45
    :cond_2
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    return-object v0
.end method

.method public setStickerList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 46
    .line 47
    const-string v1, "stickerCache"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/sticker/StickerCacheService;

    .line 54
    .line 55
    iput-object v1, p1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    instance-of v2, v1, Lcom/narvii/model/Sticker;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/model/Sticker;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    iget v2, v2, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 86
    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v1}, Lcom/narvii/sticker/StickerCacheService;->downloadSticker(Lcom/narvii/model/Sticker;)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 99
    return-void
.end method
