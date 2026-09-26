.class Lcom/narvii/widget/recycleview/NVRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScrollStateChanged(Lcom/narvii/nvplayerview/delegate/IVideoListView;I)V

    .line 8
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->val$videoListScrollListener:Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecyclerView$1;->this$0:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListScrollListener;->onScroll(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 8
    return-void
.end method
