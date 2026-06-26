.class Lcom/narvii/livelayer/LiveLayerDataSource$1;
.super Ljava/lang/Object;
.source "LiveLayerDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerDataSource;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$1;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$1;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget v1, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    iget v2, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    if-eq v1, v2, :cond_0

    .line 93
    iput v2, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 94
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, v1}, Lcom/narvii/livelayer/ILiveLayerView;->onMembersCountChanged(I)V

    :cond_0
    return-void
.end method
