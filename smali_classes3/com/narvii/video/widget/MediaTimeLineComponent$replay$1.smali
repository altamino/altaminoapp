.class final Lcom/narvii/video/widget/MediaTimeLineComponent$replay$1;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;->replay(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$replay$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$replay$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaPlayer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->isVideoPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$replay$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getPlaybackTimer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
