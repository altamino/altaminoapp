.class Lcom/narvii/livelayer/LiveLayerService$1;
.super Ljava/lang/Object;
.source "LiveLayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerService;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService$1;->this$0:Lcom/narvii/livelayer/LiveLayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService$1;->this$0:Lcom/narvii/livelayer/LiveLayerService;

    iget v1, v0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    if-nez v1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerService;->access$000(Lcom/narvii/livelayer/LiveLayerService;)V

    .line 56
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
