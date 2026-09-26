.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recentChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestSent:Z

.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment;Lcom/narvii/app/NVContext;)V
    .locals 8
    .param p1    # Lcom/narvii/chat/global/chat/RecentChatListFragment;
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
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/chat/util/MyChatListDelegate;

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v0, p1

    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p0

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/narvii/chat/util/MyChatListDelegate;-><init>(Lcom/narvii/chat/util/IMyChatList;Lcom/narvii/list/NVAdapter;ZLcom/narvii/model/User;ZILkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 29
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ChatRoomList"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "get(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    int-to-long v0, p1

    .line 10
    return-wide v0
.end method

.method public getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    return-object v1
.end method

.method public final getMyChatListDelegate()Lcom/narvii/chat/util/MyChatListDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v1

    .line 14
    .line 15
    :goto_0
    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/util/ChatHelper;Lcom/narvii/model/ChatThread;)I

    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x1

    .line 30
    .line 31
    const-string v3, "createView(...)"

    .line 32
    .line 33
    if-eq v0, v2, :cond_2

    .line 34
    const/4 v4, 0x2

    .line 35
    .line 36
    if-eq v0, v4, :cond_1

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0d00ed

    .line 40
    .line 41
    const-string v4, "plain"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0, p3, p2, v4}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    const v0, 0x7f0d00ea

    .line 55
    .line 56
    const-string v4, "hangout"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, p3, p2, v4}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_2
    const v0, 0x7f0d00e8

    .line 70
    .line 71
    const-string v4, "group"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0, p3, p2, v4}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    check-cast p2, Lcom/narvii/chat/thread/ThreadListItem;

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p2, v2}, Lcom/narvii/chat/thread/ThreadListItem;->setDarkTheme(Z)V

    .line 84
    .line 85
    iget-object p3, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {p3}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getAccountService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/account/AccountService;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    if-nez p3, :cond_3

    .line 92
    .line 93
    const-string p3, "accountService"

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 97
    move-object p3, v1

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 101
    move-result-object p3

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/core/ChatService;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    const-string v0, "chatService"

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move-object v1, v0

    .line 117
    .line 118
    :goto_2
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcom/narvii/chat/core/ChatService;->getDraft(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1, v0, p3}, Lcom/narvii/chat/thread/ThreadListItem;->setChatThread(Lcom/narvii/model/ChatThread;Ljava/lang/String;Lcom/narvii/model/User;)V

    .line 126
    const/4 p3, 0x0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p2, p1}, Lcom/narvii/list/NVAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 133
    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    .line 17
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    .line 16
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 7
    move-object v2, p3

    .line 8
    .line 9
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    iget p1, v2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v1 .. v6}, Lcom/narvii/chat/util/MyChatListDelegate;->openMyChat$default(Lcom/narvii/chat/util/MyChatListDelegate;Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 7
    .line 8
    check-cast p3, Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    iget p2, p3, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object p4, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    move-result-object p4

    .line 21
    const/4 p5, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3, p2, p4, p5}, Lcom/narvii/chat/util/MyChatListDelegate;->onLongClick(Lcom/narvii/model/ChatThread;Ljava/lang/Integer;Landroidx/fragment/app/FragmentManager;Z)V

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final onNewMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "message"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNewChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 11
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string v2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ltz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->myChatListDelegate:Lcom/narvii/chat/util/MyChatListDelegate;

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1, v1}, Lcom/narvii/chat/util/MyChatListDelegate;->onNotification(Lcom/narvii/notification/Notification;Ljava/lang/Integer;)V

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .locals 4
    .param p1    # Lcom/narvii/chat/core/ThreadUpdateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "updateObject"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/core/ThreadUpdateObject;->id()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/core/ChatService;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "chatService"

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object v1, v2

    .line 38
    .line 39
    :cond_1
    iget-object p1, p1, Lcom/narvii/chat/core/ThreadUpdateObject;->chatThread:Lcom/narvii/model/ChatThread;

    .line 40
    .line 41
    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v3, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v3, v2

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1, p1, v3}, Lcom/narvii/chat/core/ChatService;->getThreadLastReadTime(ILjava/lang/String;)Ljava/util/Date;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v2, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v1, v2, p1}, Lcom/narvii/chat/util/ChatHelper;->isNewerTime(Ljava/util/Date;Ljava/util/Date;)Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_4
    iput-object p1, v0, Lcom/narvii/model/ChatThread;->lastReadTime:Ljava/util/Date;

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public refreshList()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->setNeedFetchDataWhenResume(Z)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->getChatListAdapter()Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendRecentChatRequest()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/global/chat/RecentChatListFragment;->access$getGlobalChatService$p(Lcom/narvii/chat/global/chat/RecentChatListFragment;)Lcom/narvii/chat/util/GlobalChatService;

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
    :cond_0
    new-instance v1, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;-><init>(Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->getRecentChatList(Lcom/narvii/util/Callback;)V

    .line 23
    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setRecentChatList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/ChatThread;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->recentChatList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setRequestSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->requestSent:Z

    return-void
.end method
