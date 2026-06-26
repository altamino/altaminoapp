.class final Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "GlobalChatsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/GlobalChatsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentChatsAdapter"
.end annotation


# instance fields
.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 191
    new-instance p1, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter$ipc$1;

    const-class p2, Lcom/narvii/chat/global/GlobalChatThread;

    const v0, 0x7f090929

    invoke-direct {p1, p2, v0}, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter$ipc$1;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Recent"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/GlobalChatsFragment;->access$getGlobalChatService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 207
    instance-of p1, p2, Lcom/narvii/chat/global/RecentChatListComponent;

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/narvii/chat/global/RecentChatListComponent;

    const p1, 0x7f0b05e0

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/global/RecentChatListComponent;

    .line 208
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-static {p2}, Lcom/narvii/chat/global/GlobalChatsFragment;->access$getGlobalChatService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList()Ljava/util/ArrayList;

    move-result-object p2

    const-string p3, "globalChatService.recentChatList"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/chat/global/RecentChatListComponent;->setRecentChats(Ljava/util/ArrayList;Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;)V

    .line 209
    invoke-virtual {p1, p0}, Lcom/narvii/chat/global/RecentChatListComponent;->setShownInAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 210
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    const-string/jumbo p2, "view"

    .line 211
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 203
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method
