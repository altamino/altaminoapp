.class final Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentChatListComponent.kt"


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
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
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

    .line 112
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/global/GlobalChatThread;

    invoke-static {p1}, Lcom/narvii/chat/thread/ThreadListItem;->getViewType(Lcom/narvii/chat/global/GlobalChatThread;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 112
    check-cast p1, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->onBindViewHolder(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "chats[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/chat/global/GlobalChatThread;

    .line 134
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->bindData(Lcom/narvii/chat/global/GlobalChatThread;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {v1}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getCHAT_ROOM_TYPE_ONE_ON_ONE$p(Lcom/narvii/chat/global/RecentChatListComponent;)I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    const p2, 0x7f0b0429

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    invoke-static {v1}, Lcom/narvii/chat/global/RecentChatListComponent;->access$getCHAT_ROOM_TYPE_GROUP$p(Lcom/narvii/chat/global/RecentChatListComponent;)I

    move-result v1

    if-ne p2, v1, :cond_1

    const p2, 0x7f0b0427

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p2, 0x7f0b0428

    .line 126
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    :goto_0
    new-instance p2, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;

    iget-object v0, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->this$0:Lcom/narvii/chat/global/RecentChatListComponent;

    const-string/jumbo v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;-><init>(Lcom/narvii/chat/global/RecentChatListComponent;Landroid/view/View;)V

    return-object p2
.end method

.method public final updateChatList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/global/GlobalChatThread;",
            ">;)V"
        }
    .end annotation

    const-string v0, "chats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatListAdapter;->chats:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
