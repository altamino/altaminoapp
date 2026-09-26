.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;
.super Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;->initTimeLine(IIZLjava/util/List;Lcom/narvii/video/interfaces/IPreviewPlayer;Lcom/narvii/video/services/FrameRetrieverManager;ILjava/lang/Integer;FZIZZILcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/video/widget/videoview/MediaEventListenerImpl;->onVideoCompleted()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 15
    move-result v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-lt v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 42
    move-result v2

    .line 43
    add-int/2addr v1, v2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 49
    move-result v2

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initTimeLine$1$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    .line 55
    move-result v3

    .line 56
    add-int/2addr v2, v3

    .line 57
    const/4 v3, 0x1

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V

    .line 61
    return-void
.end method
