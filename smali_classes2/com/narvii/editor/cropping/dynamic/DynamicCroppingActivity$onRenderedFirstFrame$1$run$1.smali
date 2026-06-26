.class final Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;
.super Ljava/lang/Object;
.source "DynamicCroppingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;


# direct methods
.method constructor <init>(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;

    iget-object v0, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;

    iget-object v0, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    invoke-static {v0}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$getPlayer$p(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1$run$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;

    iget-object v0, v0, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$onRenderedFirstFrame$1;->this$0:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->access$setTime(Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;Z)V

    :cond_0
    return-void
.end method
