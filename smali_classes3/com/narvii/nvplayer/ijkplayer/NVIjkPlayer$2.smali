.class Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;
.super Ljava/lang/Object;
.source "NVIjkPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$600(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$600(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {v2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$800(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$700(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$2;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {v1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$800(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    :cond_1
    return-void
.end method
