.class public Lcom/narvii/chat/video/view/LiveUserRecyclerView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;,
        Lcom/narvii/chat/video/view/LiveUserRecyclerView$AudienceHolder;
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
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;-><init>(Lcom/narvii/chat/video/view/LiveUserRecyclerView;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->userList:Ljava/util/List;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->liveUserAdapter:Lcom/narvii/chat/video/view/LiveUserRecyclerView$LiveUserAdapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveUserRecyclerView;->onItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
