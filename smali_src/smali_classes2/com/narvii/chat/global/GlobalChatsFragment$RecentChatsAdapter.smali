.class final Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/GlobalChatsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/global/GlobalChatsFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter$ipc$1;

    .line 8
    .line 9
    const-class p2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter$ipc$1;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 15
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Recent"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/global/GlobalChatsFragment;->access$getGlobalChatService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/chat/util/GlobalChatService;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "globalChatService"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList()Ljava/util/ArrayList;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/chat/global/RecentChatListComponent;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p2, Lcom/narvii/chat/global/RecentChatListComponent;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p2, v0

    .line 10
    .line 11
    .line 12
    :goto_0
    const p1, 0x7f0d0697

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/chat/global/RecentChatListComponent;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/chat/global/GlobalChatsFragment;->access$getGlobalChatService$p(Lcom/narvii/chat/global/GlobalChatsFragment;)Lcom/narvii/chat/util/GlobalChatService;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    const-string p2, "globalChatService"

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v0, p2

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList()Ljava/util/ArrayList;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    const-string p3, "getRecentChatList(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    iget-object p3, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->this$0:Lcom/narvii/chat/global/GlobalChatsFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Lcom/narvii/chat/global/RecentChatListComponent;->setRecentChats(Ljava/util/ArrayList;Lcom/narvii/chat/global/RecentChatListComponent$NavigateToChatCallback;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/narvii/chat/global/RecentChatListComponent;->setShownInAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 59
    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 9
    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatsFragment$RecentChatsAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method
