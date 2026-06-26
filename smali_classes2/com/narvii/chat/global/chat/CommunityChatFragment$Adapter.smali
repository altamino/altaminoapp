.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "CommunityChatFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/chat/util/IMyChatList;"
    }
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private curUser:Lcom/narvii/model/User;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/app/NVContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    const/4 p2, 0x1

    .line 297
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    const-string p2, "account"

    .line 298
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 299
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getNdcId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->curUser:Lcom/narvii/model/User;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 302
    invoke-virtual {p2, p1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->curUser:Lcom/narvii/model/User;

    .line 304
    :goto_1
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->curUser:Lcom/narvii/model/User;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 329
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/chat/thread"

    .line 330
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "joined-me"

    .line 331
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string v2, "ndcId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 333
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 334
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 321
    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatRoomList"

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurUser()Lcom/narvii/model/User;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->curUser:Lcom/narvii/model/User;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 354
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 355
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1

    .line 354
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 367
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 368
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/narvii/chat/util/MyChatListDelegate;->getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final getL$Amino_bundle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 3

    .line 373
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 374
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getMyChatListDelegate()Lcom/narvii/chat/util/MyChatListDelegate;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 347
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->l:Ljava/util/List;

    .line 348
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->l:Ljava/util/List;

    sget-object v1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getTHREAD_COMPARATOR()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 350
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->getMyChatManagePopUp()Lcom/narvii/chat/thread/MyChatManagePopUp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->updateManageButtonStatus()V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 312
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 313
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 388
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    .line 389
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v1, :cond_0

    move-object v2, p3

    check-cast v2, Lcom/narvii/model/ChatThread;

    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string p2, "ndcId"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 392
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 397
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v1, :cond_0

    move-object v2, p3

    check-cast v2, Lcom/narvii/model/ChatThread;

    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string p2, "ndcId"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroid/support/v4/app/FragmentManager;ZILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 401
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final onNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string v1, "ndcId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .locals 1

    const-string/jumbo v0, "updateObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/CommunityChatFragment;Z)V

    :goto_0
    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/CommunityChatFragment;Z)V

    :goto_0
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;"
        }
    .end annotation

    .line 325
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method

.method public final setCurUser(Lcom/narvii/model/User;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->curUser:Lcom/narvii/model/User;

    return-void
.end method

.method public final setL$Amino_bundle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->l:Ljava/util/List;

    return-void
.end method

.method public final setMyChatListDelegate(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method
