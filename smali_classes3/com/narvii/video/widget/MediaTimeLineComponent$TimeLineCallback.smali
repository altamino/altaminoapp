.class public interface abstract Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeLineCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onControllerActive()V
.end method

.method public abstract onFrameLocatedDuringMove(II)V
.end method

.method public abstract onPlayerTick(JJ)V
.end method

.method public abstract onReplayTriggered(III)V
.end method

.method public abstract onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
.end method

.method public abstract onTimeLineLayout()V
.end method

.method public abstract onTimeLineScrolledOffsetChanged(I)V
.end method
