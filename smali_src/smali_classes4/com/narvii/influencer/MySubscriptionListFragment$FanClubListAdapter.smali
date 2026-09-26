.class Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/MySubscriptionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/influencer/FanClub;",
        "Lcom/narvii/influencer/FanClubListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/MySubscriptionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "/influencer/fans"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/influencer/FanClub;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/influencer/FanClub;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/influencer/FanClub;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/narvii/influencer/FanClub;->community:Lcom/narvii/model/Community;

    .line 12
    .line 13
    .line 14
    const v3, 0x7f0d03f5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const p3, 0x7f0a0f36

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 31
    .line 32
    .line 33
    const p3, 0x7f0a09f9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 43
    .line 44
    .line 45
    const p3, 0x7f0a036b

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v2}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    .line 55
    .line 56
    .line 57
    const p3, 0x7f0a037c

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    check-cast p3, Landroid/widget/TextView;

    .line 64
    .line 65
    if-nez v2, :cond_0

    .line 66
    move-object v0, v1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_0
    iget-object v0, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const p3, 0x7f0a0558

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    check-cast p3, Landroid/widget/ImageView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    .line 90
    const v0, 0x7f08045b

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_1
    const v0, 0x7f08045c

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 101
    move-result p3

    .line 102
    .line 103
    if-eqz p3, :cond_4

    .line 104
    .line 105
    iget-boolean p3, p1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 106
    .line 107
    if-nez p3, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->expiringDays()I

    .line 111
    move-result p1

    .line 112
    .line 113
    if-nez p1, :cond_2

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 116
    .line 117
    .line 118
    const p3, 0x7f120c8b

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const/4 p3, 0x1

    .line 125
    .line 126
    if-ne p1, p3, :cond_3

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 129
    .line 130
    .line 131
    const p3, 0x7f120c8c

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :cond_3
    if-lez p1, :cond_4

    .line 139
    const/4 v0, 0x7

    .line 140
    .line 141
    if-gt p1, v0, :cond_4

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 144
    .line 145
    new-array p3, p3, [Ljava/lang/Object;

    .line 146
    const/4 v1, 0x0

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    aput-object p1, p3, v1

    .line 153
    .line 154
    .line 155
    const p1, 0x7f120c8d

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    :cond_4
    :goto_2
    const p1, 0x7f0a0d90

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    check-cast p1, Landroid/widget/TextView;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-object p2

    .line 173
    :cond_5
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/influencer/FanClubDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "fanClub"

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/influencer/FanClub;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "delete"

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    instance-of v2, v1, Lcom/narvii/influencer/FanClub;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/influencer/FanClub;

    .line 39
    .line 40
    iget v2, v1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 41
    .line 42
    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 43
    move-object v4, v3

    .line 44
    .line 45
    check-cast v4, Lcom/narvii/influencer/FanClub;

    .line 46
    .line 47
    iget v4, v4, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 48
    .line 49
    if-ne v2, v4, :cond_0

    .line 50
    .line 51
    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 52
    .line 53
    check-cast v3, Lcom/narvii/influencer/FanClub;

    .line 54
    .line 55
    iget-object v2, v3, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_1
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 71
    .line 72
    const-string v2, "update"

    .line 73
    .line 74
    if-ne v1, v2, :cond_4

    .line 75
    .line 76
    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    const/4 v1, 0x0

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    move-result v2

    .line 90
    .line 91
    if-ge v1, v2, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 98
    .line 99
    iget v3, v2, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 100
    .line 101
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 102
    move-object v5, v4

    .line 103
    .line 104
    check-cast v5, Lcom/narvii/influencer/FanClub;

    .line 105
    .line 106
    iget v5, v5, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 107
    .line 108
    if-ne v3, v5, :cond_3

    .line 109
    .line 110
    iget-object v3, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 111
    .line 112
    check-cast v4, Lcom/narvii/influencer/FanClub;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result v3

    .line 119
    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 133
    .line 134
    iget v3, v3, Lcom/narvii/influencer/MySubscriptionListFragment;->cid:I

    .line 135
    .line 136
    if-nez v3, :cond_2

    .line 137
    .line 138
    iget-object v2, v2, Lcom/narvii/influencer/FanClub;->community:Lcom/narvii/model/Community;

    .line 139
    .line 140
    iput-object v2, p1, Lcom/narvii/influencer/FanClub;->community:Lcom/narvii/model/Community;

    .line 141
    .line 142
    .line 143
    :cond_2
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_4
    :goto_1
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/influencer/FanClubListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/influencer/FanClubListResponse;

    return-object v0
.end method
