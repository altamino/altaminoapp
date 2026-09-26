.class final Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/RecentChatListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentChatListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/global/RecentChatListComponent;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/RecentChatListComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/chat/global/GlobalChatThread;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/global/GlobalChatThread;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->onBindViewHolder(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V
    .locals 1
    .param p1    # Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "get(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bindData(Lcom/narvii/chat/global/GlobalChatThread;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 3
    invoke-static {v1}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getCHAT_ROOM_TYPE_ONE_ON_ONE$p(Lcom/narvii/chat/global/RecentChatListComponent;)I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const p2, 0x7f0d045f

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    .line 4
    invoke-static {v1}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getCHAT_ROOM_TYPE_GROUP$p(Lcom/narvii/chat/global/RecentChatListComponent;)I

    move-result v1

    if-ne p2, v1, :cond_1

    const p2, 0x7f0d045d

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p2, 0x7f0d045e

    .line 5
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    :goto_0
    new-instance p2, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;Landroid/view/View;)V

    return-object p2
.end method

.method public final updateChatList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "chats"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method
