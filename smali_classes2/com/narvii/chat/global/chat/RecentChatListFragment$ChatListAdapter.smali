.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "RecentChatListFragment.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/chat/util/IMyChatList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/chat/RecentChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChatListAdapter"
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private final myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

.field private recentChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private requestSent:Z

.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 172
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatRoomList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "recentChatList.get(position)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 226
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 251
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

    .line 172
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    return-object v0
.end method

.method public final getRecentChatList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRequestSent()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 197
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_3

    .line 200
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const v0, 0x7f0b00d7

    const-string v2, "plain"

    .line 209
    invoke-virtual {p0, v0, p3, p2, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const-string p3, "createView(R.layout.chat\u2026nt, convertView, \"plain\")"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f0b00d4

    const-string v2, "hangout"

    .line 203
    invoke-virtual {p0, v0, p3, p2, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const-string p3, "createView(R.layout.chat\u2026, convertView, \"hangout\")"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f0b00d2

    const-string v2, "group"

    .line 206
    invoke-virtual {p0, v0, p3, p2, v2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    const-string p3, "createView(R.layout.chat\u2026nt, convertView, \"group\")"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 212
    :goto_0
    invoke-virtual {p2, v1}, Lcom/narvii/chat/thread/ThreadListItem;->setDarkTheme(Z)V

    .line 213
    iget-object p3, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-static {p3}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getAccountService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/account/AccountService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p3

    .line 214
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/core/ChatService;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    const/4 p3, 0x0

    .line 216
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 217
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    return-object p2

    .line 198
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 176
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 177
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 317
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    .line 320
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 321
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    .line 297
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    move-object v2, p3

    check-cast v2, Lcom/narvii/model/ChatThread;

    iget p1, v2, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 301
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 305
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 306
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    check-cast p3, Lcom/narvii/model/ChatThread;

    iget p2, p3, Lcom/narvii/model/ChatThread;->ndcId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p4, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-virtual {p4}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p2, p4, p5}, Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroid/support/v4/app/FragmentManager;Z)V

    const/4 p1, 0x1

    return p1

    .line 309
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public final onNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    const-string v2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 287
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 287
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .locals 4

    const-string/jumbo v0, "updateObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Lcom/narvii/chat/core/ThreadUpdateObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p1, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    iput-object v1, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-static {v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/core/ChatService;

    move-result-object v1

    iget-object p1, p1, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, p1, v3}, Lcom/narvii/chat/core/ChatService;->getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 274
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    :cond_2
    invoke-virtual {v1, v2, p1}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 275
    iput-object p1, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 277
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->setNeedFetchDataWhenResume(Z)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->getChatListAdapter()Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendRecentChatRequest()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getGlobalChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setRecentChatList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRequestSent(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    return-void
.end method
