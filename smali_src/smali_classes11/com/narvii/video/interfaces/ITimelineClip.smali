.class public interface abstract Lcom/narvii/video/interfaces/ITimelineClip;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clipLength()I
.end method

.method public abstract clipLengthComposition()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract copy()Lcom/narvii/video/interfaces/ITimelineClip;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract indexInScene()I
.end method

.method public abstract mainTrackClipComposition()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract minValidLengthMs()I
.end method

.method public abstract setIndexInScene(I)V
.end method

.method public abstract trimEndInMs()I
.end method

.method public abstract trimStartInMs()I
.end method
