.class Lcom/narvii/livelayer/LiveLayerDataSource$2;
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

    .line 119
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource$2;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource$2;->this$0:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->checkUserJoined()V

    return-void
.end method
