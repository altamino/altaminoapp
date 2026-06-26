.class Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;
.super Ljava/lang/Object;
.source "LiveLayerDetailBaseFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onRefresh()V
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

.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    .line 236
    iget p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 237
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->access$000(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->access$100(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;->call(Ljava/lang/Integer;)V

    return-void
.end method
