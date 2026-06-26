.class Lcom/narvii/influencer/FansListFragment$FansListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "FansListFragment.java"

# interfaces
.implements Lcom/narvii/user/follow/IUserFollow;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FansListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FansListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/influencer/FansInfo;",
        "Lcom/narvii/influencer/FansInfoListResponse;",
        ">;",
        "Lcom/narvii/user/follow/IUserFollow;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation
.end field

.field private myFansClub:Lcom/narvii/influencer/FansInfo;

.field source:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/influencer/FansListFragment;

.field private userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/FansListFragment;)V
    .locals 1

    .line 243
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    .line 244
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Fans List"

    .line 238
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->source:Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;-><init>(Lcom/narvii/user/follow/IUserFollow;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    const-string p1, "account"

    .line 246
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->accountService:Lcom/narvii/account/AccountService;

    return-void
.end method

.method private canChat(Lcom/narvii/model/User;)Z
    .locals 5

    const-string v0, "account"

    .line 410
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 411
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 412
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "privilegeOfChatInviteRequest"

    .line 417
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

    .line 421
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

.method private getFansInfoByUser(Lcom/narvii/model/User;)Lcom/narvii/influencer/FansInfo;
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 453
    :goto_0
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/influencer/FansInfo;

    .line 455
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

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

.method private sendLikeRequest(Lcom/narvii/influencer/FansInfo;)V
    .locals 5

    .line 444
    new-instance v0, Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ApiService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 445
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/influencer/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    const-string v4, "id"

    .line 446
    invoke-virtual {v3, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/fans/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->uid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/thank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 447
    sget-object v2, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 448
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/narvii/influencer/FansInfo;->lastThankedTime:Ljava/util/Date;

    return-void
.end method

.method private startChat(Lcom/narvii/model/User;)V
    .locals 2

    const-string v0, "account"

    .line 388
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 389
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->canChat(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f1125

    .line 392
    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 394
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 398
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "chat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 297
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "influencer/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/fans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 299
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation

    .line 277
    const-class v0, Lcom/narvii/influencer/FansInfo;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/influencer/FansInfo;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    invoke-static {v0}, Lcom/narvii/influencer/FansListFragment;->access$200(Lcom/narvii/influencer/FansListFragment;)Z

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

    .line 372
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

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
    .locals 2

    .line 316
    instance-of v0, p1, Lcom/narvii/influencer/FansInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 317
    check-cast p1, Lcom/narvii/influencer/FansInfo;

    .line 318
    invoke-virtual {p1, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/narvii/influencer/FansInfo;->isTipperAccessible:Z

    const v0, 0x7f0b03c1

    .line 319
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/influencer/FansListItemCell;

    .line 320
    iget-object p3, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    .line 321
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    invoke-static {v0}, Lcom/narvii/influencer/FansListFragment;->access$200(Lcom/narvii/influencer/FansListFragment;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result v1

    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/narvii/influencer/FansListItemCell;->setFansInfo(Lcom/narvii/influencer/FansInfo;ZZZ)V

    .line 322
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09042f

    .line 323
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090c18

    .line 324
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method public isSendingFollow(Lcom/narvii/model/User;)Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->userFollowDelegate:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/user/follow/UserFollowDelegate;->isSendingFollow(Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public synthetic needUpdateUserAfterFollow()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/user/follow/IUserFollow$-CC;->$default$needUpdateUserAfterFollow(Lcom/narvii/user/follow/IUserFollow;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    goto :goto_0

    .line 257
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    .line 258
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->myFansClub:Lcom/narvii/influencer/FansInfo;

    if-eqz v1, :cond_2

    .line 259
    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->myFansClub:Lcom/narvii/influencer/FansInfo;

    invoke-virtual {v0}, Lcom/narvii/influencer/FansInfo;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFollowStatusUpdated()V
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 337
    instance-of v0, p3, Lcom/narvii/influencer/FansInfo;

    if-eqz v0, :cond_3

    if-eqz p5, :cond_3

    .line 339
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09042f

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 340
    check-cast p3, Lcom/narvii/influencer/FansInfo;

    invoke-virtual {p3}, Lcom/narvii/influencer/FansInfo;->isThanksSent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p3}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->startChat(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 343
    :cond_0
    check-cast p5, Lcom/narvii/tipping/TippingThanksView;

    invoke-virtual {p5}, Lcom/narvii/tipping/TippingThanksView;->startLikeAnimation()V

    .line 344
    invoke-direct {p0, p3}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->sendLikeRequest(Lcom/narvii/influencer/FansInfo;)V

    :goto_0
    return v2

    .line 349
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090c18

    if-ne v0, v1, :cond_2

    .line 350
    new-instance p1, Landroid/content/Intent;

    const-string p2, "follow"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    check-cast p3, Lcom/narvii/influencer/FansInfo;

    invoke-virtual {p3}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "user"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v2

    .line 355
    :cond_2
    move-object v0, p3

    check-cast v0, Lcom/narvii/influencer/FansInfo;

    invoke-virtual {v0}, Lcom/narvii/influencer/FansInfo;->getAuthor()Lcom/narvii/model/User;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 357
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->source:Ljava/lang/String;

    const-string p2, "Source"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 366
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "user"

    .line 434
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0, v0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->follow(Lcom/narvii/model/User;)V

    .line 440
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 465
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/User;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 466
    check-cast v0, Lcom/narvii/model/User;

    invoke-direct {p0, v0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->getFansInfoByUser(Lcom/narvii/model/User;)Lcom/narvii/influencer/FansInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/User;

    iput-object v1, v0, Lcom/narvii/influencer/FansInfo;->fansUserProfile:Lcom/narvii/model/User;

    .line 471
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-eq v0, v1, :cond_1

    const-string v1, "edit"

    if-ne v0, v1, :cond_2

    .line 473
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 475
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->notifyDataSetChanged()V

    .line 477
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/influencer/FanClub;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/narvii/influencer/FanClub;

    iget-object v0, v0, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    invoke-static {v1}, Lcom/narvii/influencer/FansListFragment;->access$300(Lcom/narvii/influencer/FansListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 479
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_4
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FansInfoListResponse;I)V
    .locals 2

    .line 287
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    iget-object v1, p2, Lcom/narvii/influencer/FansInfoListResponse;->influencerUserProfile:Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/influencer/FansListFragment;->access$002(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/model/User;)Lcom/narvii/model/User;

    .line 289
    iget-object v0, p2, Lcom/narvii/influencer/FansInfoListResponse;->myFanClub:Lcom/narvii/influencer/FansInfo;

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->myFansClub:Lcom/narvii/influencer/FansInfo;

    .line 291
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 292
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->this$0:Lcom/narvii/influencer/FansListFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FansListFragment;->access$100(Lcom/narvii/influencer/FansListFragment;)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 235
    check-cast p2, Lcom/narvii/influencer/FansInfoListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FansInfoListResponse;I)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/influencer/FansInfoListResponse;",
            ">;"
        }
    .end annotation

    .line 282
    const-class v0, Lcom/narvii/influencer/FansInfoListResponse;

    return-object v0
.end method
