.class Lcom/narvii/widget/recycleview/NVRecyclerView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "NVRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/recycleview/NVRecyclerView;->addOnVideoListScrollListener(Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

.field final synthetic val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/NVRecyclerView;Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

    iput-object p2, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-interface {p1, v0, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScroll(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    return-void
.end method
