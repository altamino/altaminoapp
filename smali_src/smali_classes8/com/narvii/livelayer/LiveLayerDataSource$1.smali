.class Lcom/narvii/livelayer/LiveLayerDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$1;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$1;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 5
    .line 6
    iget v2, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    iput v2, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/narvii/livelayer/ILiveLayerView;->onMembersCountChanged(I)V

    .line 18
    :cond_0
    return-void
.end method
