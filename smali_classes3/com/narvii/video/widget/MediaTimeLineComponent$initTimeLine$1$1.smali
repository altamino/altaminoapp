.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;
.super Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;
.source "MediaTimeLineComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    invoke-direct {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 4

    .line 417
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoCompleted()V

    .line 418
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v0, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v1, v1, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v1, v1, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v0, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v0, v0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v2, v2, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    add-int/2addr v1, v2

    .line 428
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v2, v2, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v2

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;

    iget-object v3, v3, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    .line 427
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V

    return-void
.end method
