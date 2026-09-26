.class Lcom/narvii/drawer/DrawerRightHost$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field hasAccount:Z

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 12
    return-void
.end method

.method public static safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/drawer/DrawerRightHost;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost;->startActivity(Landroid/content/Intent;I)V

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
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/2addr v0, v1

    .line 19
    :goto_0
    return v0

    .line 20
    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

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
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isEnd()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 28
    return-object p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->errorMessage()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 37
    return-object p1

    .line 38
    .line 39
    :cond_2
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_3
    sget-object p1, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 43
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/Community;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_4

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
    check-cast p3, Lcom/narvii/widget/NVImageView;

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
    iget-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 75
    .line 76
    iget-object p3, p3, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

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
    iget v0, p1, Lcom/narvii/model/Community;->probationStatus:I

    .line 85
    const/4 v2, 0x0

    .line 86
    .line 87
    if-ne v0, v1, :cond_0

    .line 88
    .line 89
    if-eqz p3, :cond_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/narvii/model/User;->isLeader()Z

    .line 93
    move-result p3

    .line 94
    .line 95
    if-eqz p3, :cond_0

    .line 96
    move p3, v1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    move p3, v2

    .line 99
    .line 100
    .line 101
    :goto_0
    const v0, 0x7f0a0b88

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    if-eqz p3, :cond_1

    .line 108
    move p3, v2

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_1
    const/16 p3, 0x8

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    const p3, 0x7f0a0b8a

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p3

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 126
    const/4 v3, 0x4

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-object v4, v0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->progressBar:Lcom/narvii/widget/SmoothProgressBar;

    .line 131
    .line 132
    if-ne v4, p3, :cond_3

    .line 133
    .line 134
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->community:Lcom/narvii/model/Community;

    .line 135
    .line 136
    if-eqz v0, :cond_2

    .line 137
    .line 138
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 139
    .line 140
    iget v4, p1, Lcom/narvii/model/Community;->id:I

    .line 141
    .line 142
    if-eq v0, v4, :cond_2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    iget-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Lcom/narvii/drawer/DrawerRightHost;->cancelLaunch()V

    .line 151
    goto :goto_2

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    goto :goto_2

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    :goto_2
    iget-object p3, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3, p2, p1, v1}, Lcom/narvii/drawer/DrawerRightHost;->updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    return-object p2

    .line 168
    .line 169
    :cond_4
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 170
    .line 171
    if-ne p1, v0, :cond_5

    .line 172
    .line 173
    .line 174
    const p1, 0x7f0d0392

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    .line 181
    const p2, 0x7f0a0666

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    check-cast p2, Landroid/widget/TextView;

    .line 188
    .line 189
    const/high16 p3, 0x41600000    # 14.0f

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    return-object p1

    .line 194
    .line 195
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOADING:Lcom/narvii/util/Tag;

    .line 196
    .line 197
    if-ne p1, v0, :cond_6

    .line 198
    .line 199
    .line 200
    const p1, 0x7f0d0393

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 207
    .line 208
    iget-object p2, p2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 212
    return-object p1

    .line 213
    .line 214
    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->errorMessage()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p3, p2, p1}, Lcom/narvii/list/NVAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 220
    move-result-object p1

    .line 221
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->getItem(I)Ljava/lang/Object;

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

.method public isEnd()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->isEnd()Z

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isEnd()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->retryRetry()V

    .line 12
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    instance-of v2, v0, Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    check-cast p3, Lcom/narvii/model/Community;

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    const-string p1, "config"

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 29
    move-result p1

    .line 30
    .line 31
    iget p2, p3, Lcom/narvii/model/Community;->id:I

    .line 32
    .line 33
    if-ne p1, p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    const p2, 0x7f12013a

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 50
    .line 51
    .line 52
    const p2, 0xfa0001

    .line 53
    const/4 p3, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ProxyViewHost;->sendEvent(ILjava/lang/Object;)Z

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 61
    .line 62
    iget-boolean p1, p1, Lcom/narvii/drawer/DrawerRightHost;->isMaster:Z

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    .line 67
    const p1, 0x7f0a0b8a

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Lcom/narvii/widget/SmoothProgressBar;

    .line 74
    .line 75
    .line 76
    const p2, 0x7f0a06eb

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 83
    .line 84
    iget-object p4, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 85
    .line 86
    new-instance p5, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 87
    .line 88
    iget-object v0, p4, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 89
    .line 90
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 91
    .line 92
    .line 93
    invoke-direct {p5, p4, v0}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;-><init>(Lcom/narvii/drawer/DrawerRightHost;Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    iput-object p5, p4, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 96
    .line 97
    iget-object p4, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 98
    .line 99
    iget-object p4, p4, Lcom/narvii/drawer/DrawerRightHost;->launchHelper:Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4, p3, p2, p1}, Lcom/narvii/drawer/DrawerRightHost$MyLaunchHelper;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_1
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    .line 120
    move-result p2

    .line 121
    .line 122
    const-string p4, "/description"

    .line 123
    .line 124
    if-eqz p2, :cond_2

    .line 125
    .line 126
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string p1, "://x"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    iget p1, p3, Lcom/narvii/model/Community;->id:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    new-instance p2, Landroid/content/Intent;

    .line 156
    .line 157
    const-string p3, "android.intent.action.VIEW"

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .line 166
    const-string p1, "clearTask"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    .line 171
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 172
    .line 173
    .line 174
    invoke-static {p1, p2, v1}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->safedk_DrawerRightHost_startActivity_60465904c27c59f1410e9f7c185f6a6e(Lcom/narvii/drawer/DrawerRightHost;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 176
    .line 177
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 178
    .line 179
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 180
    .line 181
    instance-of p2, p1, Lcom/narvii/app/NVContext;

    .line 182
    .line 183
    if-eqz p2, :cond_3

    .line 184
    .line 185
    new-instance p2, Lcom/narvii/master/MasterHelper;

    .line 186
    .line 187
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 188
    .line 189
    .line 190
    invoke-direct {p2, p1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 191
    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    const-string p5, "ndc://x"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    iget p3, p3, Lcom/narvii/model/Community;->id:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, p1}, Lcom/narvii/master/MasterHelper;->showDownloadMaterDialog(Ljava/lang/String;)V

    .line 216
    :catch_0
    :cond_3
    :goto_0
    return v1

    .line 217
    .line 218
    :cond_4
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LIST_END:Lcom/narvii/util/Tag;

    .line 219
    .line 220
    if-ne p3, v0, :cond_5

    .line 221
    .line 222
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/narvii/drawer/DrawerRightHost;->explore()V

    .line 226
    return v1

    .line 227
    .line 228
    :cond_5
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->ERROR:Lcom/narvii/util/Tag;

    .line 229
    .line 230
    if-ne p3, v0, :cond_6

    .line 231
    .line 232
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 233
    .line 234
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 235
    const/4 p2, 0x0

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p2}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 239
    return v1

    .line 240
    .line 241
    .line 242
    :cond_6
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 243
    move-result p1

    .line 244
    return p1
.end method

.method public prepare()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->account:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isListShown()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->loadNextPage(Z)V

    .line 27
    :cond_0
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
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 16
    :goto_0
    return-void
.end method

.method public resumed()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->hasAccount:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$Adapter;->isListShown()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->getCommunityRequestTime()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    sget-wide v4, Lcom/narvii/drawer/DrawerRightHost;->REFRESH_COMMUNITY_LIST_DURATION:J

    .line 25
    sub-long/2addr v2, v4

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$Adapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 34
    .line 35
    const/16 v1, 0x100

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 40
    :cond_0
    return-void
.end method
