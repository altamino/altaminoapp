.class public final Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;
.super Ljava/lang/Object;
.source "RecentChatListFragment.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatListFragment.kt\ncom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1\n*L\n1#1,376:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->setRequestSent(Z)V

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->setErrorMessage(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;->chatThreads:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;->setRecentChatList(Ljava/util/ArrayList;)V

    .line 186
    iget-object p1, p0, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->this$0:Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/global/chat/RecentChatListFragment$ChatListAdapter$sendRecentChatRequest$1;->call(Lcom/narvii/chat/util/GlobalChatService$RecentChatResult;)V

    return-void
.end method
