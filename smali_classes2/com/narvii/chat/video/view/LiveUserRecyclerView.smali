.class public Lcom/narvii/chat/video/view/LiveUserRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "LiveUserRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;,
        Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;
    }
.end annotation


# instance fields
.field private liveUserAdapter:Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

.field onItemClickListener:Landroid/view/View$OnClickListener;

.field userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 35
    new-instance p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;-><init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;)V

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    .line 36
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public notifyUserChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->userList:Ljava/util/List;

    .line 47
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->onItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
