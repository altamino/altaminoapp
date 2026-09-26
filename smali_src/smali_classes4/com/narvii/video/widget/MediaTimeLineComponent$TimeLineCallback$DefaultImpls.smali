.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onControllerActive(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onFrameLocatedDuringMove(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;II)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onPlayerTick(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;JJ)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onReplayTriggered(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;III)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onTimeLineClicked(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;Lcom/narvii/video/interfaces/ITimelineClip;)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/narvii/video/interfaces/ITimelineClip;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "clipInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onTimeLineLayout(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onTimeLineScrolledOffsetChanged(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;I)V
    .locals 0
    .param p0    # Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
