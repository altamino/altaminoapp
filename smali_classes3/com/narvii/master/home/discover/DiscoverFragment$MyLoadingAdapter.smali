.class public final Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewLoadingAdapter;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyLoadingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewLoadingAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 156
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 157
    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SubRequestHost;->isSubRequestFinish()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v2

    return v0
.end method
