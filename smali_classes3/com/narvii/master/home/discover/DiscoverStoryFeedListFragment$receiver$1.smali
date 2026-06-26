.class public final Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DiscoverStoryFeedListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;-><init>()V
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

    .line 64
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-static {p1}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->access$getAdapter$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.INTEREST_CHANGED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;->this$0:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;

    invoke-static {p1}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->access$getAdapter$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
