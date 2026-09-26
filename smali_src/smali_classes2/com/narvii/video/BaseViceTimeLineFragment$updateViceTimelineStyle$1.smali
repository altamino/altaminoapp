.class public final Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->updateViceTimelineStyle(IZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $autoScrollToMs:I

.field final synthetic $mainTimeLineScrolledDx:I

.field final synthetic $trackIndex:I

.field final synthetic $viceTimeLineBorderColor:I

.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;IIII)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$trackIndex:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$viceTimeLineBorderColor:I

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$autoScrollToMs:I

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$mainTimeLineScrolledDx:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onControllerActive()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onControllerActive(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 4
    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onFrameLocatedDuringMove(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;II)V

    .line 4
    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V

    .line 4
    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onReplayTriggered(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;III)V

    .line 4
    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    .line 4
    return-void
.end method

.method public onTimeLineLayout()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$trackIndex:I

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$viceTimeLineBorderColor:I

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    iget v4, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$autoScrollToMs:I

    .line 13
    .line 14
    iget v5, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$mainTimeLineScrolledDx:I

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$innerInitViceTimeLine(Lcom/narvii/video/BaseViceTimeLineFragment;IIZII)V

    .line 18
    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V

    .line 4
    return-void
.end method
