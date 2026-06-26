.class Lcom/narvii/livelayer/LiveLayerOnlineBar$2;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$2;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$2;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    .line 155
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->checkUserJoined()V

    return-void
.end method
