.class public final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ChatBatchDeletionFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter\n*L\n1#1,432:1\n*E\n"
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

.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/app/NVContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    .line 253
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    const-string p2, "account"

    .line 254
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 255
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object v2

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getMyCommunityService()Lcom/narvii/community/MyCommunityListService;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    goto :goto_2

    .line 258
    :cond_2
    invoke-virtual {p2, v1}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    .line 260
    :goto_2
    new-instance p2, Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getConfig()Lcom/narvii/config/ConfigService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method

.method public static final synthetic access$selectChat(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->selectChat(Lcom/narvii/model/ChatThread;)V

    return-void
.end method

.method private final selectChat(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->notifyDataSetChanged()V

    .line 406
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 285
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/chat/thread"

    .line 286
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "joined-me"

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    const-string v2, "ndcId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 289
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 290
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

    .line 277
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

    .line 318
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

    .line 246
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getCurUser()Lcom/narvii/model/User;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 309
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 310
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1

    .line 309
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
    .locals 3

    .line 322
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/narvii/model/ChatThread;

    const v0, 0x7f0b00d5

    .line 323
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const v2, 0x7f0901dd

    if-eqz p2, :cond_2

    .line 325
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 326
    iget-object p3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p0, p1, v1, p2}, Lcom/narvii/chat/util/MyChatListDelegate;->getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 327
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 328
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 330
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const-string v2, "container"

    .line 331
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v1

    .line 332
    :goto_1
    iget-object v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/narvii/chat/util/MyChatListDelegate;->getChatThreadItemCell(Lcom/narvii/list/NVAdapter;Lcom/narvii/model/ChatThread;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_4
    :goto_2
    const p2, 0x7f0909fe

    .line 334
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 335
    iget-object p3, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p3}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object p3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f08048f

    goto :goto_3

    :cond_6
    const p1, 0x7f08048e

    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
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

    .line 274
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 3

    .line 341
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

    .line 342
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

    .line 250
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

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

    .line 298
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 303
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    .line 304
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    sget-object v1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getTHREAD_COMPARATOR()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 269
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 355
    instance-of p1, p3, Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object p1

    move-object p2, p3

    check-cast p2, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/narvii/chat/util/ChatHelperKt;->isSingleChat(Lcom/narvii/model/ChatThread;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 357
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0f70

    .line 358
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 p4, 0x0

    const-wide v0, 0xff4a90e2L

    long-to-int p5, v0

    .line 359
    invoke-virtual {p1, p2, p4, p5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    const p2, 0x7f0f119f

    .line 360
    new-instance p4, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;

    invoke-direct {p4, p0, p3}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter$onItemClick$$inlined$apply$lambda$1;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p4, p5}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 363
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 365
    :cond_0
    invoke-direct {p0, p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->selectChat(Lcom/narvii/model/ChatThread;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    const-string v2, "ndcId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

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

    .line 377
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Z)V

    :goto_0
    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$setNeedRefreshWhenResume$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Z)V

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

    .line 281
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method

.method public final setCurUser(Lcom/narvii/model/User;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->curUser:Lcom/narvii/model/User;

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

    .line 274
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->l:Ljava/util/List;

    return-void
.end method

.method public final setMyChatListDelegate(Lcom/narvii/chat/util/MyChatListDelegate;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$Adapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method
