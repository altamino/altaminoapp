.class public abstract Lcom/narvii/livelayer/LiveLayerMemberAdapter;
.super Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.source "LiveLayerMemberAdapter.java"


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

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    .line 50
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "liveLayer"

    .line 51
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/LiveLayerService;

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    .line 52
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 54
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;-><init>(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)Lcom/narvii/modulization/CommunityConfigHelper;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/livelayer/LiveLayerMemberAdapter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->updateTitle()V

    return-void
.end method

.method private updateTitle()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getTitleView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->moreView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 154
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

    .line 118
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getCount()I

    move-result v0

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

    .line 69
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090562

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getTitleIcon()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 103
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getTitleIconBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f09072f

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->moreView:Landroid/view/View;

    .line 107
    iget-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->moreView:Landroid/view/View;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09067f

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->titleView:Landroid/widget/TextView;

    .line 111
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->updateTitle()V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_1

    .line 123
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09072f

    if-ne v0, v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->onMoreItemClick()Z

    move-result p1

    return p1

    .line 129
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onMoreItemClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "userCount"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    const-string v0, "isRequestFinished"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 74
    invoke-super {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userCount:I

    const-string v2, "userCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->isRequestFinished:Z

    const-string v2, "isRequestFinished"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onUserClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getAreaName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    :cond_0
    return-void
.end method

.method protected processApiBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->getLiveLayerTopic()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "online-members"

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->liveLayerService:Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/LiveLayerService;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "topic"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-void
.end method

.method protected recycleViewContainerLayoutId()I
    .locals 1

    const v0, 0x7f0b04d9

    return v0
.end method

.method public setCachedUserListResponse(Lcom/narvii/model/api/UserListResponse;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->userListResponse:Lcom/narvii/model/api/UserListResponse;

    .line 62
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->setListData(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->adapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;

    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;->access$000(Lcom/narvii/livelayer/LiveLayerMemberAdapter$OnlineMemberAdapter;Lcom/narvii/model/api/UserListResponse;)V

    :cond_1
    return-void
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 309
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_0

    .line 313
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    :cond_0
    if-eqz v0, :cond_2

    .line 317
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/chat/invite/ChatInviteFragment;->source:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uid"

    .line 322
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
