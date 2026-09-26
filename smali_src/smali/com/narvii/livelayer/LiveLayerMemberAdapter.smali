.class public abstract Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.super Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field isRequestFinished:Z

.field liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

.field private moreView:Landroid/view/View;

.field private nvContext:Lcom/narvii/app/NVContext;

.field public source:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field protected userCount:I

.field userListResponse:Lcom/narvii/model/api/UserListResponse;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v0, "liveLayer"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;-><init>(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 34
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->updateTitle()V

    return-void
.end method

.method private updateTitle()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->titleView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getTitleView()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->moreView:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 18
    const/4 v2, 0x5

    .line 19
    .line 20
    if-le v1, v2, :cond_1

    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0x8

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_2
    return-void
.end method


# virtual methods
.method protected apiPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/live-layer"

    return-object v0
.end method

.method protected blockUserClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getCount()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method protected getLiveLayerTopic()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitleIcon()I
.end method

.method public abstract getTitleIconBackground()I
.end method

.method public abstract getTitleView()Ljava/lang/String;
.end method

.method public getUserListResponse()Lcom/narvii/model/api/UserListResponse;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a06d5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Landroid/widget/ImageView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getTitleIcon()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getTitleIconBackground()I

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0a0998

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->moreView:Landroid/view/View;

    .line 54
    .line 55
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0a0805

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    check-cast p2, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->titleView:Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->updateTitle()V

    .line 73
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRequestFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0998

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onMoreItemClick()Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public onMoreItemClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string/jumbo v0, "userCount"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 12
    .line 13
    const-string v0, "isRequestFinished"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 20
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string/jumbo v1, "userCount"

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    const-string v1, "isRequestFinished"

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    return-object v0
.end method

.method protected onUserClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 12
    :cond_0
    return-void
.end method

.method protected processApiBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getLiveLayerTopic()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v0, "online-members"

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string/jumbo v1, "topic"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    return-void
.end method

.method protected recycleViewContainerLayoutId()I
    .locals 1

    const v0, 0x7f0d0506

    return v0
.end method

.method public setCachedUserListResponse(Lcom/narvii/model/api/UserListResponse;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->setListData(Ljava/util/List;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->j(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/api/UserListResponse;)V

    .line 22
    :cond_1
    return-void
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "chatInvite"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->source:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v1, "chat"

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    const-string/jumbo v1, "uid"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    .line 64
    :cond_2
    :goto_1
    return-void
.end method
