.class public final Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "MyChatListService.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/service/MyChatListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyChatListAdapter"
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
    value = "SMAP\nMyChatListService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyChatListService.kt\ncom/narvii/chat/service/MyChatListService$MyChatListAdapter\n*L\n1#1,279:1\n*E\n"
.end annotation


# instance fields
.field private chatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

.field private suspendObserver:Z

.field final synthetic this$0:Lcom/narvii/chat/service/MyChatListService;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/service/MyChatListService;Lcom/narvii/app/NVContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 133
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/chat/thread"

    .line 165
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "joined-me"

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 168
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-nez p1, :cond_3

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 174
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/service/MyChatListService;->dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V

    :cond_3
    return-object v0
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

    .line 158
    const-class v0, Lcom/narvii/model/ChatThread;

    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
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

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->filterDuplicate()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->filterDuplicated(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.narvii.model.ChatThread>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public final getChatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->chatList:Ljava/util/List;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getErrorMessageValue()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 1

    .line 189
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 190
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result p1

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->chatList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/narvii/model/ChatThread;

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/narvii/model/ChatThread;

    :cond_2
    return-object v1
.end method

.method public final getMyChatListDelegate()Lcom/narvii/chat/util/MyChatListDelegate;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-object v0
.end method

.method public final getSuspendObserver()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->suspendObserver:Z

    return v0
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

    .line 198
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->chatList:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->chatList:Ljava/util/List;

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->chatList:Ljava/util/List;

    sget-object v1, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    invoke-virtual {v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getTHREAD_COMPARATOR()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 205
    iget-boolean v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->suspendObserver:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/service/MyChatListService;->dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/narvii/list/NVPagedAdapter;->attached:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "start0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/service/MyChatListService;->setRequestTime$Amino_bundle(J)V

    .line 237
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/NVPagedAdapter;->onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;I)V

    const/4 p1, 0x0

    .line 238
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 239
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/service/MyChatListService;->dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method

.method public final onNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    iget-object v1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {v1}, Lcom/narvii/chat/service/MyChatListService;->getCommunityId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V
    .locals 2

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->suspendObserver:Z

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p3, "start0"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/chat/service/MyChatListService;->setRequestTime$Amino_bundle(J)V

    :cond_1
    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->suspendObserver:Z

    .line 217
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/service/MyChatListService;->dispatchChatListChange(Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 129
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;I)V

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

    const/16 p1, 0x100

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->this$0:Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {v0}, Lcom/narvii/chat/service/MyChatListService;->getAccountService()Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 147
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public refreshList()V
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected resetWhenEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    .line 160
    const-class v0, Lcom/narvii/chat/thread/ThreadListResponse;

    return-object v0
.end method

.method public final setChatList(Ljava/util/List;)V
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

    .line 132
    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->chatList:Ljava/util/List;

    return-void
.end method

.method public final setSuspendObserver(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/narvii/chat/service/MyChatListService$MyChatListAdapter;->suspendObserver:Z

    return-void
.end method
