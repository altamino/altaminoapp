.class public Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "TippingBaseFragment.java"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/tipping/TippingBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TippingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/tipping/model/TipLog;",
        "Lcom/narvii/tipping/model/TipLogListResponse;",
        ">;",
        "Lcom/narvii/user/follow/IUserFollow;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field source:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/tipping/TippingBaseFragment;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/tipping/TippingBaseFragment;)V
    .locals 1

    .line 282
    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    .line 283
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Props Givers"

    .line 280
    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->source:Ljava/lang/String;

    .line 284
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 285
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    return-void
.end method

.method private canChat(Lcom/narvii/model/User;)Z
    .locals 5

    const-string v0, "account"

    .line 460
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 461
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 462
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "privilegeOfChatInviteRequest"

    .line 467
    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    return v1

    .line 471
    :cond_2
    iget p1, p1, Lcom/narvii/model/User;->membershipStatus:I

    if-eq p1, v4, :cond_3

    if-ne p1, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method private getItemPosition(Lcom/narvii/tipping/model/TipLog;)I
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getTipLogByUser(Lcom/narvii/model/User;)Lcom/narvii/tipping/model/TipLog;
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/tipping/model/TipLog;

    .line 363
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private sendLikeRequest(Lcom/narvii/tipping/model/TipLog;)V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/tipping/TippingBaseFragment;->isSupportGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/g-tipping/tipped-users/"

    goto :goto_0

    :cond_0
    const-string v0, "/tipping/tipped-users/"

    .line 430
    :goto_0
    new-instance v1, Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, v2}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 431
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v4, v4, Lcom/narvii/tipping/TippingBaseFragment;->apiTypeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v4, v4, Lcom/narvii/tipping/TippingBaseFragment;->objectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p1}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/thank"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 433
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 434
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/narvii/tipping/model/TipLog;->lastThankedTime:Ljava/util/Date;

    return-void
.end method

