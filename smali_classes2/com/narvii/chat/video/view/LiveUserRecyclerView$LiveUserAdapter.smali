.class Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/view/LiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiveUserAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->userList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 64
    instance-of v0, p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->userList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 67
    iget-object p1, p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 57
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b06e4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    iget-object p2, p2, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->onItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance p2, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;

    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;-><init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;Landroid/view/View;)V

    return-object p2
.end method
