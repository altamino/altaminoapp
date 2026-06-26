.class Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;
.super Ljava/util/TimerTask;
.source "NVFullScreenVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$000(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$300(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
