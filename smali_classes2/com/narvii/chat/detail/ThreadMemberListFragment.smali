.class public Lcom/narvii/chat/detail/ThreadMemberListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ThreadMemberListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;
    }
.end annotation


# static fields
.field static final ADD_MEMBER:I = 0x2


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private community:Lcom/narvii/model/Community;

.field globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private threadId:Ljava/lang/String;

.field private userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->checkCommunityAvailability()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    return-object p0
.end method

.method private checkCommunityAvailability()Z
    .locals 8

    .line 387
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->community:Lcom/narvii/model/Community;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    iget v3, v0, Lcom/narvii/model/Community;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-instance v7, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;

    invoke-direct {v7, p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private updateTitle()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    iget v1, v1, Lcom/narvii/model/ChatThread;->membersCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f02c3

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 105
    new-instance p1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 106
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    .line 107
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 108
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo v0, "users"

    .line 327
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 329
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 330
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 331
    new-instance v2, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;Ljava/util/List;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 347
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 349
    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->threadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/member/invite"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v3, "uids"

    .line 356
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v2, "api"

    .line 357
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 358
    iget-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 359
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 362
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "threadId"

    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->threadId:Ljava/lang/String;

    const-string v0, "thread"

    .line 77
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatThread;

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    const-string v0, "__community"

    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->community:Lcom/narvii/model/Community;

    const-string v0, "affiliations"

    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 88
    :cond_0
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 89
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->updateTitle()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 368
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    if-ne v0, v1, :cond_1

    .line 369
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Lcom/narvii/model/ChatThread;

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 371
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->updateTitle()V

    goto :goto_0

    .line 372
    :cond_0
    instance-of v0, p1, Lcom/narvii/chat/util/ThreadNotification;

    if-eqz v0, :cond_1

    .line 373
    check-cast p1, Lcom/narvii/chat/util/ThreadNotification;

    .line 374
    iget v0, p1, Lcom/narvii/chat/util/ThreadNotification;->action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    const-string v1, "delete"

    .line 377
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 378
    iget-object p1, p1, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 379
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_1
    :goto_0
    return-void
.end method
