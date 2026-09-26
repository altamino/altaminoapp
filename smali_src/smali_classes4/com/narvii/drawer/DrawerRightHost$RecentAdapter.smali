.class Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerRightHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAdapter"
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/drawer/DrawerRightHost;


# direct methods
.method public constructor <init>(Lcom/narvii/drawer/DrawerRightHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/drawer/DrawerRightHost;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 15
    :goto_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->cell:Landroid/view/View;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d0202

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->updateCell(Landroid/view/View;Ljava/util/List;)V

    .line 18
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refreshReminders(Z)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

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
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/model/Community;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 35
    .line 36
    iget v3, v1, Lcom/narvii/model/Community;->id:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 47
    .line 48
    iget v3, v1, Lcom/narvii/model/Community;->id:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    .line 52
    move-result-wide v2

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    move-result-wide v4

    .line 57
    .line 58
    sget-wide v6, Lcom/narvii/drawer/DrawerRightHost;->REMINDER_CHECK_DURATION:J

    .line 59
    sub-long/2addr v4, v6

    .line 60
    .line 61
    cmp-long v2, v2, v4

    .line 62
    .line 63
    if-gez v2, :cond_1

    .line 64
    .line 65
    :cond_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 68
    .line 69
    iget v3, v1, Lcom/narvii/model/Community;->id:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    .line 73
    .line 74
    :cond_1
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 77
    .line 78
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->cell:Landroid/view/View;

    return-void
.end method

.method update()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/drawer/DrawerRightHost;->activity:Landroid/app/Activity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "config"

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    .line 30
    :goto_0
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/narvii/drawer/DrawerRightHost;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 33
    .line 34
    const/16 v3, 0x8

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1, v3}, Lcom/narvii/community/RecentCommunityHelper;->getRecentList(II)Ljava/util/List;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->getCount()I

    .line 44
    move-result v1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->cell:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->list:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2, v0}, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->updateCell(Landroid/view/View;Ljava/util/List;)V

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 61
    :goto_2
    return-void
.end method

.method updateCell(Landroid/view/View;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0632

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/GridLayout;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f070183

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v2

    .line 25
    sub-int/2addr v1, v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    move-result v2

    .line 30
    sub-int/2addr v1, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getColumnCount()I

    .line 34
    move-result v0

    .line 35
    div-int/2addr v1, v0

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0a048f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Landroid/view/ViewGroup;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    move-result v0

    .line 53
    const/4 v2, 0x0

    .line 54
    move v3, v2

    .line 55
    .line 56
    :goto_0
    if-ge v3, v0, :cond_9

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x0

    .line 72
    .line 73
    if-ge v3, v5, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    check-cast v5, Lcom/narvii/model/Community;

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    move-object v5, v6

    .line 82
    .line 83
    :goto_1
    if-nez v5, :cond_1

    .line 84
    move-object v7, v6

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_1
    iget-object v7, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 88
    .line 89
    iget-object v7, v7, Lcom/narvii/drawer/DrawerRightHost;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 90
    .line 91
    iget v8, v5, Lcom/narvii/model/Community;->id:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v8}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    :goto_2
    if-nez v5, :cond_2

    .line 98
    move v8, v2

    .line 99
    goto :goto_3

    .line 100
    .line 101
    :cond_2
    iget-object v8, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 102
    .line 103
    iget-object v8, v8, Lcom/narvii/drawer/DrawerRightHost;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 104
    .line 105
    iget v9, v5, Lcom/narvii/model/Community;->id:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v9}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 109
    move-result v8

    .line 110
    .line 111
    :goto_3
    if-nez v7, :cond_3

    .line 112
    move v9, v2

    .line 113
    goto :goto_4

    .line 114
    .line 115
    :cond_3
    iget v9, v7, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 116
    add-int/2addr v9, v8

    .line 117
    .line 118
    iget v7, v7, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 119
    add-int/2addr v9, v7

    .line 120
    .line 121
    .line 122
    :goto_4
    const v7, 0x7f0a06d5

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v7

    .line 127
    .line 128
    check-cast v7, Lcom/narvii/widget/NVImageView;

    .line 129
    .line 130
    if-nez v5, :cond_4

    .line 131
    move-object v8, v6

    .line 132
    goto :goto_5

    .line 133
    .line 134
    :cond_4
    iget-object v8, v5, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    :goto_5
    invoke-virtual {v7, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    const v7, 0x7f0a01a7

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v8

    .line 145
    .line 146
    if-lez v9, :cond_5

    .line 147
    move v10, v2

    .line 148
    goto :goto_6

    .line 149
    :cond_5
    const/4 v10, 0x4

    .line 150
    .line 151
    .line 152
    :goto_6
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v7

    .line 157
    .line 158
    check-cast v7, Landroid/widget/TextView;

    .line 159
    .line 160
    const/16 v8, 0x9

    .line 161
    .line 162
    if-le v9, v8, :cond_6

    .line 163
    .line 164
    const-string v8, "9+"

    .line 165
    goto :goto_7

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    move-result-object v8

    .line 170
    .line 171
    .line 172
    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    const v7, 0x7f0a0e9e

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v7

    .line 180
    .line 181
    check-cast v7, Landroid/widget/TextView;

    .line 182
    .line 183
    if-nez v5, :cond_7

    .line 184
    goto :goto_8

    .line 185
    .line 186
    :cond_7
    iget-object v6, v5, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    :goto_8
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    if-nez v5, :cond_8

    .line 192
    .line 193
    const/16 v6, 0x8

    .line 194
    goto :goto_9

    .line 195
    :cond_8
    move v6, v2

    .line 196
    .line 197
    .line 198
    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    .line 203
    iget-object v5, p0, Lcom/narvii/drawer/DrawerRightHost$RecentAdapter;->this$0:Lcom/narvii/drawer/DrawerRightHost;

    .line 204
    .line 205
    iget-object v5, v5, Lcom/narvii/drawer/DrawerRightHost;->launchRecentListener:Landroid/view/View$OnClickListener;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    :cond_9
    return-void
.end method
