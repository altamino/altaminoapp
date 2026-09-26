.class Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->userList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->userList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    const/4 p2, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 28
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0d0797

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->onItemClickListener:Landroid/view/View$OnClickListener;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    new-instance p2, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/video/view/LiveUserRecyclerView;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;-><init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;Landroid/view/View;)V

    .line 33
    return-object p2
.end method
