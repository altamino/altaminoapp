.class public final Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;
.super Ljava/lang/Object;
.source "BaseViceTimeLineFragment.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$trackIndex:I

    iput p3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$viceTimeLineBorderColor:I

    iput p4, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$autoScrollToMs:I

    iput p5, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$mainTimeLineScrolledDx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerActive()V
    .locals 0

    .line 228
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onControllerActive(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    return-void
.end method

.method public onFrameLocatedDuringMove(II)V
    .locals 0

    .line 228
    invoke-static {p0, p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onFrameLocatedDuringMove(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;II)V

    return-void
.end method

.method public onPlayerTick(JJ)V
    .locals 0

    .line 228
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V

    return-void
.end method

.method public onReplayTriggered(III)V
    .locals 0

    .line 228
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onReplayTriggered(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;III)V

    return-void
.end method

.method public onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 1

    const-string v0, "clipInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V

    return-void
.end method

.method public onTimeLineLayout()V
    .locals 6

    .line 230
    invoke-static {p0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V

    .line 231
    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$trackIndex:I

    iget v2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$viceTimeLineBorderColor:I

    iget v4, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$autoScrollToMs:I

    iget v5, p0, Lcom/narvii/video/BaseViceTimeLineFragment$updateViceTimelineStyle$1;->$mainTimeLineScrolledDx:I

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$innerInitViceTimeLine(Lcom/narvii/video/BaseViceTimeLineFragment;IIZII)V

    return-void
.end method

.method public onTimeLineScrolledOffsetChanged(I)V
    .locals 0

    .line 228
    invoke-static {p0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;->onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V

    return-void
.end method
