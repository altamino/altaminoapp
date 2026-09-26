.class Lcom/narvii/master/MyCommunityListFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/MyCommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MyCommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/MyCommunityListFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    .line 8
    .line 9
    const-class v0, Lcom/narvii/model/Community;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 16
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyAminos"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/master/MyCommunityListFragment;->t(Lcom/narvii/master/MyCommunityListFragment;)Lcom/narvii/account/AccountService;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    move-result v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge p1, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 48
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

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

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    const/4 p1, 0x2

    .line 22
    return p1

    .line 23
    .line 24
    :cond_2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 25
    .line 26
    if-ne p1, v0, :cond_3

    .line 27
    const/4 p1, 0x3

    .line 28
    return p1

    .line 29
    :cond_3
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/Community;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0d0390

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const p3, 0x7f0a06eb

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    check-cast p3, Lcom/narvii/widget/PromotionalImageView;

    .line 28
    .line 29
    iput-boolean v1, p3, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 30
    .line 31
    iput-boolean v1, p3, Lcom/narvii/widget/PromotionalImageView;->preloadCachedImage:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1}, Lcom/narvii/widget/PromotionalImageView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 35
    .line 36
    .line 37
    const p3, 0x7f0a06d5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 44
    .line 45
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setStrokeColor(I)V

    .line 56
    .line 57
    .line 58
    const p3, 0x7f0a0e9e

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    check-cast p3, Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p3}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 73
    .line 74
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 75
    .line 76
    iget-object p3, p3, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 77
    .line 78
    iget v0, p1, Lcom/narvii/model/Community;->id:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    iget v0, p1, Lcom/narvii/model/Community;->status:I

    .line 85
    .line 86
    const/16 v2, 0x9

    .line 87
    const/4 v3, 0x0

    .line 88
    .line 89
    if-ne v0, v2, :cond_0

    .line 90
    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    move v0, v3

    .line 93
    .line 94
    :goto_0
    iget v2, p1, Lcom/narvii/model/Community;->probationStatus:I

    .line 95
    .line 96
    if-ne v2, v1, :cond_1

    .line 97
    .line 98
    if-eqz p3, :cond_1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Lcom/narvii/model/User;->isLeader()Z

    .line 102
    move-result p3

    .line 103
    .line 104
    if-eqz p3, :cond_1

    .line 105
    move p3, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move p3, v3

    .line 108
    .line 109
    .line 110
    :goto_1
    const v2, 0x7f0a0b88

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    const/16 v4, 0x8

    .line 117
    .line 118
    if-nez v0, :cond_2

    .line 119
    .line 120
    if-eqz p3, :cond_2

    .line 121
    move p3, v3

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    move p3, v4

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    const p3, 0x7f0a0441

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    move-result-object p3

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    move v4, v3

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    const p3, 0x7f0a0b8a

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p3

    .line 147
    .line 148
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 149
    .line 150
    iget-object v2, v0, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 151
    const/4 v4, 0x4

    .line 152
    .line 153
    if-ne p3, v2, :cond_5

    .line 154
    .line 155
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 160
    .line 161
    iget v2, p1, Lcom/narvii/model/Community;->id:I

    .line 162
    .line 163
    if-eq v0, v2, :cond_4

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    .line 172
    goto :goto_3

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    goto :goto_3

    .line 177
    .line 178
    .line 179
    :cond_5
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    :goto_3
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, p2, p1, v1}, Lcom/narvii/master/MyCommunityListFragment;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 185
    .line 186
    iget-object p3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, p2, p1}, Lcom/narvii/master/MyCommunityListFragment;->updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 196
    return-object p2

    .line 197
    .line 198
    :cond_6
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 199
    .line 200
    if-ne p1, v0, :cond_7

    .line 201
    .line 202
    .line 203
    const p1, 0x7f0d0392

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    .line 210
    :cond_7
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 211
    .line 212
    if-ne p1, v0, :cond_8

    .line 213
    .line 214
    .line 215
    const p1, 0x7f0d0393

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    iget-object p2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 222
    .line 223
    iget-object p2, p2, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 227
    return-object p1

    .line 228
    .line 229
    :cond_8
    iget-object p1, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 230
    .line 231
    iget-object p1, p1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 239
    move-result-object p1

    .line 240
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    .line 8
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    instance-of v3, v1, Lcom/narvii/model/Community;

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eqz v3, :cond_5

    .line 13
    move-object v8, v1

    .line 14
    .line 15
    check-cast v8, Lcom/narvii/model/Community;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 18
    .line 19
    iget-object v6, v3, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 20
    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    iget v6, v6, Lcom/narvii/model/Community;->id:I

    .line 24
    .line 25
    iget v7, v8, Lcom/narvii/model/Community;->id:I

    .line 26
    .line 27
    if-ne v6, v7, :cond_0

    .line 28
    return v5

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/master/MyCommunityListFragment;->cancelLaunch()V

    .line 32
    .line 33
    :cond_1
    iget v3, v8, Lcom/narvii/model/Community;->status:I

    .line 34
    .line 35
    const/16 v6, 0x9

    .line 36
    .line 37
    if-ne v3, v6, :cond_2

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const v2, 0x7f1203aa

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 53
    .line 54
    .line 55
    const v2, 0x7f1201e2

    .line 56
    const/4 v3, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v0, v8}, Lcom/narvii/master/MyCommunityListFragment$Adapter$1;-><init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;Lcom/narvii/model/Community;)V

    .line 65
    .line 66
    .line 67
    const v3, 0x7f120b80

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 74
    return v5

    .line 75
    .line 76
    :cond_2
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 77
    .line 78
    .line 79
    const v6, 0x7f0a0b8a

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    check-cast v6, Lcom/narvii/widget/SmoothProgressBar;

    .line 86
    .line 87
    iput-object v6, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 88
    .line 89
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 99
    .line 100
    const/16 v6, 0x64

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 104
    .line 105
    iget-object v3, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 106
    .line 107
    iget-object v3, v3, Lcom/narvii/master/MyCommunityListFragment;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 111
    .line 112
    sget-object v3, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 116
    .line 117
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 118
    .line 119
    .line 120
    const v3, 0x7f0a06eb

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 127
    .line 128
    iput-object v2, v1, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 129
    .line 130
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 131
    .line 132
    iput-object v8, v1, Lcom/narvii/master/MyCommunityListFragment;->launchCommunity:Lcom/narvii/model/Community;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 135
    .line 136
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getCommunityTimestamp(I)Ljava/lang/String;

    .line 140
    move-result-object v9

    .line 141
    .line 142
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 145
    .line 146
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 150
    move-result-object v10

    .line 151
    .line 152
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 155
    .line 156
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    .line 160
    move-result-object v11

    .line 161
    .line 162
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 165
    .line 166
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 170
    move-result-object v12

    .line 171
    .line 172
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 175
    .line 176
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 180
    move-result-object v13

    .line 181
    .line 182
    const-string v1, "community"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 189
    .line 190
    iget v2, v8, Lcom/narvii/model/Community;->id:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    if-eqz v1, :cond_4

    .line 197
    .line 198
    iget-object v1, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 199
    .line 200
    if-eqz v1, :cond_4

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 204
    move-result v1

    .line 205
    .line 206
    if-nez v1, :cond_3

    .line 207
    goto :goto_0

    .line 208
    :cond_3
    move v14, v4

    .line 209
    goto :goto_1

    .line 210
    :cond_4
    :goto_0
    move v14, v5

    .line 211
    .line 212
    :goto_1
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 213
    .line 214
    iget-object v6, v1, Lcom/narvii/master/MyCommunityListFragment;->launchHelper:Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;

    .line 215
    .line 216
    iget v7, v8, Lcom/narvii/model/Community;->id:I

    .line 217
    const/4 v15, 0x1

    .line 218
    .line 219
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 223
    move-result-object v16

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {v6 .. v16}, Lcom/narvii/master/MyCommunityListFragment$MyLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 227
    return v5

    .line 228
    .line 229
    :cond_5
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 230
    .line 231
    if-ne v1, v3, :cond_6

    .line 232
    .line 233
    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1, v5}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V

    .line 237
    .line 238
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 239
    .line 240
    const-string v2, "Join an Amino"

    .line 241
    .line 242
    .line 243
    invoke-static {v1, v2}, Lcom/narvii/master/MyCommunityListFragment;->w(Lcom/narvii/master/MyCommunityListFragment;Ljava/lang/String;)V

    .line 244
    return v5

    .line 245
    .line 246
    :cond_6
    sget-object v3, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 247
    .line 248
    if-ne v1, v3, :cond_7

    .line 249
    .line 250
    iget-object v1, v0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v4}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 256
    return v5

    .line 257
    .line 258
    .line 259
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 260
    move-result v1

    .line 261
    return v1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Community;

    .line 7
    .line 8
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 p2, 0x5

    .line 17
    .line 18
    new-array p2, p2, [I

    .line 19
    .line 20
    new-instance p4, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iget-object p5, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f120311

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 32
    move-result-object p5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const/4 p5, 0x0

    .line 37
    .line 38
    aput v0, p2, p5

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x1

    .line 52
    .line 53
    if-le v0, v1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 56
    .line 57
    .line 58
    const v2, 0x7f120fee

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    aput v2, p2, v1

    .line 68
    const/4 v0, 0x2

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v0, v1

    .line 71
    .line 72
    :goto_0
    sget v2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 73
    .line 74
    const/16 v3, 0x64

    .line 75
    .line 76
    if-ne v2, v3, :cond_1

    .line 77
    .line 78
    iget-object v2, p3, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 83
    .line 84
    .line 85
    const v3, 0x7f12030f

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    add-int/lit8 v2, v0, 0x1

    .line 95
    .line 96
    aput v3, p2, v0

    .line 97
    move v0, v2

    .line 98
    .line 99
    :cond_1
    new-instance v2, Lcom/narvii/util/text/NVText;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 102
    .line 103
    .line 104
    const v4, 0x7f120f43

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v3}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 114
    .line 115
    .line 116
    const v5, -0x40fff2

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 123
    move-result v5

    .line 124
    .line 125
    const/16 v6, 0x22

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3, p5, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    aput v4, p2, v0

    .line 134
    .line 135
    new-array p5, p5, [Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    move-result-object p4

    .line 140
    .line 141
    check-cast p4, [Ljava/lang/CharSequence;

    .line 142
    .line 143
    new-instance p5, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;

    .line 144
    .line 145
    .line 146
    invoke-direct {p5, p0, p2, p3}, Lcom/narvii/master/MyCommunityListFragment$Adapter$2;-><init>(Lcom/narvii/master/MyCommunityListFragment$Adapter;[ILcom/narvii/model/Community;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return v1

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 157
    move-result p1

    .line 158
    return p1
.end method

.method onResume()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/MyCommunityListFragment$Adapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    sget-wide v4, Lcom/narvii/master/MyCommunityListFragment;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 30
    sub-long/2addr v2, v4

    .line 31
    .line 32
    cmp-long v0, v0, v2

    .line 33
    .line 34
    if-gez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 39
    .line 40
    const/16 v1, 0x100

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 45
    :cond_1
    :goto_0
    return-void
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
    iget-object v0, p0, Lcom/narvii/master/MyCommunityListFragment$Adapter;->this$0:Lcom/narvii/master/MyCommunityListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MyCommunityListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 8
    return-void
.end method
