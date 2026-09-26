.class Lcom/narvii/livelayer/LiveLayerMainFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 4

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$000(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->n:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->n:I

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->this$0:Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 3
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerMainFragment;->pageOnline:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerMainFragment;->access$100(Lcom/narvii/livelayer/LiveLayerMainFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerMainFragment$10;->call(Ljava/lang/Integer;)V

    return-void
.end method
