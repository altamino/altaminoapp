.class public abstract Lcom/narvii/user/list/UserListExAdapter;
.super Lcom/narvii/user/list/UserListAdapter;
.source "UserListExAdapter.java"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;


# instance fields
.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/user/list/UserListExAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/user/list/UserListExAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V

    return-void
.end method

.method public synthetic followFail()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$followFail(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method public synthetic followSuccess()V
    .locals 0

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$followSuccess(Lcom/narvii/user/follow/IUserFollow;)V

    return-void
.end method

.method protected followingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 43
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/User;

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "account"

    .line 46
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 47
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 48
    iget p3, v0, Lcom/narvii/model/User;->followingStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v1, :cond_1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 49
    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/user/list/UserListExAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result v3

    const v4, 0x7f090c37

    .line 50
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListExAdapter;->showFollowView()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v4, 0x7f090c18

    .line 54
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 56
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListExAdapter;->followingEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/narvii/user/list/UserListExAdapter;->showFollowView()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const/16 p2, 0x8

    :goto_3
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090c1b

    .line 58
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_5

    const/16 p3, 0x8

    goto :goto_4

    :cond_5
    const/4 p3, 0x0

    :goto_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090c1e

    .line 60
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_6

    const/16 p3, 0x8

    goto :goto_5

    :cond_6
    const/4 p3, 0x0

    :goto_5
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090c1d

    .line 62
    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz v3, :cond_7

    const/4 p3, 0x0

    goto :goto_6

    :cond_7
    const/16 p3, 0x8

    :goto_6
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const p2, 0x7f09006f

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 67
    iget-object p3, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 68
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/narvii/model/User;->address:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_9
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    const p2, 0x7f0907ba

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 74
    iget p3, v0, Lcom/narvii/model/User;->onlineStatus:I

    if-ne p3, v1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x4

    :goto_7
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-object p1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/narvii/user/list/UserListExAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06b7

    return v0
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$needUpdateUserAfterFollow(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 90
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 91
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c18

    if-ne v0, v1, :cond_0

    .line 92
    sget-object p1, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string p2, "follow"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "user"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 99
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/user/list/UserListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "user"

    .line 105
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    const-class p2, Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;->follow(Lcom/narvii/model/User;)V

    :cond_0
    return-void

    .line 114
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method protected showFollowView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
