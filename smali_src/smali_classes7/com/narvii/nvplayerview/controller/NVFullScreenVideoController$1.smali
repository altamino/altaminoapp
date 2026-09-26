.class Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->i(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->c(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/os/Handler;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;-><init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method
