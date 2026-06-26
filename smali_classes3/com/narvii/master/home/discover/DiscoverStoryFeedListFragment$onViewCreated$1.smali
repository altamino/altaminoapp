.class public final Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DiscoverStoryFeedListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-static {p2, p1}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->access$preload(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 111
    new-instance p2, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1;-><init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;Landroid/support/v7/widget/RecyclerView;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
