.class Lcom/narvii/paging/NVRecyclerViewFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->q(Lcom/narvii/paging/NVRecyclerViewFragment;)Lcom/narvii/logging/ImpressionDelegate;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->postImpressionRunnable()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment$2;->this$0:Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    .line 28
    :cond_0
    return-void
.end method
