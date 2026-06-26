.class Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MySubscriptionListFragment.java"

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

    .line 157
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 158
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 173
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/influencer/fans"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 163
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

    .line 197
    instance-of v0, p1, Lcom/narvii/influencer/FanClub;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 198
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 199
    iget-object v0, p1, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    .line 200
    iget-object v2, p1, Lcom/narvii/influencer/FanClub;->community:Lcom/narvii/model/Community;

    const v3, 0x7f0b03bf

    .line 201
    invoke-virtual {p0, v3, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090c10

    .line 202
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 203
    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f090764

    .line 205
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 206
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p3, 0x7f0902a3

    .line 209
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/CommunityIconView;

    .line 210
    invoke-virtual {p3, v2}, Lcom/narvii/widget/CommunityIconView;->setCommunity(Lcom/narvii/model/Community;)V

    const p3, 0x7f0902b6

    .line 212
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f09041f

    .line 215
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 216
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08034b

    goto :goto_1

    :cond_1
    const v0, 0x7f08034c

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-boolean p3, p1, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    if-nez p3, :cond_4

    .line 220
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->expiringDays()I

    move-result p1

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    const p3, 0x7f0f0b87

    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    .line 224
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    const p3, 0x7f0f0b88

    invoke-virtual {p1, p3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    if-lez p1, :cond_4

    const/4 v0, 0x7

    if-gt p1, v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    const v1, 0x7f0f0b89

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    const p1, 0x7f090a97

    .line 229
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 230
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_5
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 189
    const-class v0, Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fanClub"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6

    .line 238
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne v0, v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 244
    instance-of v2, v1, Lcom/narvii/influencer/FanClub;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/narvii/influencer/FanClub;

    iget v2, v1, Lcom/narvii/influencer/FanClub;->ndcId:I

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/narvii/influencer/FanClub;

    iget v4, v4, Lcom/narvii/influencer/FanClub;->ndcId:I

    if-ne v2, v4, :cond_0

    iget-object v1, v1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    check-cast v3, Lcom/narvii/influencer/FanClub;

    iget-object v2, v3, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 245
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 247
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 252
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v0, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 255
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 257
    iget v3, v2, Lcom/narvii/influencer/FanClub;->ndcId:I

    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/narvii/influencer/FanClub;

    iget v5, v5, Lcom/narvii/influencer/FanClub;->ndcId:I

    if-ne v3, v5, :cond_3

    iget-object v3, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    check-cast v4, Lcom/narvii/influencer/FanClub;

    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 258
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 260
    iget-object v3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$FanClubListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    iget v3, v3, Lcom/narvii/influencer/MySubscriptionListFragment;->cid:I

    if-nez v3, :cond_2

    .line 261
    iget-object v2, v2, Lcom/narvii/influencer/FanClub;->community:Lcom/narvii/model/Community;

    iput-object v2, p1, Lcom/narvii/influencer/FanClub;->community:Lcom/narvii/model/Community;

    .line 263
    :cond_2
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    .line 168
    const-class v0, Lcom/narvii/influencer/FanClubListResponse;

    return-object v0
.end method
