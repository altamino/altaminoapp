.class Lcom/narvii/livelayer/LiveLayerMainFragment$10;
.super Ljava/lang/Object;
.source "LiveLayerMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerMainFragment;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field n:I

.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerMainFragment;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 3

    .line 566
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$300(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 567
    iget p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->n:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->n:I

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_1

    .line 568
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$400(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 561
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->call(Ljava/lang/Integer;)V

    return-void
.end method
