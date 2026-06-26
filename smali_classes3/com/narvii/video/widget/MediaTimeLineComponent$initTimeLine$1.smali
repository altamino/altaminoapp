.class final Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I
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

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMediaPlayer$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;-><init>(Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;)V

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addMediaEventListener(Lcom/narvii/video/interfaces/IMediaEventListener;)V

    :cond_0
    return-void
.end method
