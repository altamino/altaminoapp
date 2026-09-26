.class Lcom/narvii/livelayer/LiveLayerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService$1;->this$0:Lcom/narvii/livelayer/LiveLayerService;

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService$1;->this$0:Lcom/narvii/livelayer/LiveLayerService;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/livelayer/LiveLayerService;->cid:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerService;->a(Lcom/narvii/livelayer/LiveLayerService;)V

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    const-wide/32 v1, 0x2bf20

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void
.end method
