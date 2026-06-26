.class Lcom/narvii/paging/NVRecyclerViewFragment$2;
.super Ljava/lang/Object;
.source "NVRecyclerViewFragment.java"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/NVRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/NVRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 240
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-static {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->access$300(Lcom/narvii/paging/NVRecyclerViewFragment;)Lcom/narvii/logging/ImpressionDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->postImpressionRunnable()V

    .line 241
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-object v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_0
    return-void
.end method
