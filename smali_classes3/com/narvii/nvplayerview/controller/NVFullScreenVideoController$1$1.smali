.class Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;
.super Ljava/lang/Object;
.source "NVFullScreenVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    iget-object v0, v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$200(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    iget-object v1, v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    iget-object v1, v1, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v1}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/nvplayer/INVPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    iget-object v2, v2, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-static {v2}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->access$100(Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/narvii/nvplayer/INVPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 132
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    iget-object v0, v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setCurrentTime()V

    .line 133
    iget-object v0, p0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1$1;->this$1:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;

    iget-object v0, v0, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController$1;->this$0:Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;

    invoke-virtual {v0}, Lcom/narvii/nvplayerview/controller/NVFullScreenVideoController;->setTotalTime()V

    return-void
.end method