.method private startChat(Lcom/narvii/model/User;)V
    .locals 2

    const-string v0, "account"

    .line 438
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 439
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->canChat(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1125

    .line 442
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 444
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 448
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "chat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 318
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/tipping/TippingBaseFragment;->isSupportGlobal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/g-tipping/tipped-users"

    goto :goto_0

    :cond_0
    const-string p1, "/tipping/tipped-users"

    .line 319
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v2, v2, Lcom/narvii/tipping/TippingBaseFragment;->apiTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object v2, v2, Lcom/narvii/tipping/TippingBaseFragment;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

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
            "Lcom/narvii/tipping/model/TipLog;",
            ">;"
        }
    .end annotation

    .line 300
    const-class v0, Lcom/narvii/tipping/model/TipLog;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/tipping/model/TipLog;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/tipping/model/TipLog;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/tipping/TippingBaseFragment;->isAuthor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public follow(Lcom/narvii/model/User;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

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

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "PropsGiverList"

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
    .locals 9

    .line 334
    instance-of v0, p1, Lcom/narvii/tipping/model/TipLog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    move-object v3, p1

    check-cast v3, Lcom/narvii/tipping/model/TipLog;

    .line 336
    invoke-virtual {v3, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    iput-boolean p1, v3, Lcom/narvii/tipping/model/TipLog;->isTipperAccessible:Z

    const p1, 0x7f0b0462

    .line 337
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/tipping/TippingListItemCell;

    .line 338
    invoke-direct {p0, v3}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->getItemPosition(Lcom/narvii/tipping/model/TipLog;)I

    move-result v4

    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    invoke-virtual {p2}, Lcom/narvii/tipping/TippingBaseFragment;->isAuthor()Z

    move-result v5

    invoke-virtual {v3}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result v6

    iget-object p2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object p2, p2, Lcom/narvii/tipping/TippingBaseFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v8

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/tipping/TippingListItemCell;->setTipLog(Lcom/narvii/tipping/model/TipLog;IZZZZ)V

    .line 339
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b99

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/tipping/TippingThanksView;

    .line 341
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090c18

    .line 342
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_0
    return-object v1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$needUpdateUserAfterFollow(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    .line 495
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 373
    instance-of v0, p3, Lcom/narvii/tipping/model/TipLog;

    if-eqz v0, :cond_4

    .line 374
    move-object v0, p3

    check-cast v0, Lcom/narvii/tipping/model/TipLog;

    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->communityHelper:Lcom/narvii/community/CommunityHelper;

    iget v3, v1, Lcom/narvii/model/User;->ndcId:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 378
    :cond_0
    instance-of v2, p5, Lcom/narvii/tipping/TippingThanksView;

    if-eqz v2, :cond_2

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f090b99

    if-ne v2, v4, :cond_2

    .line 379
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->isThanksSent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 380
    sget-object p1, Lcom/narvii/logging/ActSemantic;->chat:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v1, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 381
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->startChat(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 383
    :cond_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->thank:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v1, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 384
    check-cast p5, Lcom/narvii/tipping/TippingThanksView;

    invoke-virtual {p5}, Lcom/narvii/tipping/TippingThanksView;->startLikeAnimation()V

    .line 385
    invoke-direct {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->sendLikeRequest(Lcom/narvii/tipping/model/TipLog;)V

    :goto_0
    return v3

    :cond_2
    if-eqz p5, :cond_3

    .line 390
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f090c18

    if-ne v2, v4, :cond_3

    .line 391
    new-instance p1, Landroid/content/Intent;

    const-string p2, "follow"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Lcom/narvii/tipping/model/TipLog;->getAuthor()Lcom/narvii/model/User;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "user"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v3

    :cond_3
    if-eqz p5, :cond_4

    .line 397
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 398
    invoke-static {p0, v1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 400
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->source:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 407
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "user"

    .line 418
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 419
    const-class p2, Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p0, p1}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->follow(Lcom/narvii/model/User;)V

    :cond_0
    return-void

    .line 425
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 500
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p1

    .line 501
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/User;

    if-eqz v1, :cond_4

    .line 502
    check-cast v0, Lcom/narvii/model/User;

    invoke-direct {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->getTipLogByUser(Lcom/narvii/model/User;)Lcom/narvii/tipping/model/TipLog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/User;

    .line 507
    iput-object v1, v0, Lcom/narvii/tipping/model/TipLog;->tipper:Lcom/narvii/model/User;

    .line 508
    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 509
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "new"

    if-eq v0, v2, :cond_1

    const-string v2, "delete"

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 512
    invoke-virtual {p0, v0}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 513
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 517
    :cond_2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-eq v0, v2, :cond_3

    const-string v2, "edit"

    if-ne v0, v2, :cond_4

    .line 519
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 275
    check-cast p2, Lcom/narvii/tipping/model/TipLogListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/tipping/model/TipLogListResponse;I)V
    .locals 0

    .line 310
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p2, :cond_0

    .line 312
    iget-object p1, p0, Lcom/narvii/tipping/TippingBaseFragment$TippingListAdapter;->this$0:Lcom/narvii/tipping/TippingBaseFragment;

    iget-object p3, p2, Lcom/narvii/tipping/model/TipLogListResponse;->tipSummary:Lcom/narvii/tipping/model/TipSummary;

    iget-object p2, p2, Lcom/narvii/tipping/model/TipLogListResponse;->globalTipSummary:Lcom/narvii/tipping/model/TipSummary;

    invoke-virtual {p1, p3, p2}, Lcom/narvii/tipping/TippingBaseFragment;->onTippingSummaryUpdated(Lcom/narvii/tipping/model/TipSummary;Lcom/narvii/tipping/model/TipSummary;)V

    :cond_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/tipping/model/TipLogListResponse;",
            ">;"
        }
    .end annotation

    .line 305
    const-class v0, Lcom/narvii/tipping/model/TipLogListResponse;

    return-object v0
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
