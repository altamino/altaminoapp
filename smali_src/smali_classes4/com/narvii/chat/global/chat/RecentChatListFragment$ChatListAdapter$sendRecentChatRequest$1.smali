.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->sendRecentChatRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;)V
    .locals 3
    .param p1    # Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->setRequestSent(Z)V

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->setErrorMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->setRecentChatList(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    .line 5
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->call(Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;)V

    return-void
.end method
